; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_disable_auto_ds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_disable_auto_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.mwifiex_ds_auto_ds = type { i32 }

@DEEP_SLEEP_OFF = common dso_local global i32 0, align 4
@HostCmd_CMD_802_11_PS_MODE_ENH = common dso_local global i32 0, align 4
@DIS_AUTO_PS = common dso_local global i32 0, align 4
@BITMAP_AUTO_DS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_disable_auto_ds(%struct.mwifiex_private* %0) #0 {
  %2 = alloca %struct.mwifiex_private*, align 8
  %3 = alloca %struct.mwifiex_ds_auto_ds, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %2, align 8
  %4 = getelementptr inbounds %struct.mwifiex_ds_auto_ds, %struct.mwifiex_ds_auto_ds* %3, i32 0, i32 0
  %5 = load i32, i32* @DEEP_SLEEP_OFF, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %7 = load i32, i32* @HostCmd_CMD_802_11_PS_MODE_ENH, align 4
  %8 = load i32, i32* @DIS_AUTO_PS, align 4
  %9 = load i32, i32* @BITMAP_AUTO_DS, align 4
  %10 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %6, i32 %7, i32 %8, i32 %9, %struct.mwifiex_ds_auto_ds* %3, i32 1)
  ret i32 %10
}

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, %struct.mwifiex_ds_auto_ds*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
