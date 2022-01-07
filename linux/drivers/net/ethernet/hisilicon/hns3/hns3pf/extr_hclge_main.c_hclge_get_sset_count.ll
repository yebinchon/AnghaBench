; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@ETH_SS_TEST = common dso_local global i32 0, align 4
@HNAE3_SUPPORT_APP_LOOPBACK = common dso_local global i32 0, align 4
@HNAE3_SUPPORT_PHY_LOOPBACK = common dso_local global i32 0, align 4
@HNAE3_SUPPORT_SERDES_SERIAL_LOOPBACK = common dso_local global i32 0, align 4
@HNAE3_SUPPORT_SERDES_PARALLEL_LOOPBACK = common dso_local global i32 0, align 4
@HCLGE_MAC_SPEED_10M = common dso_local global i64 0, align 8
@HCLGE_MAC_SPEED_100M = common dso_local global i64 0, align 8
@HCLGE_MAC_SPEED_1G = common dso_local global i64 0, align 8
@ETH_SS_STATS = common dso_local global i32 0, align 4
@g_mac_stats_string = common dso_local global i32 0, align 4
@HCLGE_LOOPBACK_TEST_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i32)* @hclge_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_get_sset_count(%struct.hnae3_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_vport*, align 8
  %6 = alloca %struct.hclge_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %9 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %8)
  store %struct.hclge_vport* %9, %struct.hclge_vport** %5, align 8
  %10 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %11 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %10, i32 0, i32 0
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %11, align 8
  store %struct.hclge_dev* %12, %struct.hclge_dev** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ETH_SS_TEST, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %97

16:                                               ; preds = %2
  %17 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %18 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @HNAE3_SUPPORT_APP_LOOPBACK, align 4
  %21 = load i32, i32* @HNAE3_SUPPORT_PHY_LOOPBACK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @HNAE3_SUPPORT_SERDES_SERIAL_LOOPBACK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @HNAE3_SUPPORT_SERDES_PARALLEL_LOOPBACK, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %19, %27
  %29 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %30 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %32 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %35, 33
  br i1 %36, label %61, label %37

37:                                               ; preds = %16
  %38 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %39 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @HCLGE_MAC_SPEED_10M, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %61, label %45

45:                                               ; preds = %37
  %46 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %47 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @HCLGE_MAC_SPEED_100M, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %45
  %54 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %55 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @HCLGE_MAC_SPEED_1G, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %53, %45, %37, %16
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* @HNAE3_SUPPORT_APP_LOOPBACK, align 4
  %65 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %66 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %61, %53
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 2
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @HNAE3_SUPPORT_SERDES_SERIAL_LOOPBACK, align 4
  %73 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %74 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @HNAE3_SUPPORT_SERDES_PARALLEL_LOOPBACK, align 4
  %78 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %79 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %83 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %69
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* @HNAE3_SUPPORT_PHY_LOOPBACK, align 4
  %92 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %93 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %88, %69
  br label %109

97:                                               ; preds = %2
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @ETH_SS_STATS, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = load i32, i32* @g_mac_stats_string, align 4
  %103 = call i32 @ARRAY_SIZE(i32 %102)
  %104 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @hclge_tqps_get_sset_count(%struct.hnae3_handle* %104, i32 %105)
  %107 = add nsw i32 %103, %106
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %101, %97
  br label %109

109:                                              ; preds = %108, %96
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @hclge_tqps_get_sset_count(%struct.hnae3_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
