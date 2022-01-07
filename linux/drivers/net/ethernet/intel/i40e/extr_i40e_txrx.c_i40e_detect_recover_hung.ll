; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_detect_recover_hung.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_detect_recover_hung.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, %struct.i40e_ring**, %struct.net_device*, i32 }
%struct.i40e_ring = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }

@__I40E_VSI_DOWN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_detect_recover_hung(%struct.i40e_vsi* %0) #0 {
  %2 = alloca %struct.i40e_vsi*, align 8
  %3 = alloca %struct.i40e_ring*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %2, align 8
  store %struct.i40e_ring* null, %struct.i40e_ring** %3, align 8
  %7 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %8 = icmp ne %struct.i40e_vsi* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %88

10:                                               ; preds = %1
  %11 = load i32, i32* @__I40E_VSI_DOWN, align 4
  %12 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %13 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @test_bit(i32 %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %88

18:                                               ; preds = %10
  %19 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %20 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %19, i32 0, i32 2
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %4, align 8
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = icmp ne %struct.net_device* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %88

25:                                               ; preds = %18
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @netif_carrier_ok(%struct.net_device* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %88

30:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %85, %30
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %34 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %88

37:                                               ; preds = %31
  %38 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %39 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %38, i32 0, i32 1
  %40 = load %struct.i40e_ring**, %struct.i40e_ring*** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %40, i64 %42
  %44 = load %struct.i40e_ring*, %struct.i40e_ring** %43, align 8
  store %struct.i40e_ring* %44, %struct.i40e_ring** %3, align 8
  %45 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %46 = icmp ne %struct.i40e_ring* %45, null
  br i1 %46, label %47, label %84

47:                                               ; preds = %37
  %48 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %49 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %84

52:                                               ; preds = %47
  %53 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %54 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @INT_MAX, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %6, align 4
  %59 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %60 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %52
  %66 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %67 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %68 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @i40e_force_wb(%struct.i40e_vsi* %66, i32 %69)
  br label %85

71:                                               ; preds = %52
  %72 = call i32 (...) @smp_rmb()
  %73 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %74 = call i64 @i40e_get_tx_pending(%struct.i40e_ring* %73, i32 1)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %6, align 4
  br label %79

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ -1, %78 ]
  %81 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %82 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  br label %84

84:                                               ; preds = %79, %47, %37
  br label %85

85:                                               ; preds = %84, %65
  %86 = load i32, i32* %5, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %31

88:                                               ; preds = %9, %17, %24, %29, %31
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @i40e_force_wb(%struct.i40e_vsi*, i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @i40e_get_tx_pending(%struct.i40e_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
