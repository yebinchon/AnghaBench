; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_get_board_id_from_otp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_get_board_id_from_otp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"failed to retrieve board id because of invalid otp\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"boot upload otp to 0x%x len %zd for board id\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"could not write otp for board id check: %d\0A\00", align 1
@ATH10K_PRE_CAL_MODE_DT = common dso_local global i64 0, align 8
@ATH10K_PRE_CAL_MODE_FILE = common dso_local global i64 0, align 8
@BMI_PARAM_GET_FLASH_BOARD_ID = common dso_local global i32 0, align 4
@BMI_PARAM_GET_EEPROM_BOARD_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"could not execute otp for board id check: %d\0A\00", align 1
@ATH10K_BMI_BOARD_ID_FROM_OTP = common dso_local global i32 0, align 4
@ATH10K_BMI_CHIP_ID_FROM_OTP = common dso_local global i32 0, align 4
@ATH10K_BMI_EXT_BOARD_ID_SUPPORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [79 x i8] c"boot get otp board id result 0x%08x board_id %d chip_id %d ext_bid_support %d\0A\00", align 1
@ATH10K_BMI_BOARD_ID_STATUS_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"board id does not exist in otp, ignore it\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_core_get_board_id_from_otp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_core_get_board_id_from_otp(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %11 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %12 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %16 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %23 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %21, %1
  %29 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %30 = call i32 @ath10k_warn(%struct.ath10k* %29, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENODATA, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %137

33:                                               ; preds = %21
  %34 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %35 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %38 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %34, i32 %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %41)
  %43 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %46 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %51 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ath10k_bmi_fast_download(%struct.ath10k* %43, i32 %44, i32 %49, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %33
  %59 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @ath10k_err(%struct.ath10k* %59, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %2, align 4
  br label %137

63:                                               ; preds = %33
  %64 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %65 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ATH10K_PRE_CAL_MODE_DT, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %71 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ATH10K_PRE_CAL_MODE_FILE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %69, %63
  %76 = load i32, i32* @BMI_PARAM_GET_FLASH_BOARD_ID, align 4
  store i32 %76, i32* %10, align 4
  br label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @BMI_PARAM_GET_EEPROM_BOARD_ID, align 4
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @ath10k_bmi_execute(%struct.ath10k* %80, i32 %81, i32 %82, i32* %4)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @ath10k_err(%struct.ath10k* %87, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %2, align 4
  br label %137

91:                                               ; preds = %79
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @ATH10K_BMI_BOARD_ID_FROM_OTP, align 4
  %94 = call i64 @MS(i32 %92, i32 %93)
  store i64 %94, i64* %6, align 8
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @ATH10K_BMI_CHIP_ID_FROM_OTP, align 4
  %97 = call i64 @MS(i32 %95, i32 %96)
  store i64 %97, i64* %7, align 8
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @ATH10K_BMI_EXT_BOARD_ID_SUPPORT, align 4
  %100 = and i32 %98, %99
  store i32 %100, i32* %8, align 4
  %101 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %102 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %103 = load i32, i32* %4, align 4
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* %7, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %101, i32 %102, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i32 %103, i64 %104, i64 %105, i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %110 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @ATH10K_BMI_BOARD_ID_STATUS_MASK, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %91
  %117 = load i64, i64* %6, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116, %91
  %120 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %121 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %122 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %120, i32 %121, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %123 = load i32, i32* @EOPNOTSUPP, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %137

125:                                              ; preds = %116
  %126 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %127 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  store i32 1, i32* %128, align 4
  %129 = load i64, i64* %6, align 8
  %130 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %131 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 3
  store i64 %129, i64* %132, align 8
  %133 = load i64, i64* %7, align 8
  %134 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %135 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  store i64 %133, i64* %136, align 8
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %125, %119, %86, %58, %28
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, ...) #1

declare dso_local i32 @ath10k_bmi_fast_download(%struct.ath10k*, i32, i32, i32) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_bmi_execute(%struct.ath10k*, i32, i32, i32*) #1

declare dso_local i64 @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
