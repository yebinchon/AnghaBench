; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_irq_ts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_irq_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_tsport = type { i64, i32, i32, i32, i32, i32, i32, %struct.cx23885_dev* }
%struct.cx23885_dev = type { i32*, i32 }

@VID_BC_MSK_OPC_ERR = common dso_local global i32 0, align 4
@VID_BC_MSK_BAD_PKT = common dso_local global i32 0, align 4
@VID_BC_MSK_SYNC = common dso_local global i32 0, align 4
@VID_BC_MSK_OF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c" (VID_BC_MSK_OPC_ERR 0x%08x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c" (VID_BC_MSK_BAD_PKT 0x%08x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c" (VID_BC_MSK_SYNC    0x%08x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c" (VID_BC_MSK_OF      0x%08x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: mpeg risc op code error\0A\00", align 1
@VID_BC_MSK_RISCI1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c" (RISCI1            0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx23885_tsport*, i32)* @cx23885_irq_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx23885_irq_ts(%struct.cx23885_tsport* %0, i32 %1) #0 {
  %3 = alloca %struct.cx23885_tsport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx23885_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cx23885_tsport* %0, %struct.cx23885_tsport** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %9 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %8, i32 0, i32 7
  %10 = load %struct.cx23885_dev*, %struct.cx23885_dev** %9, align 8
  store %struct.cx23885_dev* %10, %struct.cx23885_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @VID_BC_MSK_OPC_ERR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @VID_BC_MSK_BAD_PKT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @VID_BC_MSK_SYNC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @VID_BC_MSK_OF, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %83

30:                                               ; preds = %25, %20, %15, %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @VID_BC_MSK_OPC_ERR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @VID_BC_MSK_OPC_ERR, align 4
  %37 = call i32 @dprintk(i32 7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @VID_BC_MSK_BAD_PKT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @VID_BC_MSK_BAD_PKT, align 4
  %45 = call i32 @dprintk(i32 7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @VID_BC_MSK_SYNC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @VID_BC_MSK_SYNC, align 4
  %53 = call i32 @dprintk(i32 7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @VID_BC_MSK_OF, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @VID_BC_MSK_OF, align 4
  %61 = call i32 @dprintk(i32 7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %64 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  %67 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %68 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %71 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @cx_clear(i32 %69, i32 %72)
  %74 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %75 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %76 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %79 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = call i32 @cx23885_sram_channel_dump(%struct.cx23885_dev* %74, i32* %81)
  br label %107

83:                                               ; preds = %25
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @VID_BC_MSK_RISCI1, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %83
  %89 = load i32, i32* @VID_BC_MSK_RISCI1, align 4
  %90 = call i32 @dprintk(i32 7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  %91 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %92 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %91, i32 0, i32 2
  %93 = call i32 @spin_lock(i32* %92)
  %94 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %95 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @cx_read(i32 %96)
  store i32 %97, i32* %7, align 4
  %98 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %99 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %100 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %99, i32 0, i32 3
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @cx23885_wakeup(%struct.cx23885_tsport* %98, i32* %100, i32 %101)
  %103 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %104 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %103, i32 0, i32 2
  %105 = call i32 @spin_unlock(i32* %104)
  br label %106

106:                                              ; preds = %88, %83
  br label %107

107:                                              ; preds = %106, %62
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %112 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @cx_write(i32 %113, i32 %114)
  store i32 1, i32* %6, align 4
  br label %116

116:                                              ; preds = %110, %107
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @dprintk(i32, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @cx_clear(i32, i32) #1

declare dso_local i32 @cx23885_sram_channel_dump(%struct.cx23885_dev*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @cx23885_wakeup(%struct.cx23885_tsport*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cx_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
