; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_set_hena.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_set_hena.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.virtchnl_rss_hena = type { i32 }

@VIRTCHNL_OP_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Cannot set RSS hash enable, command %d pending\0A\00", align 1
@VIRTCHNL_OP_SET_RSS_HENA = common dso_local global i64 0, align 8
@IAVF_FLAG_AQ_SET_HENA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iavf_set_hena(%struct.iavf_adapter* %0) #0 {
  %2 = alloca %struct.iavf_adapter*, align 8
  %3 = alloca %struct.virtchnl_rss_hena, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %2, align 8
  %4 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @VIRTCHNL_OP_UNKNOWN, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %16)
  br label %36

18:                                               ; preds = %1
  %19 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.virtchnl_rss_hena, %struct.virtchnl_rss_hena* %3, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i64, i64* @VIRTCHNL_OP_SET_RSS_HENA, align 8
  %24 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i32, i32* @IAVF_FLAG_AQ_SET_HENA, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %33 = load i64, i64* @VIRTCHNL_OP_SET_RSS_HENA, align 8
  %34 = bitcast %struct.virtchnl_rss_hena* %3 to i32*
  %35 = call i32 @iavf_send_pf_msg(%struct.iavf_adapter* %32, i64 %33, i32* %34, i32 4)
  br label %36

36:                                               ; preds = %18, %9
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @iavf_send_pf_msg(%struct.iavf_adapter*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
