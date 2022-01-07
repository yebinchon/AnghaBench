; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_cleanup_reset_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_cleanup_reset_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i32, i64, i32, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@I40E_VPGEN_VFRTRIG_VFSWR_MASK = common dso_local global i32 0, align 4
@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@I40E_VF_STATE_DISABLED = common dso_local global i32 0, align 4
@I40E_VF_STATE_PRE_ENABLE = common dso_local global i32 0, align 4
@VIRTCHNL_VFR_VFACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vf*)* @i40e_cleanup_reset_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_cleanup_reset_vf(%struct.i40e_vf* %0) #0 {
  %2 = alloca %struct.i40e_vf*, align 8
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %2, align 8
  %7 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %8 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %7, i32 0, i32 4
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  store %struct.i40e_pf* %9, %struct.i40e_pf** %3, align 8
  %10 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %11 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %10, i32 0, i32 0
  store %struct.i40e_hw* %11, %struct.i40e_hw** %4, align 8
  %12 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %13 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %14 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @i40e_config_vf_promiscuous_mode(%struct.i40e_vf* %12, i32 %15, i32 0, i32 0)
  %17 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %18 = call i32 @i40e_free_vf_res(%struct.i40e_vf* %17)
  %19 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %20 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %21 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @I40E_VPGEN_VFRTRIG(i32 %22)
  %24 = call i32 @rd32(%struct.i40e_hw* %19, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @I40E_VPGEN_VFRTRIG_VFSWR_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %30 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %31 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @I40E_VPGEN_VFRTRIG(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @wr32(%struct.i40e_hw* %29, i32 %33, i32 %34)
  %36 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %37 = call i32 @i40e_alloc_vf_res(%struct.i40e_vf* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %70, label %39

39:                                               ; preds = %1
  %40 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %41 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %44 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %42, %46
  store i32 %47, i32* %6, align 4
  %48 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %49 = call i32 @i40e_enable_vf_mappings(%struct.i40e_vf* %48)
  %50 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %51 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %52 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %51, i32 0, i32 2
  %53 = call i32 @set_bit(i32 %50, i32* %52)
  %54 = load i32, i32* @I40E_VF_STATE_DISABLED, align 4
  %55 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %56 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %55, i32 0, i32 2
  %57 = call i32 @clear_bit(i32 %54, i32* %56)
  %58 = load i32, i32* @I40E_VF_STATE_PRE_ENABLE, align 4
  %59 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %60 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %59, i32 0, i32 2
  %61 = call i32 @test_and_clear_bit(i32 %58, i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %39
  %64 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @i40e_notify_client_of_vf_reset(%struct.i40e_pf* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %39
  %68 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %69 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %67, %1
  %71 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %72 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %73 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @I40E_VFGEN_RSTAT1(i32 %74)
  %76 = load i32, i32* @VIRTCHNL_VFR_VFACTIVE, align 4
  %77 = call i32 @wr32(%struct.i40e_hw* %71, i32 %75, i32 %76)
  ret void
}

declare dso_local i32 @i40e_config_vf_promiscuous_mode(%struct.i40e_vf*, i32, i32, i32) #1

declare dso_local i32 @i40e_free_vf_res(%struct.i40e_vf*) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_VPGEN_VFRTRIG(i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @i40e_alloc_vf_res(%struct.i40e_vf*) #1

declare dso_local i32 @i40e_enable_vf_mappings(%struct.i40e_vf*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @i40e_notify_client_of_vf_reset(%struct.i40e_pf*, i32) #1

declare dso_local i32 @I40E_VFGEN_RSTAT1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
