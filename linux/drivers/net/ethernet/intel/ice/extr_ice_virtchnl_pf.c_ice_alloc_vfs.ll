; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_alloc_vfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_alloc_vfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { i32, i32*, %struct.TYPE_3__*, %struct.ice_vf*, i32, i32, %struct.ice_hw }
%struct.TYPE_3__ = type { i32 }
%struct.ice_vf = type { i32, i32, i32, i32, %struct.ice_pf* }
%struct.ice_hw = type { i32 }

@ICE_ITR_NONE = common dso_local global i32 0, align 4
@GLINT_DYN_CTL_ITR_INDX_S = common dso_local global i32 0, align 4
@__ICE_OICR_INTR_DIS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ICE_VIRTCHNL_VF_CAP_L2 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_pf*, i32)* @ice_alloc_vfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_alloc_vfs(%struct.ice_pf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_hw*, align 8
  %7 = alloca %struct.ice_vf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ice_pf* %0, %struct.ice_pf** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %11 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %10, i32 0, i32 6
  store %struct.ice_hw* %11, %struct.ice_hw** %6, align 8
  %12 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %13 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %14 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @GLINT_DYN_CTL(i32 %15)
  %17 = load i32, i32* @ICE_ITR_NONE, align 4
  %18 = load i32, i32* @GLINT_DYN_CTL_ITR_INDX_S, align 4
  %19 = shl i32 %17, %18
  %20 = call i32 @wr32(%struct.ice_hw* %12, i32 %16, i32 %19)
  %21 = load i32, i32* @__ICE_OICR_INTR_DIS, align 4
  %22 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %23 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @set_bit(i32 %21, i32* %24)
  %26 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %27 = call i32 @ice_flush(%struct.ice_hw* %26)
  %28 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %29 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @pci_enable_sriov(%struct.TYPE_3__* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %37 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  br label %123

38:                                               ; preds = %2
  %39 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %40 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.ice_vf* @devm_kcalloc(i32* %42, i32 %43, i32 24, i32 %44)
  store %struct.ice_vf* %45, %struct.ice_vf** %7, align 8
  %46 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %47 = icmp ne %struct.ice_vf* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %38
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %9, align 4
  br label %118

51:                                               ; preds = %38
  %52 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %53 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %54 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %53, i32 0, i32 3
  store %struct.ice_vf* %52, %struct.ice_vf** %54, align 8
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %92, %51
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %95

59:                                               ; preds = %55
  %60 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %61 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %61, i64 %63
  %65 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %64, i32 0, i32 4
  store %struct.ice_pf* %60, %struct.ice_pf** %65, align 8
  %66 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %67 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %69, i64 %71
  %73 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %72, i32 0, i32 3
  store i32 %68, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %75, i64 %77
  %79 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %78, i32 0, i32 0
  store i32 %74, i32* %79, align 8
  %80 = load i32, i32* @ICE_VIRTCHNL_VF_CAP_L2, align 4
  %81 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %81, i64 %83
  %85 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %84, i32 0, i32 2
  %86 = call i32 @set_bit(i32 %80, i32* %85)
  %87 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %87, i64 %89
  %91 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %59
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %55

95:                                               ; preds = %55
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %98 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %100 = call i32 @ice_config_res_vfs(%struct.ice_pf* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %95
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %9, align 4
  br label %107

105:                                              ; preds = %95
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %3, align 4
  br label %132

107:                                              ; preds = %102
  %108 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %109 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %108, i32 0, i32 3
  store %struct.ice_vf* null, %struct.ice_vf** %109, align 8
  %110 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %111 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %110, i32 0, i32 2
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %115 = call i32 @devm_kfree(i32* %113, %struct.ice_vf* %114)
  store %struct.ice_vf* null, %struct.ice_vf** %7, align 8
  %116 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %117 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %116, i32 0, i32 0
  store i32 0, i32* %117, align 8
  br label %118

118:                                              ; preds = %107, %48
  %119 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %120 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %119, i32 0, i32 2
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = call i32 @pci_disable_sriov(%struct.TYPE_3__* %121)
  br label %123

123:                                              ; preds = %118, %35
  %124 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %125 = call i32 @ice_irq_dynamic_ena(%struct.ice_hw* %124, i32* null, i32* null)
  %126 = load i32, i32* @__ICE_OICR_INTR_DIS, align 4
  %127 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %128 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @clear_bit(i32 %126, i32* %129)
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %123, %105
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @wr32(%struct.ice_hw*, i32, i32) #1

declare dso_local i32 @GLINT_DYN_CTL(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ice_flush(%struct.ice_hw*) #1

declare dso_local i32 @pci_enable_sriov(%struct.TYPE_3__*, i32) #1

declare dso_local %struct.ice_vf* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @ice_config_res_vfs(%struct.ice_pf*) #1

declare dso_local i32 @devm_kfree(i32*, %struct.ice_vf*) #1

declare dso_local i32 @pci_disable_sriov(%struct.TYPE_3__*) #1

declare dso_local i32 @ice_irq_dynamic_ena(%struct.ice_hw*, i32*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
