; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_configure_clsflower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_configure_clsflower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.flow_cls_offload = type { i32, i32 }
%struct.iavf_cloud_filter = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid traffic class\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@__IAVF_IN_CRITICAL_TASK = common dso_local global i32 0, align 4
@VIRTCHNL_TCP_V4_FLOW = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_ADD_CLOUD_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_adapter*, %struct.flow_cls_offload*)* @iavf_configure_clsflower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_configure_clsflower(%struct.iavf_adapter* %0, %struct.flow_cls_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iavf_adapter*, align 8
  %5 = alloca %struct.flow_cls_offload*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iavf_cloud_filter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %4, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %5, align 8
  %10 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %14 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @tc_classid_to_hwtc(i32 %12, i32 %15)
  store i32 %16, i32* %6, align 4
  store %struct.iavf_cloud_filter* null, %struct.iavf_cloud_filter** %7, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  store i32 50, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %22, i32 0, i32 5
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %116

29:                                               ; preds = %2
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.iavf_cloud_filter* @kzalloc(i32 20, i32 %30)
  store %struct.iavf_cloud_filter* %31, %struct.iavf_cloud_filter** %7, align 8
  %32 = load %struct.iavf_cloud_filter*, %struct.iavf_cloud_filter** %7, align 8
  %33 = icmp ne %struct.iavf_cloud_filter* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %116

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %49, %37
  %39 = load i32, i32* @__IAVF_IN_CRITICAL_TASK, align 4
  %40 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %41 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %40, i32 0, i32 0
  %42 = call i64 @test_and_set_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %104

49:                                               ; preds = %44
  %50 = call i32 @udelay(i32 1)
  br label %38

51:                                               ; preds = %38
  %52 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %53 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.iavf_cloud_filter*, %struct.iavf_cloud_filter** %7, align 8
  %56 = getelementptr inbounds %struct.iavf_cloud_filter, %struct.iavf_cloud_filter* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.iavf_cloud_filter*, %struct.iavf_cloud_filter** %7, align 8
  %58 = getelementptr inbounds %struct.iavf_cloud_filter, %struct.iavf_cloud_filter* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = call i32 @memset(i32* %60, i32 0, i32 4)
  %62 = load i32, i32* @VIRTCHNL_TCP_V4_FLOW, align 4
  %63 = load %struct.iavf_cloud_filter*, %struct.iavf_cloud_filter** %7, align 8
  %64 = getelementptr inbounds %struct.iavf_cloud_filter, %struct.iavf_cloud_filter* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %67 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %68 = load %struct.iavf_cloud_filter*, %struct.iavf_cloud_filter** %7, align 8
  %69 = call i32 @iavf_parse_cls_flower(%struct.iavf_adapter* %66, %struct.flow_cls_offload* %67, %struct.iavf_cloud_filter* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %51
  br label %104

73:                                               ; preds = %51
  %74 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.iavf_cloud_filter*, %struct.iavf_cloud_filter** %7, align 8
  %77 = call i32 @iavf_handle_tclass(%struct.iavf_adapter* %74, i32 %75, %struct.iavf_cloud_filter* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %104

81:                                               ; preds = %73
  %82 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %83 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %82, i32 0, i32 1
  %84 = call i32 @spin_lock_bh(i32* %83)
  %85 = load %struct.iavf_cloud_filter*, %struct.iavf_cloud_filter** %7, align 8
  %86 = getelementptr inbounds %struct.iavf_cloud_filter, %struct.iavf_cloud_filter* %85, i32 0, i32 1
  %87 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %88 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %87, i32 0, i32 4
  %89 = call i32 @list_add_tail(i32* %86, i32* %88)
  %90 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %91 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.iavf_cloud_filter*, %struct.iavf_cloud_filter** %7, align 8
  %95 = getelementptr inbounds %struct.iavf_cloud_filter, %struct.iavf_cloud_filter* %94, i32 0, i32 0
  store i32 1, i32* %95, align 4
  %96 = load i32, i32* @IAVF_FLAG_AQ_ADD_CLOUD_FILTER, align 4
  %97 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %98 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %102 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %101, i32 0, i32 1
  %103 = call i32 @spin_unlock_bh(i32* %102)
  br label %104

104:                                              ; preds = %81, %80, %72, %48
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.iavf_cloud_filter*, %struct.iavf_cloud_filter** %7, align 8
  %109 = call i32 @kfree(%struct.iavf_cloud_filter* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i32, i32* @__IAVF_IN_CRITICAL_TASK, align 4
  %112 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %113 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %112, i32 0, i32 0
  %114 = call i32 @clear_bit(i32 %111, i32* %113)
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %110, %34, %21
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @tc_classid_to_hwtc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.iavf_cloud_filter* @kzalloc(i32, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @iavf_parse_cls_flower(%struct.iavf_adapter*, %struct.flow_cls_offload*, %struct.iavf_cloud_filter*) #1

declare dso_local i32 @iavf_handle_tclass(%struct.iavf_adapter*, i32, %struct.iavf_cloud_filter*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree(%struct.iavf_cloud_filter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
