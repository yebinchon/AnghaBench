; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_get_stats_tqps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_get_stats_tqps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.hnae3_handle = type { %struct.hnae3_knic_private_info, i64 }
%struct.hnae3_knic_private_info = type { i32 }
%struct.hns3_nic_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.hns3_enet_ring* }
%struct.hns3_enet_ring = type { i32 }

@HNS3_TXQ_STATS_COUNT = common dso_local global i32 0, align 4
@hns3_txq_stats = common dso_local global %struct.TYPE_5__* null, align 8
@HNS3_RXQ_STATS_COUNT = common dso_local global i32 0, align 4
@hns3_rxq_stats = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (%struct.hnae3_handle*, i8**)* @hns3_get_stats_tqps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @hns3_get_stats_tqps(%struct.hnae3_handle* %0, i8** %1) #0 {
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.hns3_nic_priv*, align 8
  %6 = alloca %struct.hnae3_knic_private_info*, align 8
  %7 = alloca %struct.hns3_enet_ring*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  store i8** %1, i8*** %4, align 8
  %11 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %12 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.hns3_nic_priv*
  store %struct.hns3_nic_priv* %14, %struct.hns3_nic_priv** %5, align 8
  %15 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %16 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %15, i32 0, i32 0
  store %struct.hnae3_knic_private_info* %16, %struct.hnae3_knic_private_info** %6, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %56, %2
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %6, align 8
  %20 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %17
  %24 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %25 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %30, align 8
  store %struct.hns3_enet_ring* %31, %struct.hns3_enet_ring** %7, align 8
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %52, %23
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @HNS3_TXQ_STATS_COUNT, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %7, align 8
  %38 = bitcast %struct.hns3_enet_ring* %37 to i32*
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hns3_txq_stats, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %38, i64 %45
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = bitcast i32* %47 to i8**
  %49 = load i8*, i8** %48, align 8
  %50 = load i8**, i8*** %4, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i32 1
  store i8** %51, i8*** %4, align 8
  store i8* %49, i8** %50, align 8
  br label %52

52:                                               ; preds = %36
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %32

55:                                               ; preds = %32
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %17

59:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %103, %59
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %6, align 8
  %63 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %106

66:                                               ; preds = %60
  %67 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %68 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %6, align 8
  %72 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %70, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %77, align 8
  store %struct.hns3_enet_ring* %78, %struct.hns3_enet_ring** %7, align 8
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %99, %66
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @HNS3_RXQ_STATS_COUNT, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %79
  %84 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %7, align 8
  %85 = bitcast %struct.hns3_enet_ring* %84 to i32*
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hns3_rxq_stats, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %85, i64 %92
  store i32* %93, i32** %8, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = bitcast i32* %94 to i8**
  %96 = load i8*, i8** %95, align 8
  %97 = load i8**, i8*** %4, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i32 1
  store i8** %98, i8*** %4, align 8
  store i8* %96, i8** %97, align 8
  br label %99

99:                                               ; preds = %83
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %79

102:                                              ; preds = %79
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %60

106:                                              ; preds = %60
  %107 = load i8**, i8*** %4, align 8
  ret i8** %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
