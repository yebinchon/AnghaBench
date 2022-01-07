; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_detect_recover_hung.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_detect_recover_hung.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_vsi = type { %struct.TYPE_4__*, %struct.net_device*, i32 }
%struct.TYPE_4__ = type { i32, %struct.iavf_ring* }
%struct.iavf_ring = type { %struct.TYPE_6__, i32, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.net_device = type { i32 }

@__IAVF_VSI_DOWN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iavf_detect_recover_hung(%struct.iavf_vsi* %0) #0 {
  %2 = alloca %struct.iavf_vsi*, align 8
  %3 = alloca %struct.iavf_ring*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iavf_vsi* %0, %struct.iavf_vsi** %2, align 8
  store %struct.iavf_ring* null, %struct.iavf_ring** %3, align 8
  %7 = load %struct.iavf_vsi*, %struct.iavf_vsi** %2, align 8
  %8 = icmp ne %struct.iavf_vsi* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %91

10:                                               ; preds = %1
  %11 = load i32, i32* @__IAVF_VSI_DOWN, align 4
  %12 = load %struct.iavf_vsi*, %struct.iavf_vsi** %2, align 8
  %13 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @test_bit(i32 %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %91

18:                                               ; preds = %10
  %19 = load %struct.iavf_vsi*, %struct.iavf_vsi** %2, align 8
  %20 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %19, i32 0, i32 1
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %4, align 8
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = icmp ne %struct.net_device* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %91

25:                                               ; preds = %18
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @netif_carrier_ok(%struct.net_device* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %91

30:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %88, %30
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.iavf_vsi*, %struct.iavf_vsi** %2, align 8
  %34 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %32, %37
  br i1 %38, label %39, label %91

39:                                               ; preds = %31
  %40 = load %struct.iavf_vsi*, %struct.iavf_vsi** %2, align 8
  %41 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.iavf_ring*, %struct.iavf_ring** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %44, i64 %46
  store %struct.iavf_ring* %47, %struct.iavf_ring** %3, align 8
  %48 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %49 = icmp ne %struct.iavf_ring* %48, null
  br i1 %49, label %50, label %87

50:                                               ; preds = %39
  %51 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %52 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %87

55:                                               ; preds = %50
  %56 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %57 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @INT_MAX, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %6, align 4
  %62 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %63 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %55
  %69 = load %struct.iavf_vsi*, %struct.iavf_vsi** %2, align 8
  %70 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %71 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @iavf_force_wb(%struct.iavf_vsi* %69, i32 %72)
  br label %88

74:                                               ; preds = %55
  %75 = call i32 (...) @smp_rmb()
  %76 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %77 = call i64 @iavf_get_tx_pending(%struct.iavf_ring* %76, i32 1)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %6, align 4
  br label %82

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ -1, %81 ]
  %84 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %85 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  br label %87

87:                                               ; preds = %82, %50, %39
  br label %88

88:                                               ; preds = %87, %68
  %89 = load i32, i32* %5, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %31

91:                                               ; preds = %9, %17, %24, %29, %31
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @iavf_force_wb(%struct.iavf_vsi*, i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @iavf_get_tx_pending(%struct.iavf_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
