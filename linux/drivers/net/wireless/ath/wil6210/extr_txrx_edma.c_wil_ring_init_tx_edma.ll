; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_ring_init_tx_edma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_ring_init_tx_edma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { i32 }
%struct.wil6210_priv = type { i32**, i32, i32, i32, %struct.wil_ring_tx_data*, %struct.wil_ring* }
%struct.wil_ring_tx_data = type { i32, i32, i64 }
%struct.wil_ring = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"init TX ring: ring_id=%u, cid=%u, tid=%u, sring_id=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"WMI_TX_DESC_RING_ADD_CMD failed\0A\00", align 1
@agg_wsize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_vif*, i32, i32, i32, i32)* @wil_ring_init_tx_edma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_ring_init_tx_edma(%struct.wil6210_vif* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wil6210_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wil6210_priv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.wil_ring*, align 8
  %15 = alloca %struct.wil_ring_tx_data*, align 8
  store %struct.wil6210_vif* %0, %struct.wil6210_vif** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.wil6210_vif*, %struct.wil6210_vif** %7, align 8
  %17 = call %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif* %16)
  store %struct.wil6210_priv* %17, %struct.wil6210_priv** %12, align 8
  %18 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %19 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %18, i32 0, i32 5
  %20 = load %struct.wil_ring*, %struct.wil_ring** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %20, i64 %22
  store %struct.wil_ring* %23, %struct.wil_ring** %14, align 8
  %24 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %25 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %24, i32 0, i32 4
  %26 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %26, i64 %28
  store %struct.wil_ring_tx_data* %29, %struct.wil_ring_tx_data** %15, align 8
  %30 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %31 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %30, i32 0, i32 3
  %32 = call i32 @lockdep_assert_held(i32* %31)
  %33 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %38 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %33, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %36, i32 %39)
  %41 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %15, align 8
  %42 = call i32 @wil_tx_data_init(%struct.wil_ring_tx_data* %41)
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.wil_ring*, %struct.wil_ring** %14, align 8
  %45 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %47 = load %struct.wil_ring*, %struct.wil_ring** %14, align 8
  %48 = call i32 @wil_ring_alloc_desc_ring(%struct.wil6210_priv* %46, %struct.wil_ring* %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %5
  br label %136

52:                                               ; preds = %5
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %55 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %53, i32* %61, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %64 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %63, i32 0, i32 0
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 %62, i32* %70, align 4
  %71 = load %struct.wil6210_vif*, %struct.wil6210_vif** %7, align 8
  %72 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %52
  %76 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %15, align 8
  %77 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %75, %52
  %79 = load %struct.wil6210_vif*, %struct.wil6210_vif** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @wil_wmi_tx_desc_ring_add(%struct.wil6210_vif* %79, i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %88 = call i32 @wil_err(%struct.wil6210_priv* %87, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %103

89:                                               ; preds = %78
  %90 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %15, align 8
  %91 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load i64, i64* @agg_wsize, align 8
  %96 = icmp sge i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i64, i64* @agg_wsize, align 8
  %101 = call i32 @wil_addba_tx_request(%struct.wil6210_priv* %98, i32 %99, i64 %100)
  br label %102

102:                                              ; preds = %97, %94, %89
  store i32 0, i32* %6, align 4
  br label %138

103:                                              ; preds = %86
  %104 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %15, align 8
  %105 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %104, i32 0, i32 1
  %106 = call i32 @spin_lock_bh(i32* %105)
  %107 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %15, align 8
  %108 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  %109 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %15, align 8
  %110 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %109, i32 0, i32 2
  store i64 0, i64* %110, align 8
  %111 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %15, align 8
  %112 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %111, i32 0, i32 1
  %113 = call i32 @spin_unlock_bh(i32* %112)
  %114 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %115 = load %struct.wil_ring*, %struct.wil_ring** %14, align 8
  %116 = call i32 @wil_ring_free_edma(%struct.wil6210_priv* %114, %struct.wil_ring* %115)
  %117 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %118 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %121 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %120, i32 0, i32 0
  %122 = load i32**, i32*** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 %119, i32* %127, align 4
  %128 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %129 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %128, i32 0, i32 0
  %130 = load i32**, i32*** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32*, i32** %130, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  store i32 0, i32* %135, align 4
  br label %136

136:                                              ; preds = %103, %51
  %137 = load i32, i32* %13, align 4
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %136, %102
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @wil_tx_data_init(%struct.wil_ring_tx_data*) #1

declare dso_local i32 @wil_ring_alloc_desc_ring(%struct.wil6210_priv*, %struct.wil_ring*) #1

declare dso_local i32 @wil_wmi_tx_desc_ring_add(%struct.wil6210_vif*, i32, i32, i32) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_addba_tx_request(%struct.wil6210_priv*, i32, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @wil_ring_free_edma(%struct.wil6210_priv*, %struct.wil_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
