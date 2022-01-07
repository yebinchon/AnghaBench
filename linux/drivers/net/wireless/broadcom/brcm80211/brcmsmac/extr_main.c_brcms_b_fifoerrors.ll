; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_fifoerrors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_fifoerrors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.brcms_hardware = type { i64, %struct.TYPE_3__*, %struct.bcma_device* }
%struct.TYPE_3__ = type { i32 }
%struct.bcma_device = type { i32 }

@NFIFO = common dso_local global i64 0, align 8
@intctrlregs = common dso_local global %struct.TYPE_4__* null, align 8
@I_ERRORS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"wl%d: intstatus%d 0x%x\0A\00", align 1
@I_RO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"wl%d: fifo %d: receive fifo overflow\0A\00", align 1
@I_PC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"wl%d: fifo %d: descriptor error\0A\00", align 1
@I_PD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"wl%d: fifo %d: data error\0A\00", align 1
@I_DE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"wl%d: fifo %d: descriptor protocol error\0A\00", align 1
@I_RU = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [45 x i8] c"wl%d: fifo %d: receive descriptor underflow\0A\00", align 1
@I_XU = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [40 x i8] c"wl%d: fifo %d: transmit fifo underflow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_hardware*)* @brcms_b_fifoerrors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_b_fifoerrors(%struct.brcms_hardware* %0) #0 {
  %2 = alloca %struct.brcms_hardware*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bcma_device*, align 8
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %9 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %8, i32 0, i32 2
  %10 = load %struct.bcma_device*, %struct.bcma_device** %9, align 8
  store %struct.bcma_device* %10, %struct.bcma_device** %7, align 8
  %11 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %12 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %118, %1
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @NFIFO, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %121

18:                                               ; preds = %14
  %19 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @intctrlregs, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @D11REGOFFS(i32 %24)
  %26 = call i64 @bcma_read32(%struct.bcma_device* %19, i32 %25)
  %27 = load i64, i64* @I_ERRORS, align 8
  %28 = and i64 %26, %27
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %18
  br label %118

32:                                               ; preds = %18
  %33 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @brcms_dbg_int(%struct.bcma_device* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %35, i64 %36)
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @I_RO, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @brcms_err(%struct.bcma_device* %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %44, i64 %45)
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %32
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @I_PC, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @brcms_err(%struct.bcma_device* %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %54, i64 %55)
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @I_PD, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @brcms_err(%struct.bcma_device* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %64, i64 %65)
  store i32 1, i32* %3, align 4
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @I_DE, align 8
  %70 = and i64 %68, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @brcms_err(%struct.bcma_device* %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %74, i64 %75)
  store i32 1, i32* %3, align 4
  br label %77

77:                                               ; preds = %72, %67
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @I_RU, align 8
  %80 = and i64 %78, %79
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @brcms_err(%struct.bcma_device* %83, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %84, i64 %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* @I_XU, align 8
  %90 = and i64 %88, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @brcms_err(%struct.bcma_device* %93, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i64 %94, i64 %95)
  store i32 1, i32* %3, align 4
  br label %97

97:                                               ; preds = %92, %87
  %98 = load i32, i32* %3, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %102 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %101, i32 0, i32 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @brcms_fatal_error(i32 %105)
  br label %121

107:                                              ; preds = %97
  %108 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @intctrlregs, align 8
  %110 = load i64, i64* %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @D11REGOFFS(i32 %113)
  %115 = load i64, i64* %5, align 8
  %116 = call i32 @bcma_write32(%struct.bcma_device* %108, i32 %114, i64 %115)
  br label %117

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117, %31
  %119 = load i64, i64* %6, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %6, align 8
  br label %14

121:                                              ; preds = %100, %14
  ret void
}

declare dso_local i64 @bcma_read32(%struct.bcma_device*, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @brcms_dbg_int(%struct.bcma_device*, i8*, i64, i64, i64) #1

declare dso_local i32 @brcms_err(%struct.bcma_device*, i8*, i64, i64) #1

declare dso_local i32 @brcms_fatal_error(i32) #1

declare dso_local i32 @bcma_write32(%struct.bcma_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
