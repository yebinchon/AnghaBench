; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_up_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_up_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i64, i64, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { i32, i32, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@I40E_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@__I40E_VSI_DOWN = common dso_local global i32 0, align 4
@I40E_AQ_LINK_UP = common dso_local global i32 0, align 4
@I40E_VSI_FDIR = common dso_local global i64 0, align 8
@__I40E_CLIENT_SERVICE_REQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*)* @i40e_up_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_up_complete(%struct.i40e_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  %6 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %7 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %6, i32 0, i32 3
  %8 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  store %struct.i40e_pf* %8, %struct.i40e_pf** %4, align 8
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %10 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @I40E_FLAG_MSIX_ENABLED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %17 = call i32 @i40e_vsi_configure_msix(%struct.i40e_vsi* %16)
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %20 = call i32 @i40e_configure_msi_and_legacy(%struct.i40e_vsi* %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %23 = call i32 @i40e_vsi_start_rings(%struct.i40e_vsi* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %84

28:                                               ; preds = %21
  %29 = load i32, i32* @__I40E_VSI_DOWN, align 4
  %30 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %31 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @clear_bit(i32 %29, i32 %32)
  %34 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %35 = call i32 @i40e_napi_enable_all(%struct.i40e_vsi* %34)
  %36 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %37 = call i32 @i40e_vsi_enable_irq(%struct.i40e_vsi* %36)
  %38 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %39 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @I40E_AQ_LINK_UP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %28
  %48 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %49 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %54 = call i32 @i40e_print_link_message(%struct.i40e_vsi* %53, i32 1)
  %55 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %56 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @netif_tx_start_all_queues(i64 %57)
  %59 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %60 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @netif_carrier_on(i64 %61)
  br label %63

63:                                               ; preds = %52, %47, %28
  %64 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %65 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @I40E_VSI_FDIR, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %71 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %70, i32 0, i32 3
  store i64 0, i64* %71, align 8
  %72 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %73 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %75 = call i32 @i40e_fdir_filter_restore(%struct.i40e_vsi* %74)
  br label %76

76:                                               ; preds = %69, %63
  %77 = load i32, i32* @__I40E_CLIENT_SERVICE_REQUESTED, align 4
  %78 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %79 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @set_bit(i32 %77, i32 %80)
  %82 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %83 = call i32 @i40e_service_event_schedule(%struct.i40e_pf* %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %76, %26
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @i40e_vsi_configure_msix(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_configure_msi_and_legacy(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vsi_start_rings(%struct.i40e_vsi*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @i40e_napi_enable_all(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vsi_enable_irq(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_print_link_message(%struct.i40e_vsi*, i32) #1

declare dso_local i32 @netif_tx_start_all_queues(i64) #1

declare dso_local i32 @netif_carrier_on(i64) #1

declare dso_local i32 @i40e_fdir_filter_restore(%struct.i40e_vsi*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @i40e_service_event_schedule(%struct.i40e_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
