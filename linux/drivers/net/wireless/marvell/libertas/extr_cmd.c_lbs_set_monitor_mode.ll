; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_set_monitor_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_set_monitor_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.cmd_ds_802_11_monitor_mode = type { i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@CMD_ACT_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"SET_MONITOR_MODE: %d\0A\00", align 1
@CMD_802_11_MONITOR_MODE = common dso_local global i32 0, align 4
@ARPHRD_IEEE80211_RADIOTAP = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_set_monitor_mode(%struct.lbs_private* %0, i32 %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmd_ds_802_11_monitor_mode, align 8
  %6 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @memset(%struct.cmd_ds_802_11_monitor_mode* %5, i32 0, i32 24)
  %8 = call i8* @cpu_to_le16(i32 24)
  %9 = getelementptr inbounds %struct.cmd_ds_802_11_monitor_mode, %struct.cmd_ds_802_11_monitor_mode* %5, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = load i32, i32* @CMD_ACT_SET, align 4
  %12 = call i8* @cpu_to_le16(i32 %11)
  %13 = getelementptr inbounds %struct.cmd_ds_802_11_monitor_mode, %struct.cmd_ds_802_11_monitor_mode* %5, i32 0, i32 1
  store i8* %12, i8** %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = call i8* @cpu_to_le16(i32 1)
  %18 = getelementptr inbounds %struct.cmd_ds_802_11_monitor_mode, %struct.cmd_ds_802_11_monitor_mode* %5, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %23 = load i32, i32* @CMD_802_11_MONITOR_MODE, align 4
  %24 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %22, i32 %23, %struct.cmd_ds_802_11_monitor_mode* %5)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %19
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @ARPHRD_IEEE80211_RADIOTAP, align 4
  br label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @ARPHRD_ETHER, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %37 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  br label %40

40:                                               ; preds = %34, %19
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @memset(%struct.cmd_ds_802_11_monitor_mode*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_deb_cmd(i8*, i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11_monitor_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
