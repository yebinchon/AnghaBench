; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, i32 }
%struct.cmd_ds_802_11_deauthenticate = type { i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@ETH_ALEN = common dso_local global i32 0, align 4
@CMD_802_11_DEAUTHENTICATE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LBS_DISCONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_disconnect(%struct.lbs_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmd_ds_802_11_deauthenticate, align 8
  %7 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 @memset(%struct.cmd_ds_802_11_deauthenticate* %6, i32 0, i32 24)
  %9 = call i8* @cpu_to_le16(i32 24)
  %10 = getelementptr inbounds %struct.cmd_ds_802_11_deauthenticate, %struct.cmd_ds_802_11_deauthenticate* %6, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds %struct.cmd_ds_802_11_deauthenticate, %struct.cmd_ds_802_11_deauthenticate* %6, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %15 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %14, i32 0, i32 2
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = call i32 @memcpy(i32 %13, i32* %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i8* @cpu_to_le16(i32 %18)
  %20 = getelementptr inbounds %struct.cmd_ds_802_11_deauthenticate, %struct.cmd_ds_802_11_deauthenticate* %6, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %22 = load i32, i32* @CMD_802_11_DEAUTHENTICATE, align 4
  %23 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %21, i32 %22, %struct.cmd_ds_802_11_deauthenticate* %6)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %38

28:                                               ; preds = %2
  %29 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %30 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @cfg80211_disconnected(i32 %31, i32 %32, i32* null, i32 0, i32 1, i32 %33)
  %35 = load i32, i32* @LBS_DISCONNECTED, align 4
  %36 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %37 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %28, %26
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @memset(%struct.cmd_ds_802_11_deauthenticate*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11_deauthenticate*) #1

declare dso_local i32 @cfg80211_disconnected(i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
