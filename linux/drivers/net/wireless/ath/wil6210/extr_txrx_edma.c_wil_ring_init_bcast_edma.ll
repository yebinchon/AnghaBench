; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_ring_init_bcast_edma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_ring_init_bcast_edma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { i32 }
%struct.wil6210_priv = type { i64**, i32, i32, %struct.wil_ring_tx_data*, %struct.wil_ring* }
%struct.wil_ring_tx_data = type { i32, i32, i64 }
%struct.wil_ring = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"init bcast: ring_id=%d, sring_id=%d\0A\00", align 1
@WIL6210_MAX_CID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_vif*, i32, i32)* @wil_ring_init_bcast_edma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_ring_init_bcast_edma(%struct.wil6210_vif* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wil6210_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wil6210_priv*, align 8
  %9 = alloca %struct.wil_ring*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wil_ring_tx_data*, align 8
  store %struct.wil6210_vif* %0, %struct.wil6210_vif** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %13 = call %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif* %12)
  store %struct.wil6210_priv* %13, %struct.wil6210_priv** %8, align 8
  %14 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %15 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %14, i32 0, i32 4
  %16 = load %struct.wil_ring*, %struct.wil_ring** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %16, i64 %18
  store %struct.wil_ring* %19, %struct.wil_ring** %9, align 8
  %20 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %21 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %20, i32 0, i32 3
  %22 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %22, i64 %24
  store %struct.wil_ring_tx_data* %25, %struct.wil_ring_tx_data** %11, align 8
  %26 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %29 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %33 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %32, i32 0, i32 1
  %34 = call i32 @lockdep_assert_held(i32* %33)
  %35 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %11, align 8
  %36 = call i32 @wil_tx_data_init(%struct.wil_ring_tx_data* %35)
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %39 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %41 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %43 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %44 = call i32 @wil_ring_alloc_desc_ring(%struct.wil6210_priv* %42, %struct.wil_ring* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %3
  br label %95

48:                                               ; preds = %3
  %49 = load i64, i64* @WIL6210_MAX_CID, align 8
  %50 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %51 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %50, i32 0, i32 0
  %52 = load i64**, i64*** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64*, i64** %52, i64 %54
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  store i64 %49, i64* %57, align 8
  %58 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %59 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %58, i32 0, i32 0
  %60 = load i64**, i64*** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64*, i64** %60, i64 %62
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 1
  store i64 0, i64* %65, align 8
  %66 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %67 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %48
  %71 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %11, align 8
  %72 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %48
  %74 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @wil_wmi_bcast_desc_ring_add(%struct.wil6210_vif* %74, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %81

80:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %97

81:                                               ; preds = %79
  %82 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %11, align 8
  %83 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %82, i32 0, i32 1
  %84 = call i32 @spin_lock_bh(i32* %83)
  %85 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %11, align 8
  %86 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %11, align 8
  %88 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  %89 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %11, align 8
  %90 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %89, i32 0, i32 1
  %91 = call i32 @spin_unlock_bh(i32* %90)
  %92 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %93 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %94 = call i32 @wil_ring_free_edma(%struct.wil6210_priv* %92, %struct.wil_ring* %93)
  br label %95

95:                                               ; preds = %81, %47
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %80
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i32, i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @wil_tx_data_init(%struct.wil_ring_tx_data*) #1

declare dso_local i32 @wil_ring_alloc_desc_ring(%struct.wil6210_priv*, %struct.wil_ring*) #1

declare dso_local i32 @wil_wmi_bcast_desc_ring_add(%struct.wil6210_vif*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @wil_ring_free_edma(%struct.wil6210_priv*, %struct.wil_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
