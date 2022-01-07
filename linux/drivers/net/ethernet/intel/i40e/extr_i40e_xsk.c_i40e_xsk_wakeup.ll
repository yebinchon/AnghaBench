; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_xsk.c_i40e_xsk_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_xsk.c_i40e_xsk_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { i64, %struct.i40e_ring**, i32 }
%struct.i40e_ring = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@__I40E_VSI_DOWN = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_xsk_wakeup(%struct.net_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i40e_netdev_priv*, align 8
  %9 = alloca %struct.i40e_vsi*, align 8
  %10 = alloca %struct.i40e_ring*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.i40e_netdev_priv* %12, %struct.i40e_netdev_priv** %8, align 8
  %13 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %8, align 8
  %14 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %13, i32 0, i32 0
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %14, align 8
  store %struct.i40e_vsi* %15, %struct.i40e_vsi** %9, align 8
  %16 = load i32, i32* @__I40E_VSI_DOWN, align 4
  %17 = load %struct.i40e_vsi*, %struct.i40e_vsi** %9, align 8
  %18 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @test_bit(i32 %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ENETDOWN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %74

25:                                               ; preds = %3
  %26 = load %struct.i40e_vsi*, %struct.i40e_vsi** %9, align 8
  %27 = call i32 @i40e_enabled_xdp_vsi(%struct.i40e_vsi* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %74

32:                                               ; preds = %25
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.i40e_vsi*, %struct.i40e_vsi** %9, align 8
  %35 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp uge i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @ENXIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %74

41:                                               ; preds = %32
  %42 = load %struct.i40e_vsi*, %struct.i40e_vsi** %9, align 8
  %43 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %42, i32 0, i32 1
  %44 = load %struct.i40e_ring**, %struct.i40e_ring*** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %44, i64 %45
  %47 = load %struct.i40e_ring*, %struct.i40e_ring** %46, align 8
  %48 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %41
  %52 = load i32, i32* @ENXIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %74

54:                                               ; preds = %41
  %55 = load %struct.i40e_vsi*, %struct.i40e_vsi** %9, align 8
  %56 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %55, i32 0, i32 1
  %57 = load %struct.i40e_ring**, %struct.i40e_ring*** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %57, i64 %58
  %60 = load %struct.i40e_ring*, %struct.i40e_ring** %59, align 8
  store %struct.i40e_ring* %60, %struct.i40e_ring** %10, align 8
  %61 = load %struct.i40e_ring*, %struct.i40e_ring** %10, align 8
  %62 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @napi_if_scheduled_mark_missed(i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %54
  %68 = load %struct.i40e_vsi*, %struct.i40e_vsi** %9, align 8
  %69 = load %struct.i40e_ring*, %struct.i40e_ring** %10, align 8
  %70 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = call i32 @i40e_force_wb(%struct.i40e_vsi* %68, %struct.TYPE_2__* %71)
  br label %73

73:                                               ; preds = %67, %54
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %51, %38, %29, %22
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @i40e_enabled_xdp_vsi(%struct.i40e_vsi*) #1

declare dso_local i32 @napi_if_scheduled_mark_missed(i32*) #1

declare dso_local i32 @i40e_force_wb(%struct.i40e_vsi*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
