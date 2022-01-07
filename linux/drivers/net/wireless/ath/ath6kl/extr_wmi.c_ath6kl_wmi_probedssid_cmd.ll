; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_probedssid_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_probedssid_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_probed_ssid_cmd = type { i32, i64, i64, i64 }

@MAX_PROBED_SSIDS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DISABLE_SSID_FLAG = common dso_local global i64 0, align 8
@ANY_SSID_FLAG = common dso_local global i64 0, align 8
@SPECIFIC_SSID_FLAG = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@WMI_SET_PROBED_SSID_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_probedssid_cmd(%struct.wmi* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wmi*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.wmi_probed_ssid_cmd*, align 8
  %16 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* @MAX_PROBED_SSIDS, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %95

23:                                               ; preds = %6
  %24 = load i64, i64* %12, align 8
  %25 = icmp ugt i64 %24, 4
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %95

29:                                               ; preds = %23
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @DISABLE_SSID_FLAG, align 8
  %32 = load i64, i64* @ANY_SSID_FLAG, align 8
  %33 = or i64 %31, %32
  %34 = and i64 %30, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i64, i64* %12, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %95

42:                                               ; preds = %36, %29
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @SPECIFIC_SSID_FLAG, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i64, i64* %12, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %95

53:                                               ; preds = %47, %42
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @SPECIFIC_SSID_FLAG, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.wmi*, %struct.wmi** %8, align 8
  %60 = getelementptr inbounds %struct.wmi, %struct.wmi* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %53
  %62 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 32)
  store %struct.sk_buff* %62, %struct.sk_buff** %14, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %64 = icmp ne %struct.sk_buff* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %95

68:                                               ; preds = %61
  %69 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.wmi_probed_ssid_cmd*
  store %struct.wmi_probed_ssid_cmd* %72, %struct.wmi_probed_ssid_cmd** %15, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.wmi_probed_ssid_cmd*, %struct.wmi_probed_ssid_cmd** %15, align 8
  %75 = getelementptr inbounds %struct.wmi_probed_ssid_cmd, %struct.wmi_probed_ssid_cmd* %74, i32 0, i32 3
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load %struct.wmi_probed_ssid_cmd*, %struct.wmi_probed_ssid_cmd** %15, align 8
  %78 = getelementptr inbounds %struct.wmi_probed_ssid_cmd, %struct.wmi_probed_ssid_cmd* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  %79 = load i64, i64* %12, align 8
  %80 = load %struct.wmi_probed_ssid_cmd*, %struct.wmi_probed_ssid_cmd** %15, align 8
  %81 = getelementptr inbounds %struct.wmi_probed_ssid_cmd, %struct.wmi_probed_ssid_cmd* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.wmi_probed_ssid_cmd*, %struct.wmi_probed_ssid_cmd** %15, align 8
  %83 = getelementptr inbounds %struct.wmi_probed_ssid_cmd, %struct.wmi_probed_ssid_cmd* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i64*, i64** %13, align 8
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @memcpy(i32 %84, i64* %85, i64 %86)
  %88 = load %struct.wmi*, %struct.wmi** %8, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %91 = load i32, i32* @WMI_SET_PROBED_SSID_CMDID, align 4
  %92 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %93 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %88, i64 %89, %struct.sk_buff* %90, i32 %91, i32 %92)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %68, %65, %50, %39, %26, %20
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i32 @memcpy(i32, i64*, i64) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i64, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
