; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_config_irq_map_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_config_irq_map_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.virtchnl_irq_map_info = type { i32, %struct.virtchnl_vector_map* }
%struct.virtchnl_vector_map = type { i32, i32, i32, i32 }

@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@VIRTCHNL_OP_CONFIG_IRQ_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i32*)* @i40e_vc_config_irq_map_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vc_config_irq_map_msg(%struct.i40e_vf* %0, i32* %1) #0 {
  %3 = alloca %struct.i40e_vf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.virtchnl_irq_map_info*, align 8
  %6 = alloca %struct.virtchnl_vector_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.virtchnl_irq_map_info*
  store %struct.virtchnl_irq_map_info* %11, %struct.virtchnl_irq_map_info** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %13 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %14 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %13, i32 0, i32 1
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %18, i32* %8, align 4
  br label %94

19:                                               ; preds = %2
  %20 = load %struct.virtchnl_irq_map_info*, %struct.virtchnl_irq_map_info** %5, align 8
  %21 = getelementptr inbounds %struct.virtchnl_irq_map_info, %struct.virtchnl_irq_map_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %24 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %22, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %32, i32* %8, align 4
  br label %94

33:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %90, %33
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.virtchnl_irq_map_info*, %struct.virtchnl_irq_map_info** %5, align 8
  %37 = getelementptr inbounds %struct.virtchnl_irq_map_info, %struct.virtchnl_irq_map_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %93

40:                                               ; preds = %34
  %41 = load %struct.virtchnl_irq_map_info*, %struct.virtchnl_irq_map_info** %5, align 8
  %42 = getelementptr inbounds %struct.virtchnl_irq_map_info, %struct.virtchnl_irq_map_info* %41, i32 0, i32 1
  %43 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %43, i64 %45
  store %struct.virtchnl_vector_map* %46, %struct.virtchnl_vector_map** %6, align 8
  %47 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %48 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %6, align 8
  %49 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @i40e_vc_isvalid_vector_id(%struct.i40e_vf* %47, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %40
  %54 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %55 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %6, align 8
  %56 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf* %54, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %53, %40
  %61 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %61, i32* %8, align 4
  br label %94

62:                                               ; preds = %53
  %63 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %6, align 8
  %64 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %7, align 4
  %66 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %6, align 8
  %69 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @i40e_validate_queue_map(%struct.i40e_vf* %66, i32 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %74, i32* %8, align 4
  br label %94

75:                                               ; preds = %62
  %76 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %6, align 8
  %79 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @i40e_validate_queue_map(%struct.i40e_vf* %76, i32 %77, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %84, i32* %8, align 4
  br label %94

85:                                               ; preds = %75
  %86 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %6, align 8
  %89 = call i32 @i40e_config_irq_link_list(%struct.i40e_vf* %86, i32 %87, %struct.virtchnl_vector_map* %88)
  br label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %34

93:                                               ; preds = %34
  br label %94

94:                                               ; preds = %93, %83, %73, %60, %31, %17
  %95 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %96 = load i32, i32* @VIRTCHNL_OP_CONFIG_IRQ_MAP, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf* %95, i32 %96, i32 %97)
  ret i32 %98
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @i40e_vc_isvalid_vector_id(%struct.i40e_vf*, i32) #1

declare dso_local i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf*, i32) #1

declare dso_local i64 @i40e_validate_queue_map(%struct.i40e_vf*, i32, i32) #1

declare dso_local i32 @i40e_config_irq_link_list(%struct.i40e_vf*, i32, %struct.virtchnl_vector_map*) #1

declare dso_local i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
