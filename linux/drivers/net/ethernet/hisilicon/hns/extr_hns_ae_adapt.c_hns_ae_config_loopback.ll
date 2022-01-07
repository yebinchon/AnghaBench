; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_config_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_config_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i32 }
%struct.hnae_vf_cb = type { i32 }
%struct.hns_mac_cb = type { %struct.dsaf_device* }
%struct.dsaf_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae_handle*, i32, i32)* @hns_ae_config_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_ae_config_loopback(%struct.hnae_handle* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hnae_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hnae_vf_cb*, align 8
  %9 = alloca %struct.hns_mac_cb*, align 8
  %10 = alloca %struct.dsaf_device*, align 8
  store %struct.hnae_handle* %0, %struct.hnae_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %12 = call %struct.hnae_vf_cb* @hns_ae_get_vf_cb(%struct.hnae_handle* %11)
  store %struct.hnae_vf_cb* %12, %struct.hnae_vf_cb** %8, align 8
  %13 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %14 = call %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle* %13)
  store %struct.hns_mac_cb* %14, %struct.hns_mac_cb** %9, align 8
  %15 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %9, align 8
  %16 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %15, i32 0, i32 0
  %17 = load %struct.dsaf_device*, %struct.dsaf_device** %16, align 8
  store %struct.dsaf_device* %17, %struct.dsaf_device** %10, align 8
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %42 [
    i32 129, label %19
    i32 128, label %20
    i32 130, label %35
  ]

19:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %45

20:                                               ; preds = %3
  %21 = load %struct.dsaf_device*, %struct.dsaf_device** %10, align 8
  %22 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i32, i32)*, i32 (i32, i32)** %24, align 8
  %26 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %8, align 8
  %27 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 %25(i32 %28, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %45

35:                                               ; preds = %3
  %36 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %8, align 8
  %37 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @hns_mac_config_mac_loopback(i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %7, align 4
  br label %45

42:                                               ; preds = %3
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %35, %20, %19
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local %struct.hnae_vf_cb* @hns_ae_get_vf_cb(%struct.hnae_handle*) #1

declare dso_local %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle*) #1

declare dso_local i32 @hns_mac_config_mac_loopback(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
