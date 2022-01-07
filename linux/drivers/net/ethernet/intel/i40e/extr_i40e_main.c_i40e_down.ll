; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i64, i32, i32*, i32*, i32*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@I40E_VSI_MAIN = common dso_local global i64 0, align 8
@I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_down(%struct.i40e_vsi* %0) #0 {
  %2 = alloca %struct.i40e_vsi*, align 8
  %3 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %2, align 8
  %4 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %5 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %4, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %10 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @netif_carrier_off(i64 %11)
  %13 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %14 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @netif_tx_disable(i64 %15)
  br label %17

17:                                               ; preds = %8, %1
  %18 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %19 = call i32 @i40e_vsi_disable_irq(%struct.i40e_vsi* %18)
  %20 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %21 = call i32 @i40e_vsi_stop_rings(%struct.i40e_vsi* %20)
  %22 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %23 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @I40E_VSI_MAIN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %17
  %28 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %29 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %28, i32 0, i32 5
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %38 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %37, i32 0, i32 5
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = call i32 @i40e_force_link_state(%struct.TYPE_2__* %39, i32 0)
  br label %41

41:                                               ; preds = %36, %27, %17
  %42 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %43 = call i32 @i40e_napi_disable_all(%struct.i40e_vsi* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %81, %41
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %47 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %84

50:                                               ; preds = %44
  %51 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %52 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @i40e_clean_tx_ring(i32 %57)
  %59 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %60 = call i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %50
  %63 = call i32 (...) @synchronize_rcu()
  %64 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %65 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @i40e_clean_tx_ring(i32 %70)
  br label %72

72:                                               ; preds = %62, %50
  %73 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %74 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @i40e_clean_rx_ring(i32 %79)
  br label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %44

84:                                               ; preds = %44
  ret void
}

declare dso_local i32 @netif_carrier_off(i64) #1

declare dso_local i32 @netif_tx_disable(i64) #1

declare dso_local i32 @i40e_vsi_disable_irq(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vsi_stop_rings(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_force_link_state(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @i40e_napi_disable_all(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_clean_tx_ring(i32) #1

declare dso_local i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @i40e_clean_rx_ring(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
