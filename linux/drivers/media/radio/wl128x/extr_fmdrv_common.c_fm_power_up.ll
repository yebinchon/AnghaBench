; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fm_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fm_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { i32 }

@FM_MODE_ENTRY_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Invalid firmware download option\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to prepare FM Common\0A\00", align 1
@FM_ENABLE = common dso_local global i32 0, align 4
@FM_POWER_MODE = common dso_local global i32 0, align 4
@REG_WR = common dso_local global i32 0, align 4
@ASIC_ID_GET = common dso_local global i32 0, align 4
@REG_RD = common dso_local global i32 0, align 4
@ASIC_VER_GET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"ASIC ID: 0x%x , ASIC Version: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%s_%x.%d.bts\00", align 1
@FM_FMC_FW_FILE_START = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to download firmware file %s\0A\00", align 1
@FM_MODE_RX = common dso_local global i64 0, align 8
@FM_RX_FW_FILE_START = common dso_local global i8* null, align 8
@FM_TX_FW_FILE_START = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fmdev*, i64)* @fm_power_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm_power_up(%struct.fmdev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fmdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [50 x i64], align 16
  store %struct.fmdev* %0, %struct.fmdev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @FM_MODE_ENTRY_MAX, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = call i32 @fmerr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %100

19:                                               ; preds = %2
  %20 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %21 = call i32 @fmc_prepare(%struct.fmdev* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = call i32 @fmerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %3, align 4
  br label %100

27:                                               ; preds = %19
  %28 = load i32, i32* @FM_ENABLE, align 4
  store i32 %28, i32* %6, align 4
  %29 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %30 = load i32, i32* @FM_POWER_MODE, align 4
  %31 = load i32, i32* @REG_WR, align 4
  %32 = call i64 @fmc_send_cmd(%struct.fmdev* %29, i32 %30, i32 %31, i32* %6, i32 4, i32* null, i32* null)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %97

35:                                               ; preds = %27
  %36 = call i32 @msleep(i32 20)
  %37 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %38 = load i32, i32* @ASIC_ID_GET, align 4
  %39 = load i32, i32* @REG_RD, align 4
  %40 = call i64 @fmc_send_cmd(%struct.fmdev* %37, i32 %38, i32 %39, i32* null, i32 4, i32* %7, i32* %9)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %97

43:                                               ; preds = %35
  %44 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %45 = load i32, i32* @ASIC_VER_GET, align 4
  %46 = load i32, i32* @REG_RD, align 4
  %47 = call i64 @fmc_send_cmd(%struct.fmdev* %44, i32 %45, i32 %46, i32* null, i32 4, i32* %8, i32* %9)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %97

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @be16_to_cpu(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @be16_to_cpu(i32 %53)
  %55 = call i32 (i8*, ...) @fmdbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %54)
  %56 = getelementptr inbounds [50 x i64], [50 x i64]* %11, i64 0, i64 0
  %57 = load i8*, i8** @FM_FMC_FW_FILE_START, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @be16_to_cpu(i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @be16_to_cpu(i32 %60)
  %62 = call i32 @sprintf(i64* %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %57, i32 %59, i32 %61)
  %63 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %64 = getelementptr inbounds [50 x i64], [50 x i64]* %11, i64 0, i64 0
  %65 = call i32 @fm_download_firmware(%struct.fmdev* %63, i64* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %50
  %69 = getelementptr inbounds [50 x i64], [50 x i64]* %11, i64 0, i64 0
  %70 = call i32 (i8*, ...) @fmdbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64* %69)
  br label %97

71:                                               ; preds = %50
  %72 = getelementptr inbounds [50 x i64], [50 x i64]* %11, i64 0, i64 0
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @FM_MODE_RX, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i8*, i8** @FM_RX_FW_FILE_START, align 8
  br label %80

78:                                               ; preds = %71
  %79 = load i8*, i8** @FM_TX_FW_FILE_START, align 8
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i8* [ %77, %76 ], [ %79, %78 ]
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @be16_to_cpu(i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @be16_to_cpu(i32 %84)
  %86 = call i32 @sprintf(i64* %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %81, i32 %83, i32 %85)
  %87 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %88 = getelementptr inbounds [50 x i64], [50 x i64]* %11, i64 0, i64 0
  %89 = call i32 @fm_download_firmware(%struct.fmdev* %87, i64* %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %80
  %93 = getelementptr inbounds [50 x i64], [50 x i64]* %11, i64 0, i64 0
  %94 = call i32 (i8*, ...) @fmdbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64* %93)
  br label %97

95:                                               ; preds = %80
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %3, align 4
  br label %100

97:                                               ; preds = %92, %68, %49, %42, %34
  %98 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %99 = call i32 @fmc_release(%struct.fmdev* %98)
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %97, %95, %24, %15
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @fmerr(i8*) #1

declare dso_local i32 @fmc_prepare(%struct.fmdev*) #1

declare dso_local i64 @fmc_send_cmd(%struct.fmdev*, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @fmdbg(i8*, ...) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @sprintf(i64*, i8*, i8*, i32, i32) #1

declare dso_local i32 @fm_download_firmware(%struct.fmdev*, i64*) #1

declare dso_local i32 @fmc_release(%struct.fmdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
