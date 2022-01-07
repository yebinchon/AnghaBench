; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i64 }
%struct.hns_mac_cb = type { i32, %struct.dsaf_device* }
%struct.dsaf_device = type { i32 }

@HNAE_PORT_SERVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae_handle*, i32, i32, i32)* @hns_ae_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_ae_set_pauseparam(%struct.hnae_handle* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hnae_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hns_mac_cb*, align 8
  %11 = alloca %struct.dsaf_device*, align 8
  %12 = alloca i32, align 4
  store %struct.hnae_handle* %0, %struct.hnae_handle** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.hnae_handle*, %struct.hnae_handle** %6, align 8
  %14 = call %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle* %13)
  store %struct.hns_mac_cb* %14, %struct.hns_mac_cb** %10, align 8
  %15 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %10, align 8
  %16 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %15, i32 0, i32 1
  %17 = load %struct.dsaf_device*, %struct.dsaf_device** %16, align 8
  store %struct.dsaf_device* %17, %struct.dsaf_device** %11, align 8
  %18 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @hns_mac_set_autoneg(%struct.hns_mac_cb* %18, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %48

25:                                               ; preds = %4
  %26 = load %struct.hnae_handle*, %struct.hnae_handle** %6, align 8
  %27 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HNAE_PORT_SERVICE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load %struct.dsaf_device*, %struct.dsaf_device** %11, align 8
  %33 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %10, align 8
  %34 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @hns_dsaf_set_rx_mac_pause_en(%struct.dsaf_device* %32, i32 %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %5, align 4
  br label %48

42:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %25
  %44 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %10, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @hns_mac_set_pauseparam(%struct.hns_mac_cb* %44, i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %40, %23
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle*) #1

declare dso_local i32 @hns_mac_set_autoneg(%struct.hns_mac_cb*, i32) #1

declare dso_local i32 @hns_dsaf_set_rx_mac_pause_en(%struct.dsaf_device*, i32, i32) #1

declare dso_local i32 @hns_mac_set_pauseparam(%struct.hns_mac_cb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
