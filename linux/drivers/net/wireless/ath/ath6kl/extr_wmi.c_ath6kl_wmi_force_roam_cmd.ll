; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_force_roam_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_force_roam_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i64 }
%struct.roam_ctrl_cmd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WMI_FORCE_ROAM = common dso_local global i32 0, align 4
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"force roam to %pM\0A\00", align 1
@WMI_SET_ROAM_CTRL_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_force_roam_cmd(%struct.wmi* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wmi*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.roam_ctrl_cmd*, align 8
  store %struct.wmi* %0, %struct.wmi** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 8)
  store %struct.sk_buff* %8, %struct.sk_buff** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %37

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.roam_ctrl_cmd*
  store %struct.roam_ctrl_cmd* %18, %struct.roam_ctrl_cmd** %7, align 8
  %19 = load %struct.roam_ctrl_cmd*, %struct.roam_ctrl_cmd** %7, align 8
  %20 = getelementptr inbounds %struct.roam_ctrl_cmd, %struct.roam_ctrl_cmd* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @ETH_ALEN, align 4
  %25 = call i32 @memcpy(i32 %22, i32* %23, i32 %24)
  %26 = load i32, i32* @WMI_FORCE_ROAM, align 4
  %27 = load %struct.roam_ctrl_cmd*, %struct.roam_ctrl_cmd** %7, align 8
  %28 = getelementptr inbounds %struct.roam_ctrl_cmd, %struct.roam_ctrl_cmd* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @ath6kl_dbg(i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %30)
  %32 = load %struct.wmi*, %struct.wmi** %4, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = load i32, i32* @WMI_SET_ROAM_CTRL_CMDID, align 4
  %35 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %36 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %32, i32 0, %struct.sk_buff* %33, i32 %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %14, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32*) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
