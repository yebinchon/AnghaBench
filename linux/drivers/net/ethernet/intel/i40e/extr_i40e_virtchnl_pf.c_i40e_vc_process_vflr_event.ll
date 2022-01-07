; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_process_vflr_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_process_vflr_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, %struct.i40e_vf*, i32, %struct.i40e_hw }
%struct.i40e_vf = type { i32 }
%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@__I40E_VFLR_EVENT_PENDING = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_VFLR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_vc_process_vflr_event(%struct.i40e_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_vf*, align 8
  %9 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %3, align 8
  %10 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %11 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %10, i32 0, i32 3
  store %struct.i40e_hw* %11, %struct.i40e_hw** %4, align 8
  %12 = load i32, i32* @__I40E_VFLR_EVENT_PENDING, align 4
  %13 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %14 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @test_bit(i32 %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %81

19:                                               ; preds = %1
  %20 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %21 = load i32, i32* @I40E_PFINT_ICR0_ENA, align 4
  %22 = call i32 @rd32(%struct.i40e_hw* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @I40E_PFINT_ICR0_ENA_VFLR_MASK, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %27 = load i32, i32* @I40E_PFINT_ICR0_ENA, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @wr32(%struct.i40e_hw* %26, i32 %27, i32 %28)
  %30 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %31 = call i32 @i40e_flush(%struct.i40e_hw* %30)
  %32 = load i32, i32* @__I40E_VFLR_EVENT_PENDING, align 4
  %33 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %34 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @clear_bit(i32 %32, i32 %35)
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %77, %19
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %40 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %80

43:                                               ; preds = %37
  %44 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %45 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %47, %48
  %50 = sdiv i32 %49, 32
  store i32 %50, i32* %6, align 4
  %51 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %52 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %54, %55
  %57 = srem i32 %56, 32
  store i32 %57, i32* %7, align 4
  %58 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %59 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %58, i32 0, i32 1
  %60 = load %struct.i40e_vf*, %struct.i40e_vf** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %60, i64 %62
  store %struct.i40e_vf* %63, %struct.i40e_vf** %8, align 8
  %64 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @I40E_GLGEN_VFLRSTAT(i32 %65)
  %67 = call i32 @rd32(%struct.i40e_hw* %64, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @BIT(i32 %69)
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %43
  %74 = load %struct.i40e_vf*, %struct.i40e_vf** %8, align 8
  %75 = call i32 @i40e_reset_vf(%struct.i40e_vf* %74, i32 1)
  br label %76

76:                                               ; preds = %73, %43
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %37

80:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %18
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @i40e_flush(%struct.i40e_hw*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @I40E_GLGEN_VFLRSTAT(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @i40e_reset_vf(%struct.i40e_vf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
