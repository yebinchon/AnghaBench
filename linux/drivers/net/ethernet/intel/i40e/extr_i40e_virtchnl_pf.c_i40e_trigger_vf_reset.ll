; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_trigger_vf_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_trigger_vf_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i32, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_4__*, %struct.i40e_hw }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@I40E_VF_STATE_INIT = common dso_local global i32 0, align 4
@I40E_VPGEN_VFRTRIG_VFSWR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"VF %d PCI transactions stuck\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vf*, i32)* @i40e_trigger_vf_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_trigger_vf_reset(%struct.i40e_vf* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_vf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_pf*, align 8
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %11 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %10, i32 0, i32 2
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  store %struct.i40e_pf* %12, %struct.i40e_pf** %5, align 8
  %13 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %14 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %13, i32 0, i32 1
  store %struct.i40e_hw* %14, %struct.i40e_hw** %6, align 8
  %15 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %16 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %17 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %16, i32 0, i32 1
  %18 = call i32 @clear_bit(i32 %15, i32* %17)
  %19 = load i32, i32* @I40E_VF_STATE_INIT, align 4
  %20 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %21 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %20, i32 0, i32 1
  %22 = call i32 @clear_bit(i32 %19, i32* %21)
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %2
  %26 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %27 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %28 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @I40E_VPGEN_VFRTRIG(i32 %29)
  %31 = call i32 @rd32(%struct.i40e_hw* %26, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @I40E_VPGEN_VFRTRIG_VFSWR_MASK, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %36 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %37 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @I40E_VPGEN_VFRTRIG(i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @wr32(%struct.i40e_hw* %35, i32 %39, i32 %40)
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %43 = call i32 @i40e_flush(%struct.i40e_hw* %42)
  br label %44

44:                                               ; preds = %25, %2
  %45 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %46 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %50 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %48, %51
  %53 = sdiv i32 %52, 32
  store i32 %53, i32* %8, align 4
  %54 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %55 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %59 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %57, %60
  %62 = srem i32 %61, 32
  store i32 %62, i32* %9, align 4
  %63 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @I40E_GLGEN_VFLRSTAT(i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @BIT(i32 %66)
  %68 = call i32 @wr32(%struct.i40e_hw* %63, i32 %65, i32 %67)
  %69 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %70 = call i32 @i40e_flush(%struct.i40e_hw* %69)
  %71 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %72 = call i64 @i40e_quiesce_vf_pci(%struct.i40e_vf* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %44
  %75 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %76 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %80 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %74, %44
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_VPGEN_VFRTRIG(i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @i40e_flush(%struct.i40e_hw*) #1

declare dso_local i32 @I40E_GLGEN_VFLRSTAT(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @i40e_quiesce_vf_pci(%struct.i40e_vf*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
