; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i32, i32 }
%struct.hns_mac_cb = type { i64 }
%struct.dsaf_device = type { i32 }

@HNAE_PORT_SERVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae_handle*, i32)* @hns_ae_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_ae_get_sset_count(%struct.hnae_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.hnae_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_mac_cb*, align 8
  %7 = alloca %struct.dsaf_device*, align 8
  store %struct.hnae_handle* %0, %struct.hnae_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %9 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.dsaf_device* @hns_ae_get_dsaf_dev(i32 %10)
  store %struct.dsaf_device* %11, %struct.dsaf_device** %7, align 8
  %12 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %13 = call i32 @assert(%struct.hnae_handle* %12)
  %14 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %15 = call %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle* %14)
  store %struct.hns_mac_cb* %15, %struct.hns_mac_cb** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @hns_rcb_get_ring_sset_count(i32 %16)
  %18 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %19 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @hns_ppe_get_sset_count(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %5, align 4
  %30 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %6, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @hns_mac_get_sset_count(%struct.hns_mac_cb* %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %5, align 4
  %37 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %6, align 8
  %38 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @HNAE_PORT_SERVICE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %2
  %43 = load %struct.dsaf_device*, %struct.dsaf_device** %7, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @hns_dsaf_get_sset_count(%struct.dsaf_device* %43, i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %42, %2
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.dsaf_device* @hns_ae_get_dsaf_dev(i32) #1

declare dso_local i32 @assert(%struct.hnae_handle*) #1

declare dso_local %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle*) #1

declare dso_local i32 @hns_rcb_get_ring_sset_count(i32) #1

declare dso_local i64 @hns_ppe_get_sset_count(i32) #1

declare dso_local i64 @hns_mac_get_sset_count(%struct.hns_mac_cb*, i32) #1

declare dso_local i64 @hns_dsaf_get_sset_count(%struct.dsaf_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
