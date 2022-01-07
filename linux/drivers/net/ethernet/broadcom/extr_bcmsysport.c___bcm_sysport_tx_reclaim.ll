; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c___bcm_sysport_tx_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c___bcm_sysport_tx_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_priv = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.bcm_sysport_tx_ring = type { i32, i64, i32, i32, i32, i64, i32, %struct.bcm_sysport_cb*, %struct.TYPE_3__* }
%struct.bcm_sysport_cb = type { i32 }
%struct.TYPE_3__ = type { i32 }

@INTRL2_CPU_CLEAR = common dso_local global i32 0, align 4
@INTRL2_0_TDMA_MBDONE_SHIFT = common dso_local global i64 0, align 8
@RING_CONS_INDEX_SHIFT = common dso_local global i32 0, align 4
@RING_CONS_INDEX_MASK = common dso_local global i32 0, align 4
@tx_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"ring=%d old_c_index=%u c_index=%u txbds_ready=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"ring=%d c_index=%d pkts_compl=%d, bytes_compl=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_sysport_priv*, %struct.bcm_sysport_tx_ring*)* @__bcm_sysport_tx_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bcm_sysport_tx_reclaim(%struct.bcm_sysport_priv* %0, %struct.bcm_sysport_tx_ring* %1) #0 {
  %3 = alloca %struct.bcm_sysport_priv*, align 8
  %4 = alloca %struct.bcm_sysport_tx_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bcm_sysport_cb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bcm_sysport_priv* %0, %struct.bcm_sysport_priv** %3, align 8
  store %struct.bcm_sysport_tx_ring* %1, %struct.bcm_sysport_tx_ring** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %14 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %13, i32 0, i32 1
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %17 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %16, i32 0, i32 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %2
  %23 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %24 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %23, i32 0, i32 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %27 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @BIT(i64 %28)
  %30 = load i32, i32* @INTRL2_CPU_CLEAR, align 4
  %31 = call i32 @intrl2_1_writel(%struct.TYPE_3__* %25, i32 %29, i32 %30)
  br label %44

32:                                               ; preds = %2
  %33 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %34 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %33, i32 0, i32 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %37 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @INTRL2_0_TDMA_MBDONE_SHIFT, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @BIT(i64 %40)
  %42 = load i32, i32* @INTRL2_CPU_CLEAR, align 4
  %43 = call i32 @intrl2_0_writel(%struct.TYPE_3__* %35, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %32, %22
  %45 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %46 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %47 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @TDMA_DESC_RING_PROD_CONS_INDEX(i64 %48)
  %50 = call i32 @tdma_readl(%struct.bcm_sysport_priv* %45, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @RING_CONS_INDEX_SHIFT, align 4
  %53 = lshr i32 %51, %52
  %54 = load i32, i32* @RING_CONS_INDEX_MASK, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %58 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub i32 %56, %59
  %61 = load i32, i32* @RING_CONS_INDEX_MASK, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %10, align 4
  %63 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %64 = load i32, i32* @tx_done, align 4
  %65 = load %struct.net_device*, %struct.net_device** %7, align 8
  %66 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %67 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %70 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @netif_dbg(%struct.bcm_sysport_priv* %63, i32 %64, %struct.net_device* %65, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %68, i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %116, %44
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %117

79:                                               ; preds = %75
  %80 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %81 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %80, i32 0, i32 7
  %82 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %81, align 8
  %83 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %84 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.bcm_sysport_cb, %struct.bcm_sysport_cb* %82, i64 %85
  store %struct.bcm_sysport_cb* %86, %struct.bcm_sysport_cb** %9, align 8
  %87 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %88 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %9, align 8
  %89 = call i32 @bcm_sysport_tx_reclaim_one(%struct.bcm_sysport_tx_ring* %87, %struct.bcm_sysport_cb* %88, i32* %6, i32* %5)
  %90 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %91 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* %8, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %8, align 4
  %96 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %97 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %100 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = icmp ult i64 %98, %103
  %105 = zext i1 %104 to i32
  %106 = call i64 @likely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %79
  %109 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %110 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %110, align 8
  br label %116

113:                                              ; preds = %79
  %114 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %115 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %114, i32 0, i32 1
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %113, %108
  br label %75

117:                                              ; preds = %75
  %118 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %119 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %118, i32 0, i32 0
  %120 = call i32 @u64_stats_update_begin(i32* %119)
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %123 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = add i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %128 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = add i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %132 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %131, i32 0, i32 0
  %133 = call i32 @u64_stats_update_end(i32* %132)
  %134 = load i32, i32* %11, align 4
  %135 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %136 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %138 = load i32, i32* @tx_done, align 4
  %139 = load %struct.net_device*, %struct.net_device** %7, align 8
  %140 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %141 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %144 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @netif_dbg(%struct.bcm_sysport_priv* %137, i32 %138, %struct.net_device* %139, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %142, i32 %145, i32 %146, i32 %147)
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @intrl2_1_writel(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @intrl2_0_writel(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @tdma_readl(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @TDMA_DESC_RING_PROD_CONS_INDEX(i64) #1

declare dso_local i32 @netif_dbg(%struct.bcm_sysport_priv*, i32, %struct.net_device*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @bcm_sysport_tx_reclaim_one(%struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_cb*, i32*, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
