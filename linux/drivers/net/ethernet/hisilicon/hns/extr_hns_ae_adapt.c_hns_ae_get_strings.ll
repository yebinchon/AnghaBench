; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i32, i32 }
%struct.hns_mac_cb = type { i64 }
%struct.hns_ppe_cb = type { i32 }
%struct.dsaf_device = type { i32 }
%struct.hnae_vf_cb = type { i32 }

@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@HNAE_PORT_SERVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_handle*, i32, i32*)* @hns_ae_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_ae_get_strings(%struct.hnae_handle* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.hnae_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hns_mac_cb*, align 8
  %10 = alloca %struct.hns_ppe_cb*, align 8
  %11 = alloca %struct.dsaf_device*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.hnae_vf_cb*, align 8
  store %struct.hnae_handle* %0, %struct.hnae_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %14 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %15 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.dsaf_device* @hns_ae_get_dsaf_dev(i32 %16)
  store %struct.dsaf_device* %17, %struct.dsaf_device** %11, align 8
  %18 = load i32*, i32** %6, align 8
  store i32* %18, i32** %12, align 8
  %19 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %20 = call i32 @assert(%struct.hnae_handle* %19)
  %21 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %22 = call %struct.hnae_vf_cb* @hns_ae_get_vf_cb(%struct.hnae_handle* %21)
  store %struct.hnae_vf_cb* %22, %struct.hnae_vf_cb** %13, align 8
  %23 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %13, align 8
  %24 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %27 = call %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle* %26)
  store %struct.hns_mac_cb* %27, %struct.hns_mac_cb** %9, align 8
  %28 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %29 = call %struct.hns_ppe_cb* @hns_get_ppe_cb(%struct.hnae_handle* %28)
  store %struct.hns_ppe_cb* %29, %struct.hns_ppe_cb** %10, align 8
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %48, %3
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %33 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @hns_rcb_get_strings(i32 %37, i32* %38, i32 %39)
  %41 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @hns_rcb_get_ring_sset_count(i32 %42)
  %44 = mul nsw i32 %41, %43
  %45 = load i32*, i32** %12, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %12, align 8
  br label %48

48:                                               ; preds = %36
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %30

51:                                               ; preds = %30
  %52 = load %struct.hns_ppe_cb*, %struct.hns_ppe_cb** %10, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @hns_ppe_get_strings(%struct.hns_ppe_cb* %52, i32 %53, i32* %54)
  %56 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @hns_ppe_get_sset_count(i32 %57)
  %59 = mul nsw i32 %56, %58
  %60 = load i32*, i32** %12, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %12, align 8
  %63 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %9, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @hns_mac_get_strings(%struct.hns_mac_cb* %63, i32 %64, i32* %65)
  %67 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %68 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %9, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @hns_mac_get_sset_count(%struct.hns_mac_cb* %68, i32 %69)
  %71 = mul nsw i32 %67, %70
  %72 = load i32*, i32** %12, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %12, align 8
  %75 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %9, align 8
  %76 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @HNAE_PORT_SERVICE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %51
  %81 = load i32, i32* %5, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.dsaf_device*, %struct.dsaf_device** %11, align 8
  %85 = call i32 @hns_dsaf_get_strings(i32 %81, i32* %82, i32 %83, %struct.dsaf_device* %84)
  br label %86

86:                                               ; preds = %80, %51
  ret void
}

declare dso_local %struct.dsaf_device* @hns_ae_get_dsaf_dev(i32) #1

declare dso_local i32 @assert(%struct.hnae_handle*) #1

declare dso_local %struct.hnae_vf_cb* @hns_ae_get_vf_cb(%struct.hnae_handle*) #1

declare dso_local %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle*) #1

declare dso_local %struct.hns_ppe_cb* @hns_get_ppe_cb(%struct.hnae_handle*) #1

declare dso_local i32 @hns_rcb_get_strings(i32, i32*, i32) #1

declare dso_local i32 @hns_rcb_get_ring_sset_count(i32) #1

declare dso_local i32 @hns_ppe_get_strings(%struct.hns_ppe_cb*, i32, i32*) #1

declare dso_local i32 @hns_ppe_get_sset_count(i32) #1

declare dso_local i32 @hns_mac_get_strings(%struct.hns_mac_cb*, i32, i32*) #1

declare dso_local i32 @hns_mac_get_sset_count(%struct.hns_mac_cb*, i32) #1

declare dso_local i32 @hns_dsaf_get_strings(i32, i32*, i32, %struct.dsaf_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
