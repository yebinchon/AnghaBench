; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_ethtool.c_iavf_set_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_ethtool.c_iavf_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i32, i64, i64, i64 }
%struct.iavf_adapter = type { i32, i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@VIRTCHNL_VF_OFFLOAD_REQ_QUEUES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"PF is not capable of queue negotiation.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VIRTCHNL_VF_OFFLOAD_ADQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Cannot set channels since ADq is enabled.\0A\00", align 1
@IAVF_MAX_REQ_QUEUES = common dso_local global i32 0, align 4
@NONQ_VECS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_channels*)* @iavf_set_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_set_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_channels*, align 8
  %6 = alloca %struct.iavf_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.iavf_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.iavf_adapter* %9, %struct.iavf_adapter** %6, align 8
  %10 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.iavf_adapter*, %struct.iavf_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = load %struct.iavf_adapter*, %struct.iavf_adapter** %6, align 8
  %20 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %19, i32 0, i32 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_REQ_QUEUES, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %18
  %28 = load %struct.iavf_adapter*, %struct.iavf_adapter** %6, align 8
  %29 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @dev_info(i32* %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %93

35:                                               ; preds = %18, %2
  %36 = load %struct.iavf_adapter*, %struct.iavf_adapter** %6, align 8
  %37 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %36, i32 0, i32 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_ADQ, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %35
  %45 = load %struct.iavf_adapter*, %struct.iavf_adapter** %6, align 8
  %46 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.iavf_adapter*, %struct.iavf_adapter** %6, align 8
  %51 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @dev_info(i32* %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %93

57:                                               ; preds = %44, %35
  %58 = load i32, i32* %7, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @IAVF_MAX_REQ_QUEUES, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60, %57
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %93

67:                                               ; preds = %60
  %68 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %67
  %73 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %74 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  %78 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %79 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NONQ_VECS, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77, %72, %67
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %93

86:                                               ; preds = %77
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.iavf_adapter*, %struct.iavf_adapter** %6, align 8
  %89 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.iavf_adapter*, %struct.iavf_adapter** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @iavf_request_queues(%struct.iavf_adapter* %90, i32 %91)
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %86, %83, %64, %49, %27
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.iavf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @iavf_request_queues(%struct.iavf_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
