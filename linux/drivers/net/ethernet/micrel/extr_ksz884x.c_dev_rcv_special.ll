; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_dev_rcv_special.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_dev_rcv_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_info = type { %struct.ksz_hw }
%struct.ksz_hw = type { i32, %struct.TYPE_8__*, %struct.ksz_desc_info }
%struct.TYPE_8__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ksz_desc_info = type { i32, i32, i32, %struct.ksz_desc* }
%struct.ksz_desc = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%union.desc_stat = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, i64, i32, i64 }
%struct.dev_priv = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }

@KS_DESC_RX_ERROR_COND = common dso_local global i32 0, align 4
@KS_DESC_RX_ERROR_TOO_LONG = common dso_local global i32 0, align 4
@OID_COUNTER_RCV_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dev_info*)* @dev_rcv_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_rcv_special(%struct.dev_info* %0) #0 {
  %2 = alloca %struct.dev_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.desc_stat, align 8
  %5 = alloca %struct.ksz_hw*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ksz_desc_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ksz_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dev_priv*, align 8
  store %struct.dev_info* %0, %struct.dev_info** %2, align 8
  %13 = load %struct.dev_info*, %struct.dev_info** %2, align 8
  %14 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %13, i32 0, i32 0
  store %struct.ksz_hw* %14, %struct.ksz_hw** %5, align 8
  %15 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %16 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %6, align 8
  %21 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %22 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %21, i32 0, i32 2
  store %struct.ksz_desc_info* %22, %struct.ksz_desc_info** %7, align 8
  %23 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %7, align 8
  %24 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %26 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %7, align 8
  %27 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %121, %1
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %8, align 4
  %32 = icmp ne i32 %30, 0
  br i1 %32, label %33, label %131

33:                                               ; preds = %29
  %34 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %7, align 8
  %35 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %34, i32 0, i32 3
  %36 = load %struct.ksz_desc*, %struct.ksz_desc** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %36, i64 %38
  store %struct.ksz_desc* %39, %struct.ksz_desc** %9, align 8
  %40 = load %struct.ksz_desc*, %struct.ksz_desc** %9, align 8
  %41 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = bitcast %union.desc_stat* %4 to i32*
  store i32 %46, i32* %47, align 8
  %48 = bitcast %union.desc_stat* %4 to %struct.TYPE_9__*
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %33
  br label %131

53:                                               ; preds = %33
  %54 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %55 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %76

58:                                               ; preds = %53
  %59 = bitcast %union.desc_stat* %4 to %struct.TYPE_9__*
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @HW_TO_DEV_PORT(i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %64 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.net_device*, %struct.net_device** %69, align 8
  store %struct.net_device* %70, %struct.net_device** %6, align 8
  %71 = load %struct.net_device*, %struct.net_device** %6, align 8
  %72 = call i32 @netif_running(%struct.net_device* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %58
  br label %121

75:                                               ; preds = %58
  br label %76

76:                                               ; preds = %75, %53
  %77 = bitcast %union.desc_stat* %4 to %struct.TYPE_9__*
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %120

81:                                               ; preds = %76
  %82 = bitcast %union.desc_stat* %4 to %struct.TYPE_9__*
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %120

86:                                               ; preds = %81
  %87 = bitcast %union.desc_stat* %4 to %struct.TYPE_9__*
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = bitcast %union.desc_stat* %4 to i32*
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @KS_DESC_RX_ERROR_COND, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @KS_DESC_RX_ERROR_TOO_LONG, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %91, %86
  %99 = load %struct.net_device*, %struct.net_device** %6, align 8
  %100 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %101 = load %struct.ksz_desc*, %struct.ksz_desc** %9, align 8
  %102 = call i64 @rx_proc(%struct.net_device* %99, %struct.ksz_hw* %100, %struct.ksz_desc* %101, %union.desc_stat* byval(%union.desc_stat) align 8 %4)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %121

105:                                              ; preds = %98
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %119

108:                                              ; preds = %91
  %109 = load %struct.net_device*, %struct.net_device** %6, align 8
  %110 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %109)
  store %struct.dev_priv* %110, %struct.dev_priv** %12, align 8
  %111 = load %struct.dev_priv*, %struct.dev_priv** %12, align 8
  %112 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* @OID_COUNTER_RCV_ERROR, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %108, %105
  br label %120

120:                                              ; preds = %119, %81, %76
  br label %121

121:                                              ; preds = %120, %104, %74
  %122 = load %struct.ksz_desc*, %struct.ksz_desc** %9, align 8
  %123 = call i32 @release_desc(%struct.ksz_desc* %122)
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %3, align 4
  %126 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %7, align 8
  %127 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %3, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %3, align 4
  br label %29

131:                                              ; preds = %52, %29
  %132 = load i32, i32* %3, align 4
  %133 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %7, align 8
  %134 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %10, align 4
  ret i32 %135
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @HW_TO_DEV_PORT(i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i64 @rx_proc(%struct.net_device*, %struct.ksz_hw*, %struct.ksz_desc*, %union.desc_stat* byval(%union.desc_stat) align 8) #1

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @release_desc(%struct.ksz_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
