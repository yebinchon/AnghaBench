; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_set_roam_lrssi_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_set_roam_lrssi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i64 }
%struct.roam_ctrl_cmd = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DEF_LRSSI_SCAN_PERIOD = common dso_local global i32 0, align 4
@DEF_SCAN_FOR_ROAM_INTVL = common dso_local global i64 0, align 8
@DEF_LRSSI_ROAM_FLOOR = common dso_local global i32 0, align 4
@WMI_SET_LRSSI_SCAN_PARAMS = common dso_local global i32 0, align 4
@WMI_SET_ROAM_CTRL_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_set_roam_lrssi_cmd(%struct.wmi* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wmi*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.roam_ctrl_cmd*, align 8
  store %struct.wmi* %0, %struct.wmi** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 40)
  store %struct.sk_buff* %8, %struct.sk_buff** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %52

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.roam_ctrl_cmd*
  store %struct.roam_ctrl_cmd* %18, %struct.roam_ctrl_cmd** %7, align 8
  %19 = load i32, i32* @DEF_LRSSI_SCAN_PERIOD, align 4
  %20 = call i32 @cpu_to_le16(i32 %19)
  %21 = load %struct.roam_ctrl_cmd*, %struct.roam_ctrl_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.roam_ctrl_cmd, %struct.roam_ctrl_cmd* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  store i32 %20, i32* %24, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @DEF_SCAN_FOR_ROAM_INTVL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i8* @a_cpu_to_sle16(i64 %27)
  %29 = load %struct.roam_ctrl_cmd*, %struct.roam_ctrl_cmd** %7, align 8
  %30 = getelementptr inbounds %struct.roam_ctrl_cmd, %struct.roam_ctrl_cmd* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i8* %28, i8** %32, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i8* @a_cpu_to_sle16(i64 %33)
  %35 = load %struct.roam_ctrl_cmd*, %struct.roam_ctrl_cmd** %7, align 8
  %36 = getelementptr inbounds %struct.roam_ctrl_cmd, %struct.roam_ctrl_cmd* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i8* %34, i8** %38, align 8
  %39 = load i32, i32* @DEF_LRSSI_ROAM_FLOOR, align 4
  %40 = load %struct.roam_ctrl_cmd*, %struct.roam_ctrl_cmd** %7, align 8
  %41 = getelementptr inbounds %struct.roam_ctrl_cmd, %struct.roam_ctrl_cmd* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 8
  %44 = load i32, i32* @WMI_SET_LRSSI_SCAN_PARAMS, align 4
  %45 = load %struct.roam_ctrl_cmd*, %struct.roam_ctrl_cmd** %7, align 8
  %46 = getelementptr inbounds %struct.roam_ctrl_cmd, %struct.roam_ctrl_cmd* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.wmi*, %struct.wmi** %4, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = load i32, i32* @WMI_SET_ROAM_CTRL_CMDID, align 4
  %50 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %51 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %47, i32 0, %struct.sk_buff* %48, i32 %49, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %14, %11
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @a_cpu_to_sle16(i64) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
