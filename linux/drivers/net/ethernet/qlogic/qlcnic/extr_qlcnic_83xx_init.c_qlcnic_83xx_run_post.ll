; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_run_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_run_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.qlc_83xx_fw_info* }
%struct.qlc_83xx_fw_info = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@QLC_83XX_POST_FAST_MODE_TIMEOUT = common dso_local global i32 0, align 4
@QLC_83XX_POST_MED_MODE_TIMEOUT = common dso_local global i32 0, align 4
@QLC_83XX_POST_SLOW_MODE_TIMEOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QLC_83XX_POST_FW_FILE_NAME = common dso_local global i32 0, align 4
@QLC_FW_FILE_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"POST firmware can not be loaded, skipping POST\0A\00", align 1
@QLC_83XX_POST_SIGNATURE_REG = common dso_local global i32 0, align 4
@QLC_83XX_POST_MODE_REG = common dso_local global i32 0, align 4
@QLCNIC_FW_IMG_VALID = common dso_local global i32 0, align 4
@QLC_83XX_BOOT_FROM_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"POST timed out, signature = 0x%08x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"POST passed, Signature = 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"POST failed, Test case : ASIC STRESS TEST, Signature = 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"POST failed, Test case : DDT TEST, Signature = 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"POST failed, Test case : ASIC MEMORY TEST, Signature = 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"POST failed, Test case : FLASH TEST, Signature = 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"POST failed, Test case : INVALID, Signature = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_83xx_run_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_run_post(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlc_83xx_fw_info*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.qlc_83xx_fw_info*, %struct.qlc_83xx_fw_info** %13, align 8
  store %struct.qlc_83xx_fw_info* %14, %struct.qlc_83xx_fw_info** %4, align 8
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %5, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %33 [
    i32 132, label %24
    i32 130, label %27
    i32 128, label %30
  ]

24:                                               ; preds = %1
  %25 = load i32, i32* @QLC_83XX_POST_FAST_MODE_TIMEOUT, align 4
  %26 = add nsw i32 %25, 2000
  store i32 %26, i32* %6, align 4
  br label %36

27:                                               ; preds = %1
  %28 = load i32, i32* @QLC_83XX_POST_MED_MODE_TIMEOUT, align 4
  %29 = add nsw i32 %28, 2000
  store i32 %29, i32* %6, align 4
  br label %36

30:                                               ; preds = %1
  %31 = load i32, i32* @QLC_83XX_POST_SLOW_MODE_TIMEOUT, align 4
  %32 = add nsw i32 %31, 2000
  store i32 %32, i32* %6, align 4
  br label %36

33:                                               ; preds = %1
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %143

36:                                               ; preds = %30, %27, %24
  %37 = load %struct.qlc_83xx_fw_info*, %struct.qlc_83xx_fw_info** %4, align 8
  %38 = getelementptr inbounds %struct.qlc_83xx_fw_info, %struct.qlc_83xx_fw_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @QLC_83XX_POST_FW_FILE_NAME, align 4
  %41 = load i32, i32* @QLC_FW_FILE_NAME_LEN, align 4
  %42 = call i32 @strncpy(i32 %39, i32 %40, i32 %41)
  %43 = load %struct.qlc_83xx_fw_info*, %struct.qlc_83xx_fw_info** %4, align 8
  %44 = getelementptr inbounds %struct.qlc_83xx_fw_info, %struct.qlc_83xx_fw_info* %43, i32 0, i32 1
  %45 = load %struct.qlc_83xx_fw_info*, %struct.qlc_83xx_fw_info** %4, align 8
  %46 = getelementptr inbounds %struct.qlc_83xx_fw_info, %struct.qlc_83xx_fw_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = call i32 @request_firmware(i32* %44, i32 %47, %struct.device* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %36
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %53, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %143

55:                                               ; preds = %36
  %56 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %57 = call i32 @qlcnic_83xx_copy_fw_file(%struct.qlcnic_adapter* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %143

62:                                               ; preds = %55
  %63 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %64 = load i32, i32* @QLC_83XX_POST_SIGNATURE_REG, align 4
  %65 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %63, i32 %64, i32 0)
  %66 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %67 = load i32, i32* @QLC_83XX_POST_MODE_REG, align 4
  %68 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %66, i32 %67, i32 %72)
  %74 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %75 = load i32, i32* @QLCNIC_FW_IMG_VALID, align 4
  %76 = load i32, i32* @QLC_83XX_BOOT_FROM_FILE, align 4
  %77 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %74, i32 %75, i32 %76)
  %78 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %79 = call i32 @qlcnic_83xx_start_hw(%struct.qlcnic_adapter* %78)
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %91, %62
  %81 = call i32 @msleep(i32 100)
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 100
  store i32 %83, i32* %7, align 4
  %84 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %85 = load i32, i32* @QLC_83XX_POST_SIGNATURE_REG, align 4
  %86 = call i32 @qlcnic_ind_rd(%struct.qlcnic_adapter* %84, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp eq i32 %87, 129
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %95

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %80, label %95

95:                                               ; preds = %91, %89
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load %struct.device*, %struct.device** %5, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %143

105:                                              ; preds = %95
  %106 = load i32, i32* %9, align 4
  switch i32 %106, label %135 [
    i32 129, label %107
    i32 134, label %111
    i32 133, label %117
    i32 135, label %123
    i32 131, label %129
  ]

107:                                              ; preds = %105
  %108 = load %struct.device*, %struct.device** %5, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @dev_info(%struct.device* %108, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  br label %141

111:                                              ; preds = %105
  %112 = load %struct.device*, %struct.device** %5, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @EIO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %8, align 4
  br label %141

117:                                              ; preds = %105
  %118 = load %struct.device*, %struct.device** %5, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %118, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %8, align 4
  br label %141

123:                                              ; preds = %105
  %124 = load %struct.device*, %struct.device** %5, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %124, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %8, align 4
  br label %141

129:                                              ; preds = %105
  %130 = load %struct.device*, %struct.device** %5, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %130, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @EIO, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %8, align 4
  br label %141

135:                                              ; preds = %105
  %136 = load %struct.device*, %struct.device** %5, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %136, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @EIO, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %135, %129, %123, %117, %111, %107
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %141, %99, %60, %52, %33
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @request_firmware(i32*, i32, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @qlcnic_83xx_copy_fw_file(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_ind_wr(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_83xx_start_hw(%struct.qlcnic_adapter*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qlcnic_ind_rd(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
