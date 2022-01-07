; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_get_hw_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_get_hw_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sxgbe_priv_data = type { i32, %struct.TYPE_4__*, %struct.sxgbe_hw_features }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32)* }
%struct.sxgbe_hw_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sxgbe_priv_data*)* @sxgbe_get_hw_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sxgbe_get_hw_features(%struct.sxgbe_priv_data* %0) #0 {
  %2 = alloca %struct.sxgbe_priv_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sxgbe_hw_features*, align 8
  store %struct.sxgbe_priv_data* %0, %struct.sxgbe_priv_data** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %6 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %5, i32 0, i32 2
  store %struct.sxgbe_hw_features* %6, %struct.sxgbe_hw_features** %4, align 8
  %7 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %8 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (i32, i32)*, i32 (i32, i32)** %12, align 8
  %14 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %15 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 %13(i32 %16, i32 0)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @SXGBE_HW_FEAT_PMT_TEMOTE_WOP(i32 %21)
  %23 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %24 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %23, i32 0, i32 24
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @SXGBE_HW_FEAT_PMT_MAGIC_PKT(i32 %25)
  %27 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %28 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %27, i32 0, i32 23
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @SXGBE_HW_FEAT_IEEE1500_2008(i32 %29)
  %31 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %32 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %31, i32 0, i32 22
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @SXGBE_HW_FEAT_TX_CSUM_OFFLOAD(i32 %33)
  %35 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %36 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %35, i32 0, i32 21
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @SXGBE_HW_FEAT_RX_CSUM_OFFLOAD(i32 %37)
  %39 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %40 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %39, i32 0, i32 20
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @SXGBE_HW_FEAT_MACADDR_COUNT(i32 %41)
  %43 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %44 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %43, i32 0, i32 19
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @SXGBE_HW_FEAT_TSTMAP_SRC(i32 %45)
  %47 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %48 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %47, i32 0, i32 18
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @SXGBE_HW_FEAT_SRCADDR_VLAN(i32 %49)
  %51 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %52 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %51, i32 0, i32 17
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @SXGBE_HW_FEAT_EEE(i32 %53)
  %55 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %56 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %55, i32 0, i32 16
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %20, %1
  %58 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %59 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32 (i32, i32)*, i32 (i32, i32)** %63, align 8
  %65 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %66 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 %64(i32 %67, i32 1)
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %112

71:                                               ; preds = %57
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @SXGBE_HW_FEAT_RX_FIFO_SIZE(i32 %72)
  %74 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %75 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %74, i32 0, i32 15
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %3, align 4
  %77 = call i8* @SXGBE_HW_FEAT_TX_FIFO_SIZE(i32 %76)
  %78 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %79 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %78, i32 0, i32 14
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* %3, align 4
  %81 = call i8* @SXGBE_HW_FEAT_TX_FIFO_SIZE(i32 %80)
  %82 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %83 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %82, i32 0, i32 13
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @SXGBE_HW_FEAT_DCB(i32 %84)
  %86 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %87 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %86, i32 0, i32 12
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @SXGBE_HW_FEAT_SPLIT_HDR(i32 %88)
  %90 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %91 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %90, i32 0, i32 11
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @SXGBE_HW_FEAT_TSO(i32 %92)
  %94 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %95 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %94, i32 0, i32 10
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @SXGBE_HW_FEAT_DEBUG_MEM_IFACE(i32 %96)
  %98 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %99 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %98, i32 0, i32 9
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @SXGBE_HW_FEAT_RSS(i32 %100)
  %102 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %103 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %102, i32 0, i32 8
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @SXGBE_HW_FEAT_HASH_TABLE_SIZE(i32 %104)
  %106 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %107 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %106, i32 0, i32 7
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @SXGBE_HW_FEAT_L3L4_FILTER_NUM(i32 %108)
  %110 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %111 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %71, %57
  %113 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %114 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32 (i32, i32)*, i32 (i32, i32)** %118, align 8
  %120 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %121 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 %119(i32 %122, i32 2)
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* %3, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %151

126:                                              ; preds = %112
  %127 = load i32, i32* %3, align 4
  %128 = call i32 @SXGBE_HW_FEAT_RX_MTL_QUEUES(i32 %127)
  %129 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %130 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %129, i32 0, i32 5
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @SXGBE_HW_FEAT_TX_MTL_QUEUES(i32 %131)
  %133 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %134 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* %3, align 4
  %136 = call i32 @SXGBE_HW_FEAT_RX_DMA_CHANNELS(i32 %135)
  %137 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %138 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @SXGBE_HW_FEAT_TX_DMA_CHANNELS(i32 %139)
  %141 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %142 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @SXGBE_HW_FEAT_PPS_OUTPUTS(i32 %143)
  %145 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %146 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* %3, align 4
  %148 = call i32 @SXGBE_HW_FEAT_AUX_SNAPSHOTS(i32 %147)
  %149 = load %struct.sxgbe_hw_features*, %struct.sxgbe_hw_features** %4, align 8
  %150 = getelementptr inbounds %struct.sxgbe_hw_features, %struct.sxgbe_hw_features* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  br label %151

151:                                              ; preds = %126, %112
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @SXGBE_HW_FEAT_PMT_TEMOTE_WOP(i32) #1

declare dso_local i32 @SXGBE_HW_FEAT_PMT_MAGIC_PKT(i32) #1

declare dso_local i32 @SXGBE_HW_FEAT_IEEE1500_2008(i32) #1

declare dso_local i32 @SXGBE_HW_FEAT_TX_CSUM_OFFLOAD(i32) #1

declare dso_local i32 @SXGBE_HW_FEAT_RX_CSUM_OFFLOAD(i32) #1

declare dso_local i32 @SXGBE_HW_FEAT_MACADDR_COUNT(i32) #1

declare dso_local i32 @SXGBE_HW_FEAT_TSTMAP_SRC(i32) #1

declare dso_local i32 @SXGBE_HW_FEAT_SRCADDR_VLAN(i32) #1

declare dso_local i32 @SXGBE_HW_FEAT_EEE(i32) #1

declare dso_local i32 @SXGBE_HW_FEAT_RX_FIFO_SIZE(i32) #1

declare dso_local i8* @SXGBE_HW_FEAT_TX_FIFO_SIZE(i32) #1

declare dso_local i32 @SXGBE_HW_FEAT_DCB(i32) #1

declare dso_local i32 @SXGBE_HW_FEAT_SPLIT_HDR(i32) #1

declare dso_local i32 @SXGBE_HW_FEAT_TSO(i32) #1

declare dso_local i32 @SXGBE_HW_FEAT_DEBUG_MEM_IFACE(i32) #1

declare dso_local i32 @SXGBE_HW_FEAT_RSS(i32) #1

declare dso_local i32 @SXGBE_HW_FEAT_HASH_TABLE_SIZE(i32) #1

declare dso_local i32 @SXGBE_HW_FEAT_L3L4_FILTER_NUM(i32) #1

declare dso_local i32 @SXGBE_HW_FEAT_RX_MTL_QUEUES(i32) #1

declare dso_local i32 @SXGBE_HW_FEAT_TX_MTL_QUEUES(i32) #1

declare dso_local i32 @SXGBE_HW_FEAT_RX_DMA_CHANNELS(i32) #1

declare dso_local i32 @SXGBE_HW_FEAT_TX_DMA_CHANNELS(i32) #1

declare dso_local i32 @SXGBE_HW_FEAT_PPS_OUTPUTS(i32) #1

declare dso_local i32 @SXGBE_HW_FEAT_AUX_SNAPSHOTS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
