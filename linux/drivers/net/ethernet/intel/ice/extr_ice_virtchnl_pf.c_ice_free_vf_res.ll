; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_free_vf_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_free_vf_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vf = type { i32, i32, i32, i64, i64, %struct.ice_pf* }
%struct.ice_pf = type { i32, i32, i32* }

@ICE_VF_STATE_INIT = common dso_local global i32 0, align 4
@GLINT_DYN_CTL_CLEARPBA_M = common dso_local global i32 0, align 4
@ICE_VF_STATE_MC_PROMISC = common dso_local global i32 0, align 4
@ICE_VF_STATE_UC_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_vf*)* @ice_free_vf_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_free_vf_res(%struct.ice_vf* %0) #0 {
  %2 = alloca %struct.ice_vf*, align 8
  %3 = alloca %struct.ice_pf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ice_vf* %0, %struct.ice_vf** %2, align 8
  %6 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %7 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %6, i32 0, i32 5
  %8 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  store %struct.ice_pf* %8, %struct.ice_pf** %3, align 8
  %9 = load i32, i32* @ICE_VF_STATE_INIT, align 4
  %10 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %11 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @clear_bit(i32 %9, i32 %12)
  %14 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %15 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %1
  %19 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %20 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %23 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ice_vsi_release(i32 %27)
  %29 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %30 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %32 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %34 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %18, %1
  %36 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %37 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %40 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %38, %41
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  %44 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %45 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %61, %35
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %53 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %52, i32 0, i32 1
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @GLINT_DYN_CTL(i32 %54)
  %56 = load i32, i32* @GLINT_DYN_CTL_CLEARPBA_M, align 4
  %57 = call i32 @wr32(i32* %53, i32 %55, i32 %56)
  %58 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %59 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %58, i32 0, i32 1
  %60 = call i32 @ice_flush(i32* %59)
  br label %61

61:                                               ; preds = %51
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %47

64:                                               ; preds = %47
  %65 = load i32, i32* @ICE_VF_STATE_MC_PROMISC, align 4
  %66 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %67 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @clear_bit(i32 %65, i32 %68)
  %70 = load i32, i32* @ICE_VF_STATE_UC_PROMISC, align 4
  %71 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %72 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @clear_bit(i32 %70, i32 %73)
  ret void
}

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @ice_vsi_release(i32) #1

declare dso_local i32 @wr32(i32*, i32, i32) #1

declare dso_local i32 @GLINT_DYN_CTL(i32) #1

declare dso_local i32 @ice_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
