; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i32, i32* }
%struct.hns_mac_cb = type { i64 }
%struct.hns_ppe_cb = type { i32 }
%struct.hnae_vf_cb = type { i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"hns_ae_get_stats NULL handle or data pointer!\0A\00", align 1
@ETH_SS_STATS = common dso_local global i64 0, align 8
@HNAE_PORT_SERVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_handle*, i32*)* @hns_ae_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_ae_get_stats(%struct.hnae_handle* %0, i32* %1) #0 {
  %3 = alloca %struct.hnae_handle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_mac_cb*, align 8
  %7 = alloca %struct.hns_ppe_cb*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.hnae_vf_cb*, align 8
  store %struct.hnae_handle* %0, %struct.hnae_handle** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  store i32* %10, i32** %8, align 8
  %11 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %12 = icmp ne %struct.hnae_handle* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13, %2
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %84

18:                                               ; preds = %13
  %19 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %20 = call %struct.hnae_vf_cb* @hns_ae_get_vf_cb(%struct.hnae_handle* %19)
  store %struct.hnae_vf_cb* %20, %struct.hnae_vf_cb** %9, align 8
  %21 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %22 = call %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle* %21)
  store %struct.hns_mac_cb* %22, %struct.hns_mac_cb** %6, align 8
  %23 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %24 = call %struct.hns_ppe_cb* @hns_get_ppe_cb(%struct.hnae_handle* %23)
  store %struct.hns_ppe_cb* %24, %struct.hns_ppe_cb** %7, align 8
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %47, %18
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %28 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %33 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @hns_rcb_get_stats(i32 %38, i32* %39)
  %41 = load i64, i64* @ETH_SS_STATS, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @hns_rcb_get_ring_sset_count(i32 %42)
  %44 = load i32*, i32** %8, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %8, align 8
  br label %47

47:                                               ; preds = %31
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %25

50:                                               ; preds = %25
  %51 = load %struct.hns_ppe_cb*, %struct.hns_ppe_cb** %7, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @hns_ppe_get_stats(%struct.hns_ppe_cb* %51, i32* %52)
  %54 = load i64, i64* @ETH_SS_STATS, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @hns_ppe_get_sset_count(i32 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %8, align 8
  %60 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %6, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @hns_mac_get_stats(%struct.hns_mac_cb* %60, i32* %61)
  %63 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %6, align 8
  %64 = load i64, i64* @ETH_SS_STATS, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @hns_mac_get_sset_count(%struct.hns_mac_cb* %63, i32 %65)
  %67 = load i32*, i32** %8, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %8, align 8
  %70 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %6, align 8
  %71 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @HNAE_PORT_SERVICE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %50
  %76 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %9, align 8
  %77 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %9, align 8
  %81 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @hns_dsaf_get_stats(i32 %78, i32* %79, i32 %82)
  br label %84

84:                                               ; preds = %16, %75, %50
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.hnae_vf_cb* @hns_ae_get_vf_cb(%struct.hnae_handle*) #1

declare dso_local %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle*) #1

declare dso_local %struct.hns_ppe_cb* @hns_get_ppe_cb(%struct.hnae_handle*) #1

declare dso_local i32 @hns_rcb_get_stats(i32, i32*) #1

declare dso_local i32 @hns_rcb_get_ring_sset_count(i32) #1

declare dso_local i32 @hns_ppe_get_stats(%struct.hns_ppe_cb*, i32*) #1

declare dso_local i32 @hns_ppe_get_sset_count(i32) #1

declare dso_local i32 @hns_mac_get_stats(%struct.hns_mac_cb*, i32*) #1

declare dso_local i32 @hns_mac_get_sset_count(%struct.hns_mac_cb*, i32) #1

declare dso_local i32 @hns_dsaf_get_stats(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
