; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_setup_tx_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_setup_tx_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_ring = type { i32, i32, %struct.ice_vsi* }
%struct.ice_vsi = type { i32, i32, i64, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ice_hw }
%struct.ice_hw = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.ice_tlan_ctx = type { i32, i8*, i32, i8*, i32, i32, i64, i32, i32, i32 }

@ICE_TLAN_CTX_BASE_S = common dso_local global i32 0, align 4
@ICE_TLAN_CTX_VMVF_TYPE_PF = common dso_local global i32 0, align 4
@ICE_TLAN_CTX_VMVF_TYPE_VF = common dso_local global i32 0, align 4
@ICE_TX_LEGACY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_ring*, %struct.ice_tlan_ctx*, i32)* @ice_setup_tx_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_setup_tx_ctx(%struct.ice_ring* %0, %struct.ice_tlan_ctx* %1, i32 %2) #0 {
  %4 = alloca %struct.ice_ring*, align 8
  %5 = alloca %struct.ice_tlan_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ice_vsi*, align 8
  %8 = alloca %struct.ice_hw*, align 8
  store %struct.ice_ring* %0, %struct.ice_ring** %4, align 8
  store %struct.ice_tlan_ctx* %1, %struct.ice_tlan_ctx** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %10 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %9, i32 0, i32 2
  %11 = load %struct.ice_vsi*, %struct.ice_vsi** %10, align 8
  store %struct.ice_vsi* %11, %struct.ice_vsi** %7, align 8
  %12 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %13 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %12, i32 0, i32 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.ice_hw* %15, %struct.ice_hw** %8, align 8
  %16 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %17 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ICE_TLAN_CTX_BASE_S, align 4
  %20 = ashr i32 %18, %19
  %21 = load %struct.ice_tlan_ctx*, %struct.ice_tlan_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.ice_tlan_ctx, %struct.ice_tlan_ctx* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %24 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %23, i32 0, i32 3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ice_tlan_ctx*, %struct.ice_tlan_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.ice_tlan_ctx, %struct.ice_tlan_ctx* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %31 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ice_tlan_ctx*, %struct.ice_tlan_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.ice_tlan_ctx, %struct.ice_tlan_ctx* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ice_tlan_ctx*, %struct.ice_tlan_ctx** %5, align 8
  %36 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %37 = call i32 @ice_set_cgd_num(%struct.ice_tlan_ctx* %35, %struct.ice_ring* %36)
  %38 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %39 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ice_tlan_ctx*, %struct.ice_tlan_ctx** %5, align 8
  %42 = getelementptr inbounds %struct.ice_tlan_ctx, %struct.ice_tlan_ctx* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %44 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %64 [
    i32 130, label %46
    i32 129, label %46
    i32 128, label %50
  ]

46:                                               ; preds = %3, %3
  %47 = load i32, i32* @ICE_TLAN_CTX_VMVF_TYPE_PF, align 4
  %48 = load %struct.ice_tlan_ctx*, %struct.ice_tlan_ctx** %5, align 8
  %49 = getelementptr inbounds %struct.ice_tlan_ctx, %struct.ice_tlan_ctx* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  br label %65

50:                                               ; preds = %3
  %51 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %52 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %56 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = load %struct.ice_tlan_ctx*, %struct.ice_tlan_ctx** %5, align 8
  %60 = getelementptr inbounds %struct.ice_tlan_ctx, %struct.ice_tlan_ctx* %59, i32 0, i32 6
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* @ICE_TLAN_CTX_VMVF_TYPE_VF, align 4
  %62 = load %struct.ice_tlan_ctx*, %struct.ice_tlan_ctx** %5, align 8
  %63 = getelementptr inbounds %struct.ice_tlan_ctx, %struct.ice_tlan_ctx* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  br label %65

64:                                               ; preds = %3
  br label %82

65:                                               ; preds = %50, %46
  %66 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %67 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %68 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ice_get_hw_vsi_num(%struct.ice_hw* %66, i32 %69)
  %71 = load %struct.ice_tlan_ctx*, %struct.ice_tlan_ctx** %5, align 8
  %72 = getelementptr inbounds %struct.ice_tlan_ctx, %struct.ice_tlan_ctx* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load i8*, i8** @ICE_TX_LEGACY, align 8
  %74 = load %struct.ice_tlan_ctx*, %struct.ice_tlan_ctx** %5, align 8
  %75 = getelementptr inbounds %struct.ice_tlan_ctx, %struct.ice_tlan_ctx* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.ice_tlan_ctx*, %struct.ice_tlan_ctx** %5, align 8
  %78 = getelementptr inbounds %struct.ice_tlan_ctx, %struct.ice_tlan_ctx* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load i8*, i8** @ICE_TX_LEGACY, align 8
  %80 = load %struct.ice_tlan_ctx*, %struct.ice_tlan_ctx** %5, align 8
  %81 = getelementptr inbounds %struct.ice_tlan_ctx, %struct.ice_tlan_ctx* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %65, %64
  ret void
}

declare dso_local i32 @ice_set_cgd_num(%struct.ice_tlan_ctx*, %struct.ice_ring*) #1

declare dso_local i32 @ice_get_hw_vsi_num(%struct.ice_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
