; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_delete_clsflower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_delete_clsflower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32, i32 }
%struct.flow_cls_offload = type { i32 }
%struct.iavf_cloud_filter = type { i32 }

@IAVF_FLAG_AQ_DEL_CLOUD_FILTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_adapter*, %struct.flow_cls_offload*)* @iavf_delete_clsflower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_delete_clsflower(%struct.iavf_adapter* %0, %struct.flow_cls_offload* %1) #0 {
  %3 = alloca %struct.iavf_adapter*, align 8
  %4 = alloca %struct.flow_cls_offload*, align 8
  %5 = alloca %struct.iavf_cloud_filter*, align 8
  %6 = alloca i32, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %3, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %4, align 8
  store %struct.iavf_cloud_filter* null, %struct.iavf_cloud_filter** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %11 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %4, align 8
  %12 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %11, i32 0, i32 0
  %13 = call %struct.iavf_cloud_filter* @iavf_find_cf(%struct.iavf_adapter* %10, i32* %12)
  store %struct.iavf_cloud_filter* %13, %struct.iavf_cloud_filter** %5, align 8
  %14 = load %struct.iavf_cloud_filter*, %struct.iavf_cloud_filter** %5, align 8
  %15 = icmp ne %struct.iavf_cloud_filter* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.iavf_cloud_filter*, %struct.iavf_cloud_filter** %5, align 8
  %18 = getelementptr inbounds %struct.iavf_cloud_filter, %struct.iavf_cloud_filter* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* @IAVF_FLAG_AQ_DEL_CLOUD_FILTER, align 4
  %20 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %24, %16
  %28 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_bh(i32* %29)
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.iavf_cloud_filter* @iavf_find_cf(%struct.iavf_adapter*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
