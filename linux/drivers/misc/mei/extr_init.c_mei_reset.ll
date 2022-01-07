; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_init.c_mei_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_init.c_mei_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32, i64, i32, i32 }

@MEI_DEV_INITIALIZING = common dso_local global i32 0, align 4
@MEI_DEV_DISABLED = common dso_local global i32 0, align 4
@MEI_DEV_POWER_DOWN = common dso_local global i32 0, align 4
@MEI_DEV_POWER_UP = common dso_local global i32 0, align 4
@MEI_FW_STATUS_STR_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"unexpected reset: dev_state = %s fw status = %s\0A\00", align 1
@MEI_DEV_RESETTING = common dso_local global i32 0, align 4
@MEI_MAX_CONSEC_RESET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"reset: reached maximal consecutive resets: disabling the device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"hw_reset failed ret = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"powering down: end of reset\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"hw_start failed ret = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"link is established start sending messages.\0A\00", align 1
@MEI_DEV_INIT_CLIENTS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"hbm_start failed ret = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_reset(%struct.mei_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  %9 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %10 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MEI_DEV_INITIALIZING, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MEI_DEV_DISABLED, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @MEI_DEV_POWER_DOWN, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @MEI_DEV_POWER_UP, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load i32, i32* @MEI_FW_STATUS_STR_SZ, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %7, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %8, align 8
  %32 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %33 = load i32, i32* @MEI_FW_STATUS_STR_SZ, align 4
  %34 = call i32 @mei_fw_status_str(%struct.mei_device* %32, i8* %31, i32 %33)
  %35 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %36 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @mei_dev_state_str(i32 %38)
  %40 = call i32 @dev_warn(i32 %37, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %39, i8* %31)
  %41 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %41)
  br label %42

42:                                               ; preds = %27, %23, %19, %15, %1
  %43 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %44 = call i32 @mei_clear_interrupts(%struct.mei_device* %43)
  %45 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %46 = call i32 @mei_hbm_idle(%struct.mei_device* %45)
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @MEI_DEV_POWER_DOWN, align 4
  %49 = icmp ne i32 %47, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %5, align 4
  %51 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %52 = load i32, i32* @MEI_DEV_RESETTING, align 4
  %53 = call i32 @mei_set_devstate(%struct.mei_device* %51, i32 %52)
  %54 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %55 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %59 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MEI_MAX_CONSEC_RESET, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %42
  %64 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %65 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i32, i8*, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %69 = load i32, i32* @MEI_DEV_DISABLED, align 4
  %70 = call i32 @mei_set_devstate(%struct.mei_device* %68, i32 %69)
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %150

73:                                               ; preds = %42
  %74 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @mei_hw_reset(%struct.mei_device* %74, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @MEI_DEV_INITIALIZING, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @MEI_DEV_POWER_UP, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %86 = call i32 @mei_cl_all_disconnect(%struct.mei_device* %85)
  br label %87

87:                                               ; preds = %84, %80, %73
  %88 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %89 = call i32 @mei_hbm_reset(%struct.mei_device* %88)
  %90 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %91 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @memset(i32 %92, i32 0, i32 4)
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %87
  %97 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %98 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 (i32, i8*, ...) @dev_err(i32 %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %2, align 4
  br label %150

103:                                              ; preds = %87
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @MEI_DEV_POWER_DOWN, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %103
  %108 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %109 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @dev_dbg(i32 %110, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %112 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %113 = load i32, i32* @MEI_DEV_DISABLED, align 4
  %114 = call i32 @mei_set_devstate(%struct.mei_device* %112, i32 %113)
  store i32 0, i32* %2, align 4
  br label %150

115:                                              ; preds = %103
  %116 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %117 = call i32 @mei_hw_start(%struct.mei_device* %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %122 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 (i32, i8*, ...) @dev_err(i32 %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %2, align 4
  br label %150

127:                                              ; preds = %115
  %128 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %129 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dev_dbg(i32 %130, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %132 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %133 = load i32, i32* @MEI_DEV_INIT_CLIENTS, align 4
  %134 = call i32 @mei_set_devstate(%struct.mei_device* %132, i32 %133)
  %135 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %136 = call i32 @mei_hbm_start_req(%struct.mei_device* %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %127
  %140 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %141 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32 (i32, i8*, ...) @dev_err(i32 %142, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %143)
  %145 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %146 = load i32, i32* @MEI_DEV_RESETTING, align 4
  %147 = call i32 @mei_set_devstate(%struct.mei_device* %145, i32 %146)
  %148 = load i32, i32* %6, align 4
  store i32 %148, i32* %2, align 4
  br label %150

149:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %149, %139, %120, %107, %96, %63
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mei_fw_status_str(%struct.mei_device*, i8*, i32) #2

declare dso_local i32 @dev_warn(i32, i8*, i32, i8*) #2

declare dso_local i32 @mei_dev_state_str(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @mei_clear_interrupts(%struct.mei_device*) #2

declare dso_local i32 @mei_hbm_idle(%struct.mei_device*) #2

declare dso_local i32 @mei_set_devstate(%struct.mei_device*, i32) #2

declare dso_local i32 @dev_err(i32, i8*, ...) #2

declare dso_local i32 @mei_hw_reset(%struct.mei_device*, i32) #2

declare dso_local i32 @mei_cl_all_disconnect(%struct.mei_device*) #2

declare dso_local i32 @mei_hbm_reset(%struct.mei_device*) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @dev_dbg(i32, i8*) #2

declare dso_local i32 @mei_hw_start(%struct.mei_device*) #2

declare dso_local i32 @mei_hbm_start_req(%struct.mei_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
