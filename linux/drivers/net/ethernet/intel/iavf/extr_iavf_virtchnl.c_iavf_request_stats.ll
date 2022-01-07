; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_request_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_request_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.virtchnl_queue_select = type { i32 }

@VIRTCHNL_OP_UNKNOWN = common dso_local global i64 0, align 8
@VIRTCHNL_OP_GET_STATS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iavf_request_stats(%struct.iavf_adapter* %0) #0 {
  %2 = alloca %struct.iavf_adapter*, align 8
  %3 = alloca %struct.virtchnl_queue_select, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %2, align 8
  %4 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @VIRTCHNL_OP_UNKNOWN, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %29

10:                                               ; preds = %1
  %11 = load i64, i64* @VIRTCHNL_OP_GET_STATS, align 8
  %12 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %3, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %21 = load i64, i64* @VIRTCHNL_OP_GET_STATS, align 8
  %22 = bitcast %struct.virtchnl_queue_select* %3 to i32*
  %23 = call i64 @iavf_send_pf_msg(%struct.iavf_adapter* %20, i64 %21, i32* %22, i32 4)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %10
  %26 = load i64, i64* @VIRTCHNL_OP_UNKNOWN, align 8
  %27 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %9, %25, %10
  ret void
}

declare dso_local i64 @iavf_send_pf_msg(%struct.iavf_adapter*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
