; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_cleanup_and_realloc_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_cleanup_and_realloc_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vf = type { i32, i64, i32, %struct.ice_pf* }
%struct.ice_pf = type { %struct.ice_hw }
%struct.ice_hw = type { i32 }

@VPGEN_VFRTRIG_VFSWR_M = common dso_local global i32 0, align 4
@ICE_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@ICE_VF_STATE_DIS = common dso_local global i32 0, align 4
@VIRTCHNL_VFR_VFACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_vf*)* @ice_cleanup_and_realloc_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_cleanup_and_realloc_vf(%struct.ice_vf* %0) #0 {
  %2 = alloca %struct.ice_vf*, align 8
  %3 = alloca %struct.ice_pf*, align 8
  %4 = alloca %struct.ice_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.ice_vf* %0, %struct.ice_vf** %2, align 8
  %6 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %7 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %6, i32 0, i32 3
  %8 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  store %struct.ice_pf* %8, %struct.ice_pf** %3, align 8
  %9 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %10 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %9, i32 0, i32 0
  store %struct.ice_hw* %10, %struct.ice_hw** %4, align 8
  %11 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %12 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %13 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @VPGEN_VFRTRIG(i32 %14)
  %16 = call i32 @rd32(%struct.ice_hw* %11, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @VPGEN_VFRTRIG_VFSWR_M, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %22 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %23 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @VPGEN_VFRTRIG(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @wr32(%struct.ice_hw* %21, i32 %25, i32 %26)
  %28 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %29 = call i32 @ice_alloc_vf_res(%struct.ice_vf* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %1
  %32 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %33 = call i32 @ice_ena_vf_mappings(%struct.ice_vf* %32)
  %34 = load i32, i32* @ICE_VF_STATE_ACTIVE, align 4
  %35 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %36 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @set_bit(i32 %34, i32 %37)
  %39 = load i32, i32* @ICE_VF_STATE_DIS, align 4
  %40 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %41 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @clear_bit(i32 %39, i32 %42)
  %44 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %45 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %31, %1
  %47 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %48 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %49 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @VFGEN_RSTAT(i32 %50)
  %52 = load i32, i32* @VIRTCHNL_VFR_VFACTIVE, align 4
  %53 = call i32 @wr32(%struct.ice_hw* %47, i32 %51, i32 %52)
  ret void
}

declare dso_local i32 @rd32(%struct.ice_hw*, i32) #1

declare dso_local i32 @VPGEN_VFRTRIG(i32) #1

declare dso_local i32 @wr32(%struct.ice_hw*, i32, i32) #1

declare dso_local i32 @ice_alloc_vf_res(%struct.ice_vf*) #1

declare dso_local i32 @ice_ena_vf_mappings(%struct.ice_vf*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @VFGEN_RSTAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
