; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_sec_ioctl_set_wapi_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_sec_ioctl_set_wapi_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.mwifiex_ds_encrypt_key = type { i32 }

@HostCmd_CMD_802_11_KEY_MATERIAL = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@KEY_INFO_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.mwifiex_ds_encrypt_key*)* @mwifiex_sec_ioctl_set_wapi_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_sec_ioctl_set_wapi_key(%struct.mwifiex_private* %0, %struct.mwifiex_ds_encrypt_key* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.mwifiex_ds_encrypt_key*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.mwifiex_ds_encrypt_key* %1, %struct.mwifiex_ds_encrypt_key** %4, align 8
  %5 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %6 = load i32, i32* @HostCmd_CMD_802_11_KEY_MATERIAL, align 4
  %7 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %8 = load i32, i32* @KEY_INFO_ENABLED, align 4
  %9 = load %struct.mwifiex_ds_encrypt_key*, %struct.mwifiex_ds_encrypt_key** %4, align 8
  %10 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %5, i32 %6, i32 %7, i32 %8, %struct.mwifiex_ds_encrypt_key* %9, i32 1)
  ret i32 %10
}

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, %struct.mwifiex_ds_encrypt_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
