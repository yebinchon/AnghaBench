; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_disable_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_disable_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i64, i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.virtchnl_queue_select = type { i64, i64, i32 }

@VIRTCHNL_OP_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Cannot disable queues, command %d pending\0A\00", align 1
@VIRTCHNL_OP_DISABLE_QUEUES = common dso_local global i64 0, align 8
@IAVF_FLAG_AQ_DISABLE_QUEUES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iavf_disable_queues(%struct.iavf_adapter* %0) #0 {
  %2 = alloca %struct.iavf_adapter*, align 8
  %3 = alloca %struct.virtchnl_queue_select, align 8
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %2, align 8
  %4 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @VIRTCHNL_OP_UNKNOWN, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %16)
  br label %47

18:                                               ; preds = %1
  %19 = load i64, i64* @VIRTCHNL_OP_DISABLE_QUEUES, align 8
  %20 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %3, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @BIT(i32 %30)
  %32 = sub nsw i64 %31, 1
  %33 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %3, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %3, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %3, i32 0, i32 1
  store i64 %35, i64* %36, align 8
  %37 = load i32, i32* @IAVF_FLAG_AQ_DISABLE_QUEUES, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %44 = load i64, i64* @VIRTCHNL_OP_DISABLE_QUEUES, align 8
  %45 = bitcast %struct.virtchnl_queue_select* %3 to i32*
  %46 = call i32 @iavf_send_pf_msg(%struct.iavf_adapter* %43, i64 %44, i32* %45, i32 24)
  br label %47

47:                                               ; preds = %18, %9
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @iavf_send_pf_msg(%struct.iavf_adapter*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
