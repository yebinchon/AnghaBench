; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_sec_ioctl_encrypt_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_sec_ioctl_encrypt_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.mwifiex_ds_encrypt_key = type { i64, i64 }

@WLAN_KEY_LEN_WEP104 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.mwifiex_ds_encrypt_key*)* @mwifiex_sec_ioctl_encrypt_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_sec_ioctl_encrypt_key(%struct.mwifiex_private* %0, %struct.mwifiex_ds_encrypt_key* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.mwifiex_ds_encrypt_key*, align 8
  %5 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.mwifiex_ds_encrypt_key* %1, %struct.mwifiex_ds_encrypt_key** %4, align 8
  %6 = load %struct.mwifiex_ds_encrypt_key*, %struct.mwifiex_ds_encrypt_key** %4, align 8
  %7 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, %struct.mwifiex_ds_encrypt_key* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %12 = load %struct.mwifiex_ds_encrypt_key*, %struct.mwifiex_ds_encrypt_key** %4, align 8
  %13 = call i32 @mwifiex_sec_ioctl_set_wapi_key(%struct.mwifiex_private* %11, %struct.mwifiex_ds_encrypt_key* %12)
  store i32 %13, i32* %5, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load %struct.mwifiex_ds_encrypt_key*, %struct.mwifiex_ds_encrypt_key** %4, align 8
  %16 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, %struct.mwifiex_ds_encrypt_key* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @WLAN_KEY_LEN_WEP104, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %22 = load %struct.mwifiex_ds_encrypt_key*, %struct.mwifiex_ds_encrypt_key** %4, align 8
  %23 = call i32 @mwifiex_sec_ioctl_set_wpa_key(%struct.mwifiex_private* %21, %struct.mwifiex_ds_encrypt_key* %22)
  store i32 %23, i32* %5, align 4
  br label %28

24:                                               ; preds = %14
  %25 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %26 = load %struct.mwifiex_ds_encrypt_key*, %struct.mwifiex_ds_encrypt_key** %4, align 8
  %27 = call i32 @mwifiex_sec_ioctl_set_wep_key(%struct.mwifiex_private* %25, %struct.mwifiex_ds_encrypt_key* %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %24, %20
  br label %29

29:                                               ; preds = %28, %10
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @mwifiex_sec_ioctl_set_wapi_key(%struct.mwifiex_private*, %struct.mwifiex_ds_encrypt_key*) #1

declare dso_local i32 @mwifiex_sec_ioctl_set_wpa_key(%struct.mwifiex_private*, %struct.mwifiex_ds_encrypt_key*) #1

declare dso_local i32 @mwifiex_sec_ioctl_set_wep_key(%struct.mwifiex_private*, %struct.mwifiex_ds_encrypt_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
