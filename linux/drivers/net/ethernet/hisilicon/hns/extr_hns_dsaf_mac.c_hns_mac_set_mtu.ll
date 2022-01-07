; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_set_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_set_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i32 }
%struct.mac_driver = type { i32 (%struct.mac_driver*, i32)* }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@HNS_RCB_RING_MAX_BD_PER_PKT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_mac_set_mtu(%struct.hns_mac_cb* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_mac_cb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mac_driver*, align 8
  %9 = alloca i32, align 4
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %11 = call %struct.mac_driver* @hns_mac_get_drv(%struct.hns_mac_cb* %10)
  store %struct.mac_driver* %11, %struct.mac_driver** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @ETH_HLEN, align 4
  %14 = add nsw i32 %12, %13
  %15 = load i32, i32* @ETH_FCS_LEN, align 4
  %16 = add nsw i32 %14, %15
  %17 = load i32, i32* @VLAN_HLEN, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @HNS_RCB_RING_MAX_BD_PER_PKT, align 4
  %21 = load i32, i32* %7, align 4
  %22 = mul nsw i32 %20, %21
  %23 = icmp sgt i32 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %59

27:                                               ; preds = %3
  %28 = load %struct.mac_driver*, %struct.mac_driver** %8, align 8
  %29 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %28, i32 0, i32 0
  %30 = load i32 (%struct.mac_driver*, i32)*, i32 (%struct.mac_driver*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.mac_driver*, i32)* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ECHILD, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %59

35:                                               ; preds = %27
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @ETH_FRAME_LEN, align 4
  %38 = load i32, i32* @ETH_FCS_LEN, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i32, i32* @VLAN_HLEN, align 4
  %41 = add nsw i32 %39, %40
  %42 = icmp slt i32 %36, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load i32, i32* @ETH_FRAME_LEN, align 4
  %45 = load i32, i32* @ETH_FCS_LEN, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* @VLAN_HLEN, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %43, %35
  %50 = load %struct.mac_driver*, %struct.mac_driver** %8, align 8
  %51 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %50, i32 0, i32 0
  %52 = load i32 (%struct.mac_driver*, i32)*, i32 (%struct.mac_driver*, i32)** %51, align 8
  %53 = load %struct.mac_driver*, %struct.mac_driver** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 %52(%struct.mac_driver* %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %58 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %49, %32, %24
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.mac_driver* @hns_mac_get_drv(%struct.hns_mac_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
