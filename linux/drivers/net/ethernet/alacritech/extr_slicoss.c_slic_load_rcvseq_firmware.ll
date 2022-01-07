; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_load_rcvseq_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_load_rcvseq_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i8*, i64* }

@SLIC_MODEL_OASIS = common dso_local global i64 0, align 8
@SLIC_RCV_FIRMWARE_OASIS = common dso_local global i8* null, align 8
@SLIC_RCV_FIRMWARE_MOJAVE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"failed to load receive sequencer firmware %s\0A\00", align 1
@SLIC_FIRMWARE_MIN_SIZE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"invalid firmware size %zu (min %u expected)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"invalid rcv-sequencer firmware size %zu\0A\00", align 1
@SLIC_REG_RCV_WCS = common dso_local global i32 0, align 4
@SLIC_RCVWCS_BEGIN = common dso_local global i8* null, align 8
@SLIC_RCVWCS_FINISH = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slic_device*)* @slic_load_rcvseq_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slic_load_rcvseq_firmware(%struct.slic_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slic_device*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.slic_device* %0, %struct.slic_device** %3, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %13 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SLIC_MODEL_OASIS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i8*, i8** @SLIC_RCV_FIRMWARE_OASIS, align 8
  br label %21

19:                                               ; preds = %1
  %20 = load i8*, i8** @SLIC_RCV_FIRMWARE_MOJAVE, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i8* [ %18, %17 ], [ %20, %19 ]
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %25 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @request_firmware(%struct.firmware** %4, i8* %23, i32* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %33 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 (i32*, i8*, i8*, ...) @dev_err(i32* %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %2, align 4
  br label %126

39:                                               ; preds = %21
  %40 = load %struct.firmware*, %struct.firmware** %4, align 8
  %41 = getelementptr inbounds %struct.firmware, %struct.firmware* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** @SLIC_FIRMWARE_MIN_SIZE, align 8
  %44 = icmp ult i8* %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %47 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.firmware*, %struct.firmware** %4, align 8
  %51 = getelementptr inbounds %struct.firmware, %struct.firmware* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** @SLIC_FIRMWARE_MIN_SIZE, align 8
  %54 = call i32 (i32*, i8*, i8*, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %52, i8* %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  br label %122

57:                                               ; preds = %39
  %58 = load %struct.firmware*, %struct.firmware** %4, align 8
  %59 = call i8* @slic_read_dword_from_firmware(%struct.firmware* %58, i32* %7)
  store i8* %59, i8** %6, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  %62 = load %struct.firmware*, %struct.firmware** %4, align 8
  %63 = getelementptr inbounds %struct.firmware, %struct.firmware* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ugt i8* %61, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %57
  %67 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %68 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load %struct.firmware*, %struct.firmware** %4, align 8
  %72 = getelementptr inbounds %struct.firmware, %struct.firmware* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i32*, i8*, i8*, ...) @dev_err(i32* %70, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %10, align 4
  br label %122

77:                                               ; preds = %57
  %78 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %79 = load i32, i32* @SLIC_REG_RCV_WCS, align 4
  %80 = load i8*, i8** @SLIC_RCVWCS_BEGIN, align 8
  %81 = call i32 @slic_write(%struct.slic_device* %78, i32 %79, i8* %80)
  store i8* null, i8** %9, align 8
  br label %82

82:                                               ; preds = %112, %77
  %83 = load i8*, i8** %9, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = icmp ult i8* %83, %84
  br i1 %85, label %86, label %115

86:                                               ; preds = %82
  %87 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %88 = load i32, i32* @SLIC_REG_RCV_WCS, align 4
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @slic_write(%struct.slic_device* %87, i32 %88, i8* %89)
  %91 = load %struct.firmware*, %struct.firmware** %4, align 8
  %92 = call i8* @slic_read_dword_from_firmware(%struct.firmware* %91, i32* %7)
  store i8* %92, i8** %8, align 8
  %93 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %94 = load i32, i32* @SLIC_REG_RCV_WCS, align 4
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @slic_write(%struct.slic_device* %93, i32 %94, i8* %95)
  %97 = load %struct.firmware*, %struct.firmware** %4, align 8
  %98 = getelementptr inbounds %struct.firmware, %struct.firmware* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %11, align 8
  %104 = load i64, i64* %11, align 8
  %105 = call i8* @le32_to_cpu(i64 %104)
  store i8* %105, i8** %8, align 8
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  %108 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %109 = load i32, i32* @SLIC_REG_RCV_WCS, align 4
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 @slic_write(%struct.slic_device* %108, i32 %109, i8* %110)
  br label %112

112:                                              ; preds = %86
  %113 = load i8*, i8** %9, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %9, align 8
  br label %82

115:                                              ; preds = %82
  %116 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %117 = load i32, i32* @SLIC_REG_RCV_WCS, align 4
  %118 = load i8*, i8** @SLIC_RCVWCS_FINISH, align 8
  %119 = call i32 @slic_write(%struct.slic_device* %116, i32 %117, i8* %118)
  %120 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %121 = call i32 @slic_flush_write(%struct.slic_device* %120)
  br label %122

122:                                              ; preds = %115, %66, %45
  %123 = load %struct.firmware*, %struct.firmware** %4, align 8
  %124 = call i32 @release_firmware(%struct.firmware* %123)
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %122, %31
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, ...) #1

declare dso_local i8* @slic_read_dword_from_firmware(%struct.firmware*, i32*) #1

declare dso_local i32 @slic_write(%struct.slic_device*, i32, i8*) #1

declare dso_local i8* @le32_to_cpu(i64) #1

declare dso_local i32 @slic_flush_write(%struct.slic_device*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
