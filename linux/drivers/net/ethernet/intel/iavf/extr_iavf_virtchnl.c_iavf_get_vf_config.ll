; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_get_vf_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_get_vf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32, %struct.iavf_hw }
%struct.iavf_hw = type { i32 }
%struct.iavf_arq_event_info = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@IAVF_MAX_VF_VSI = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VIRTCHNL_OP_GET_VF_RESOURCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iavf_get_vf_config(%struct.iavf_adapter* %0) #0 {
  %2 = alloca %struct.iavf_adapter*, align 8
  %3 = alloca %struct.iavf_hw*, align 8
  %4 = alloca %struct.iavf_arq_event_info, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %2, align 8
  %8 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %8, i32 0, i32 1
  store %struct.iavf_hw* %9, %struct.iavf_hw** %3, align 8
  %10 = load i32, i32* @IAVF_MAX_VF_VSI, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = add i64 4, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds %struct.iavf_arq_event_info, %struct.iavf_arq_event_info* %4, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.iavf_arq_event_info, %struct.iavf_arq_event_info* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @kzalloc(i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.iavf_arq_event_info, %struct.iavf_arq_event_info* %4, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.iavf_arq_event_info, %struct.iavf_arq_event_info* %4, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %77

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %28, %45
  %30 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %31 = call i32 @iavf_clean_arq_element(%struct.iavf_hw* %30, %struct.iavf_arq_event_info* %4, i32* null)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %73

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.iavf_arq_event_info, %struct.iavf_arq_event_info* %4, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le32_to_cpu(i32 %38)
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @VIRTCHNL_OP_GET_VF_RESOURCES, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %46

45:                                               ; preds = %35
  br label %29

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.iavf_arq_event_info, %struct.iavf_arq_event_info* %4, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @le32_to_cpu(i32 %49)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %6, align 4
  %52 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.iavf_arq_event_info, %struct.iavf_arq_event_info* %4, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.iavf_arq_event_info, %struct.iavf_arq_event_info* %4, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @min(i32 %58, i32 %59)
  %61 = call i32 @memcpy(i32 %54, i32 %56, i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %46
  %65 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %66 = call i32 @iavf_validate_num_queues(%struct.iavf_adapter* %65)
  br label %67

67:                                               ; preds = %64, %46
  %68 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %69 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %70 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @iavf_vf_parse_hw_config(%struct.iavf_hw* %68, i32 %71)
  br label %73

73:                                               ; preds = %67, %34
  %74 = getelementptr inbounds %struct.iavf_arq_event_info, %struct.iavf_arq_event_info* %4, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @kfree(i32 %75)
  br label %77

77:                                               ; preds = %73, %25
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @iavf_clean_arq_element(%struct.iavf_hw*, %struct.iavf_arq_event_info*, i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @iavf_validate_num_queues(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_vf_parse_hw_config(%struct.iavf_hw*, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
