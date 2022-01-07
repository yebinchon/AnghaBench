; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_enable_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_enable_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i64, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.virtchnl_tc_info = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }

@VIRTCHNL_OP_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Cannot configure mqprio, command %d pending\0A\00", align 1
@list = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__IAVF_TC_RUNNING = common dso_local global i32 0, align 4
@IAVF_FLAG_REINIT_ITR_NEEDED = common dso_local global i32 0, align 4
@VIRTCHNL_OP_ENABLE_CHANNELS = common dso_local global i64 0, align 8
@IAVF_FLAG_AQ_ENABLE_CHANNELS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iavf_enable_channels(%struct.iavf_adapter* %0) #0 {
  %2 = alloca %struct.iavf_adapter*, align 8
  %3 = alloca %struct.virtchnl_tc_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %2, align 8
  store %struct.virtchnl_tc_info* null, %struct.virtchnl_tc_info** %3, align 8
  %6 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @VIRTCHNL_OP_UNKNOWN, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %12, i32 0, i32 5
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %132

20:                                               ; preds = %1
  %21 = load %struct.virtchnl_tc_info*, %struct.virtchnl_tc_info** %3, align 8
  %22 = load i32, i32* @list, align 4
  %23 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = call i64 @struct_size(%struct.virtchnl_tc_info* %21, i32 %22, i32 %26)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.virtchnl_tc_info* @kzalloc(i64 %28, i32 %29)
  store %struct.virtchnl_tc_info* %30, %struct.virtchnl_tc_info** %3, align 8
  %31 = load %struct.virtchnl_tc_info*, %struct.virtchnl_tc_info** %3, align 8
  %32 = icmp ne %struct.virtchnl_tc_info* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %20
  br label %132

34:                                               ; preds = %20
  %35 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.virtchnl_tc_info*, %struct.virtchnl_tc_info** %3, align 8
  %39 = getelementptr inbounds %struct.virtchnl_tc_info, %struct.virtchnl_tc_info* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %102, %34
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.virtchnl_tc_info*, %struct.virtchnl_tc_info** %3, align 8
  %43 = getelementptr inbounds %struct.virtchnl_tc_info, %struct.virtchnl_tc_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %105

46:                                               ; preds = %40
  %47 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.virtchnl_tc_info*, %struct.virtchnl_tc_info** %3, align 8
  %57 = getelementptr inbounds %struct.virtchnl_tc_info, %struct.virtchnl_tc_info* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  store i32 %55, i32* %62, align 4
  %63 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.virtchnl_tc_info*, %struct.virtchnl_tc_info** %3, align 8
  %73 = getelementptr inbounds %struct.virtchnl_tc_info, %struct.virtchnl_tc_info* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  store i32 %71, i32* %78, align 8
  %79 = load %struct.virtchnl_tc_info*, %struct.virtchnl_tc_info** %3, align 8
  %80 = getelementptr inbounds %struct.virtchnl_tc_info, %struct.virtchnl_tc_info* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %87 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.virtchnl_tc_info*, %struct.virtchnl_tc_info** %3, align 8
  %96 = getelementptr inbounds %struct.virtchnl_tc_info, %struct.virtchnl_tc_info* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32 %94, i32* %101, align 8
  br label %102

102:                                              ; preds = %46
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %40

105:                                              ; preds = %40
  %106 = load i32, i32* @__IAVF_TC_RUNNING, align 4
  %107 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %108 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  %110 = load i32, i32* @IAVF_FLAG_REINIT_ITR_NEEDED, align 4
  %111 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %112 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load i64, i64* @VIRTCHNL_OP_ENABLE_CHANNELS, align 8
  %116 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %117 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load i32, i32* @IAVF_FLAG_AQ_ENABLE_CHANNELS, align 4
  %119 = xor i32 %118, -1
  %120 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %121 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %125 = load i64, i64* @VIRTCHNL_OP_ENABLE_CHANNELS, align 8
  %126 = load %struct.virtchnl_tc_info*, %struct.virtchnl_tc_info** %3, align 8
  %127 = bitcast %struct.virtchnl_tc_info* %126 to i32*
  %128 = load i64, i64* %4, align 8
  %129 = call i32 @iavf_send_pf_msg(%struct.iavf_adapter* %124, i64 %125, i32* %127, i64 %128)
  %130 = load %struct.virtchnl_tc_info*, %struct.virtchnl_tc_info** %3, align 8
  %131 = call i32 @kfree(%struct.virtchnl_tc_info* %130)
  br label %132

132:                                              ; preds = %105, %33, %11
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i64 @struct_size(%struct.virtchnl_tc_info*, i32, i32) #1

declare dso_local %struct.virtchnl_tc_info* @kzalloc(i64, i32) #1

declare dso_local i32 @iavf_send_pf_msg(%struct.iavf_adapter*, i64, i32*, i64) #1

declare dso_local i32 @kfree(%struct.virtchnl_tc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
