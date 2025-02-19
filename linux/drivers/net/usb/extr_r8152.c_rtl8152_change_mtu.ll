; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8152 = type { i32, i32, i32 }

@VLAN_ETH_HLEN = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@MCU_TYPE_PLA = common dso_local global i32 0, align 4
@PLA_RMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @rtl8152_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8152_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.r8152*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.r8152* @netdev_priv(%struct.net_device* %9)
  store %struct.r8152* %10, %struct.r8152** %6, align 8
  %11 = load %struct.r8152*, %struct.r8152** %6, align 8
  %12 = getelementptr inbounds %struct.r8152, %struct.r8152* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %18 [
    i32 130, label %14
    i32 129, label %14
    i32 128, label %14
  ]

14:                                               ; preds = %2, %2, %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  store i32 0, i32* %3, align 4
  br label %66

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.r8152*, %struct.r8152** %6, align 8
  %21 = getelementptr inbounds %struct.r8152, %struct.r8152* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @usb_autopm_get_interface(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %66

28:                                               ; preds = %19
  %29 = load %struct.r8152*, %struct.r8152** %6, align 8
  %30 = getelementptr inbounds %struct.r8152, %struct.r8152* %29, i32 0, i32 2
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = call i64 @netif_running(%struct.net_device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %28
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* @VLAN_ETH_HLEN, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i64, i64* @ETH_FCS_LEN, align 8
  %44 = add nsw i64 %42, %43
  store i64 %44, i64* %8, align 8
  %45 = load %struct.r8152*, %struct.r8152** %6, align 8
  %46 = load i32, i32* @MCU_TYPE_PLA, align 4
  %47 = load i32, i32* @PLA_RMS, align 4
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @ocp_write_word(%struct.r8152* %45, i32 %46, i32 %47, i64 %48)
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = call i64 @netif_carrier_ok(%struct.net_device* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %38
  %54 = load %struct.r8152*, %struct.r8152** %6, align 8
  %55 = call i32 @r8153_set_rx_early_size(%struct.r8152* %54)
  br label %56

56:                                               ; preds = %53, %38
  br label %57

57:                                               ; preds = %56, %28
  %58 = load %struct.r8152*, %struct.r8152** %6, align 8
  %59 = getelementptr inbounds %struct.r8152, %struct.r8152* %58, i32 0, i32 2
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load %struct.r8152*, %struct.r8152** %6, align 8
  %62 = getelementptr inbounds %struct.r8152, %struct.r8152* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @usb_autopm_put_interface(i32 %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %57, %26, %14
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.r8152* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ocp_write_word(%struct.r8152*, i32, i32, i64) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @r8153_set_rx_early_size(%struct.r8152*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
