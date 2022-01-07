; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_common.c_iavf_vf_parse_hw_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_common.c_iavf_vf_parse_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i32, i32, i32 }
%struct.virtchnl_vf_resource = type { i32, i32, i32, i32, %struct.virtchnl_vsi_resource* }
%struct.virtchnl_vsi_resource = type { i64, i32 }

@VIRTCHNL_VF_OFFLOAD_L2 = common dso_local global i32 0, align 4
@VIRTCHNL_VSI_SRIOV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iavf_vf_parse_hw_config(%struct.iavf_hw* %0, %struct.virtchnl_vf_resource* %1) #0 {
  %3 = alloca %struct.iavf_hw*, align 8
  %4 = alloca %struct.virtchnl_vf_resource*, align 8
  %5 = alloca %struct.virtchnl_vsi_resource*, align 8
  %6 = alloca i32, align 4
  store %struct.iavf_hw* %0, %struct.iavf_hw** %3, align 8
  store %struct.virtchnl_vf_resource* %1, %struct.virtchnl_vf_resource** %4, align 8
  %7 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %8 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %7, i32 0, i32 4
  %9 = load %struct.virtchnl_vsi_resource*, %struct.virtchnl_vsi_resource** %8, align 8
  %10 = getelementptr inbounds %struct.virtchnl_vsi_resource, %struct.virtchnl_vsi_resource* %9, i64 0
  store %struct.virtchnl_vsi_resource* %10, %struct.virtchnl_vsi_resource** %5, align 8
  %11 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %12 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %15 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %18 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %21 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 5
  store i32 %19, i32* %22, align 8
  %23 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %24 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %27 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  store i32 %25, i32* %28, align 4
  %29 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %30 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %33 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 8
  %35 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %36 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_L2, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %41 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %44 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %78, %2
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %49 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %46
  %53 = load %struct.virtchnl_vsi_resource*, %struct.virtchnl_vsi_resource** %5, align 8
  %54 = getelementptr inbounds %struct.virtchnl_vsi_resource, %struct.virtchnl_vsi_resource* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @VIRTCHNL_VSI_SRIOV, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %52
  %59 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %60 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.virtchnl_vsi_resource*, %struct.virtchnl_vsi_resource** %5, align 8
  %64 = getelementptr inbounds %struct.virtchnl_vsi_resource, %struct.virtchnl_vsi_resource* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ether_addr_copy(i32 %62, i32 %65)
  %67 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %68 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.virtchnl_vsi_resource*, %struct.virtchnl_vsi_resource** %5, align 8
  %72 = getelementptr inbounds %struct.virtchnl_vsi_resource, %struct.virtchnl_vsi_resource* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @ether_addr_copy(i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %58, %52
  %76 = load %struct.virtchnl_vsi_resource*, %struct.virtchnl_vsi_resource** %5, align 8
  %77 = getelementptr inbounds %struct.virtchnl_vsi_resource, %struct.virtchnl_vsi_resource* %76, i32 1
  store %struct.virtchnl_vsi_resource* %77, %struct.virtchnl_vsi_resource** %5, align 8
  br label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %46

81:                                               ; preds = %46
  ret void
}

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
