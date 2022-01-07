; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_ucode.c_iwl_load_ucode_wait_alive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_ucode.c_iwl_load_ucode_wait_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32, i32, i32, i32 }
%struct.iwl_notification_wait = type { i32 }
%struct.iwl_alive_data = type { i32 }
%struct.fw_img = type { i32 }

@iwl_load_ucode_wait_alive.alive_cmd = internal constant [1 x i32] [i32 128], align 4
@EINVAL = common dso_local global i32 0, align 4
@iwl_alive_fn = common dso_local global i32 0, align 4
@UCODE_ALIVE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Loaded ucode is not valid!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IWL_UCODE_WOWLAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Could not complete ALIVE transition: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_load_ucode_wait_alive(%struct.iwl_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_notification_wait, align 4
  %7 = alloca %struct.iwl_alive_data, align 4
  %8 = alloca %struct.fw_img*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %12 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.fw_img* @iwl_get_ucode_image(i32 %13, i32 %14)
  store %struct.fw_img* %15, %struct.fw_img** %8, align 8
  %16 = load %struct.fw_img*, %struct.fw_img** %8, align 8
  %17 = icmp ne %struct.fw_img* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %100

25:                                               ; preds = %2
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %27 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %31 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %33 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %35 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %34, i32 0, i32 2
  %36 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([1 x i32], [1 x i32]* @iwl_load_ucode_wait_alive.alive_cmd, i64 0, i64 0))
  %37 = load i32, i32* @iwl_alive_fn, align 4
  %38 = call i32 @iwl_init_notification_wait(i32* %35, %struct.iwl_notification_wait* %6, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @iwl_load_ucode_wait_alive.alive_cmd, i64 0, i64 0), i32 %36, i32 %37, %struct.iwl_alive_data* %7)
  %39 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %40 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fw_img*, %struct.fw_img** %8, align 8
  %43 = call i32 @iwl_trans_start_fw(i32 %41, %struct.fw_img* %42, i32 0)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %25
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %49 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %51 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %50, i32 0, i32 2
  %52 = call i32 @iwl_remove_notification(i32* %51, %struct.iwl_notification_wait* %6)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %100

54:                                               ; preds = %25
  %55 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %56 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %55, i32 0, i32 2
  %57 = load i32, i32* @UCODE_ALIVE_TIMEOUT, align 4
  %58 = call i32 @iwl_wait_notification(i32* %56, %struct.iwl_notification_wait* %6, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %64 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %100

66:                                               ; preds = %54
  %67 = getelementptr inbounds %struct.iwl_alive_data, %struct.iwl_alive_data* %7, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %72 = call i32 @IWL_ERR(%struct.iwl_priv* %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %75 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %100

78:                                               ; preds = %66
  %79 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %80 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @IWL_UCODE_WOWLAN, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = call i32 @msleep(i32 5)
  br label %86

86:                                               ; preds = %84, %78
  %87 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %88 = call i32 @iwl_alive_notify(%struct.iwl_priv* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @IWL_WARN(%struct.iwl_priv* %92, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %97 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %3, align 4
  br label %100

99:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %91, %70, %61, %46, %22
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.fw_img* @iwl_get_ucode_image(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @iwl_init_notification_wait(i32*, %struct.iwl_notification_wait*, i32*, i32, i32, %struct.iwl_alive_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @iwl_trans_start_fw(i32, %struct.fw_img*, i32) #1

declare dso_local i32 @iwl_remove_notification(i32*, %struct.iwl_notification_wait*) #1

declare dso_local i32 @iwl_wait_notification(i32*, %struct.iwl_notification_wait*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @iwl_alive_notify(%struct.iwl_priv*) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
