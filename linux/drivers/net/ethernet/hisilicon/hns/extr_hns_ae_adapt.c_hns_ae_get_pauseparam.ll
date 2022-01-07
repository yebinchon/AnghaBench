; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i64 }
%struct.hns_mac_cb = type { i32, %struct.dsaf_device* }
%struct.dsaf_device = type { i32 }

@HNAE_PORT_SERVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_handle*, i32*, i32*, i32*)* @hns_ae_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_ae_get_pauseparam(%struct.hnae_handle* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.hnae_handle*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.hns_mac_cb*, align 8
  %10 = alloca %struct.dsaf_device*, align 8
  store %struct.hnae_handle* %0, %struct.hnae_handle** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  %12 = call %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle* %11)
  store %struct.hns_mac_cb* %12, %struct.hns_mac_cb** %9, align 8
  %13 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %9, align 8
  %14 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %13, i32 0, i32 1
  %15 = load %struct.dsaf_device*, %struct.dsaf_device** %14, align 8
  store %struct.dsaf_device* %15, %struct.dsaf_device** %10, align 8
  %16 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %9, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @hns_mac_get_autoneg(%struct.hns_mac_cb* %16, i32* %17)
  %19 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %9, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @hns_mac_get_pauseparam(%struct.hns_mac_cb* %19, i32* %20, i32* %21)
  %23 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  %24 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HNAE_PORT_SERVICE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load %struct.dsaf_device*, %struct.dsaf_device** %10, align 8
  %30 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %9, align 8
  %31 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @hns_dsaf_get_rx_mac_pause_en(%struct.dsaf_device* %29, i32 %32, i32* %33)
  br label %35

35:                                               ; preds = %28, %4
  ret void
}

declare dso_local %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle*) #1

declare dso_local i32 @hns_mac_get_autoneg(%struct.hns_mac_cb*, i32*) #1

declare dso_local i32 @hns_mac_get_pauseparam(%struct.hns_mac_cb*, i32*, i32*) #1

declare dso_local i32 @hns_dsaf_get_rx_mac_pause_en(%struct.dsaf_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
