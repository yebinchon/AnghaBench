; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_reset_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_reset_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i64, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { i32, i32*, %struct.TYPE_2__*, %struct.i40e_hw }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_hw = type { i32 }

@__I40E_VF_DISABLE = common dso_local global i32 0, align 4
@I40E_VPGEN_VFRSTAT_VFRD_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"VF reset check timeout on VF %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_reset_vf(%struct.i40e_vf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_vf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %12 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %11, i32 0, i32 2
  %13 = load %struct.i40e_pf*, %struct.i40e_pf** %12, align 8
  store %struct.i40e_pf* %13, %struct.i40e_pf** %6, align 8
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %15 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %14, i32 0, i32 3
  store %struct.i40e_hw* %15, %struct.i40e_hw** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* @__I40E_VF_DISABLE, align 4
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %18 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @test_and_set_bit(i32 %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %90

23:                                               ; preds = %2
  %24 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @i40e_trigger_vf_reset(%struct.i40e_vf* %24, i32 %25)
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %44, %23
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 10
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = call i32 @usleep_range(i32 10000, i32 20000)
  %32 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %33 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %34 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @I40E_VPGEN_VFRSTAT(i32 %35)
  %37 = call i32 @rd32(%struct.i40e_hw* %32, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @I40E_VPGEN_VFRSTAT_VFRD_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store i32 1, i32* %8, align 4
  br label %47

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %27

47:                                               ; preds = %42, %27
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @usleep_range(i32 10000, i32 20000)
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %52
  %56 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %57 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %61 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %55, %52
  %65 = call i32 @usleep_range(i32 10000, i32 20000)
  %66 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %67 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %72 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %75 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @i40e_vsi_stop_rings(i32 %78)
  br label %80

80:                                               ; preds = %70, %64
  %81 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %82 = call i32 @i40e_cleanup_reset_vf(%struct.i40e_vf* %81)
  %83 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %84 = call i32 @i40e_flush(%struct.i40e_hw* %83)
  %85 = load i32, i32* @__I40E_VF_DISABLE, align 4
  %86 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %87 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @clear_bit(i32 %85, i32 %88)
  store i32 1, i32* %3, align 4
  br label %90

90:                                               ; preds = %80, %22
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @i40e_trigger_vf_reset(%struct.i40e_vf*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_VPGEN_VFRSTAT(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @i40e_vsi_stop_rings(i32) #1

declare dso_local i32 @i40e_cleanup_reset_vf(%struct.i40e_vf*) #1

declare dso_local i32 @i40e_flush(%struct.i40e_hw*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
