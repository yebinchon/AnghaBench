; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_get_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_get_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.cmd_ds_802_11_rf_channel = type { i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@CMD_OPT_802_11_RF_CHANNEL_GET = common dso_local global i32 0, align 4
@CMD_802_11_RF_CHANNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"current radio channel is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*)* @lbs_get_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_get_channel(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca %struct.cmd_ds_802_11_rf_channel, align 8
  %4 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @memset(%struct.cmd_ds_802_11_rf_channel* %3, i32 0, i32 24)
  %6 = call i8* @cpu_to_le16(i32 24)
  %7 = getelementptr inbounds %struct.cmd_ds_802_11_rf_channel, %struct.cmd_ds_802_11_rf_channel* %3, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = load i32, i32* @CMD_OPT_802_11_RF_CHANNEL_GET, align 4
  %10 = call i8* @cpu_to_le16(i32 %9)
  %11 = getelementptr inbounds %struct.cmd_ds_802_11_rf_channel, %struct.cmd_ds_802_11_rf_channel* %3, i32 0, i32 1
  store i8* %10, i8** %11, align 8
  %12 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %13 = load i32, i32* @CMD_802_11_RF_CHANNEL, align 4
  %14 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %12, i32 %13, %struct.cmd_ds_802_11_rf_channel* %3)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %24

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.cmd_ds_802_11_rf_channel, %struct.cmd_ds_802_11_rf_channel* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %18, %17
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @memset(%struct.cmd_ds_802_11_rf_channel*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11_rf_channel*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @lbs_deb_cmd(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
