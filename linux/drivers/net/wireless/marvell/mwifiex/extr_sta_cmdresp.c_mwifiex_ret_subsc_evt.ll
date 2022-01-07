; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_subsc_evt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_subsc_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.host_cmd_ds_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.host_cmd_ds_802_11_subsc_evt }
%struct.host_cmd_ds_802_11_subsc_evt = type { i32 }

@EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Bitmap of currently subscribed events: %16x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*)* @mwifiex_ret_subsc_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_ret_subsc_evt(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.host_cmd_ds_command*, align 8
  %5 = alloca %struct.host_cmd_ds_802_11_subsc_evt*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %4, align 8
  %6 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %7 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.host_cmd_ds_802_11_subsc_evt* %8, %struct.host_cmd_ds_802_11_subsc_evt** %5, align 8
  %9 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %10 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @EVENT, align 4
  %13 = load %struct.host_cmd_ds_802_11_subsc_evt*, %struct.host_cmd_ds_802_11_subsc_evt** %5, align 8
  %14 = getelementptr inbounds %struct.host_cmd_ds_802_11_subsc_evt, %struct.host_cmd_ds_802_11_subsc_evt* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  %17 = call i32 @mwifiex_dbg(i32 %11, i32 %12, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %16)
  ret i32 0
}

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
