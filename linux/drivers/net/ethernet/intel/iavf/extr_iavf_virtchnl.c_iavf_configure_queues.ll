; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_configure_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_configure_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32, i64, i32, i32, %struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.virtchnl_vsi_queue_config_info = type { i32, i32, %struct.virtchnl_queue_pair_info* }
%struct.virtchnl_queue_pair_info = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@IAVF_MAX_RXBUFFER = common dso_local global i32 0, align 4
@VIRTCHNL_OP_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Cannot configure queues, command %d pending\0A\00", align 1
@VIRTCHNL_OP_CONFIG_VSI_QUEUES = common dso_local global i64 0, align 8
@qpair = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IAVF_FLAG_LEGACY_RX = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i64 0, align 8
@IAVF_RXBUFFER_1536 = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@IAVF_RXQ_CTX_DBUFF_SHIFT = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_CONFIGURE_QUEUES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iavf_configure_queues(%struct.iavf_adapter* %0) #0 {
  %2 = alloca %struct.iavf_adapter*, align 8
  %3 = alloca %struct.virtchnl_vsi_queue_config_info*, align 8
  %4 = alloca %struct.virtchnl_queue_pair_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %2, align 8
  %9 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @IAVF_MAX_RXBUFFER, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VIRTCHNL_OP_UNKNOWN, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %19, i32 0, i32 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %181

27:                                               ; preds = %1
  %28 = load i64, i64* @VIRTCHNL_OP_CONFIG_VSI_QUEUES, align 8
  %29 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %3, align 8
  %32 = load i32, i32* @qpair, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @struct_size(%struct.virtchnl_vsi_queue_config_info* %31, i32 %32, i32 %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.virtchnl_vsi_queue_config_info* @kzalloc(i64 %35, i32 %36)
  store %struct.virtchnl_vsi_queue_config_info* %37, %struct.virtchnl_vsi_queue_config_info** %3, align 8
  %38 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %3, align 8
  %39 = icmp ne %struct.virtchnl_vsi_queue_config_info* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %27
  br label %181

41:                                               ; preds = %27
  %42 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IAVF_FLAG_LEGACY_RX, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %41
  %49 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %49, i32 0, i32 7
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ETH_DATA_LEN, align 8
  %55 = icmp sle i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32, i32* @IAVF_RXBUFFER_1536, align 4
  %58 = load i32, i32* @NET_IP_ALIGN, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %56, %48, %41
  %61 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %61, i32 0, i32 6
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %3, align 8
  %67 = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, %struct.virtchnl_vsi_queue_config_info* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %3, align 8
  %70 = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, %struct.virtchnl_vsi_queue_config_info* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %3, align 8
  %72 = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, %struct.virtchnl_vsi_queue_config_info* %71, i32 0, i32 2
  %73 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %72, align 8
  store %struct.virtchnl_queue_pair_info* %73, %struct.virtchnl_queue_pair_info** %4, align 8
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %163, %60
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %166

78:                                               ; preds = %74
  %79 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %3, align 8
  %80 = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, %struct.virtchnl_vsi_queue_config_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %4, align 8
  %83 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 3
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %4, align 8
  %87 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  %89 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %89, i32 0, i32 5
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %4, align 8
  %98 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 4
  %100 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %101 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %100, i32 0, i32 5
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %4, align 8
  %109 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 4
  %111 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %3, align 8
  %112 = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, %struct.virtchnl_vsi_queue_config_info* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %4, align 8
  %115 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 5
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %4, align 8
  %119 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 4
  %121 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %122 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %121, i32 0, i32 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %4, align 8
  %130 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 4
  store i32 %128, i32* %131, align 4
  %132 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %133 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %132, i32 0, i32 4
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %4, align 8
  %141 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 3
  store i32 %139, i32* %142, align 4
  %143 = load i32, i32* %7, align 4
  %144 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %4, align 8
  %145 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  store i32 %143, i32* %146, align 4
  %147 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %148 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %147, i32 0, i32 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @IAVF_RXQ_CTX_DBUFF_SHIFT, align 4
  %156 = call i32 @BIT_ULL(i32 %155)
  %157 = call i32 @ALIGN(i32 %154, i32 %156)
  %158 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %4, align 8
  %159 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 2
  store i32 %157, i32* %160, align 4
  %161 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %4, align 8
  %162 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %161, i32 1
  store %struct.virtchnl_queue_pair_info* %162, %struct.virtchnl_queue_pair_info** %4, align 8
  br label %163

163:                                              ; preds = %78
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %6, align 4
  br label %74

166:                                              ; preds = %74
  %167 = load i32, i32* @IAVF_FLAG_AQ_CONFIGURE_QUEUES, align 4
  %168 = xor i32 %167, -1
  %169 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %170 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, %168
  store i32 %172, i32* %170, align 4
  %173 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %174 = load i64, i64* @VIRTCHNL_OP_CONFIG_VSI_QUEUES, align 8
  %175 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %3, align 8
  %176 = bitcast %struct.virtchnl_vsi_queue_config_info* %175 to i32*
  %177 = load i64, i64* %8, align 8
  %178 = call i32 @iavf_send_pf_msg(%struct.iavf_adapter* %173, i64 %174, i32* %176, i64 %177)
  %179 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %3, align 8
  %180 = call i32 @kfree(%struct.virtchnl_vsi_queue_config_info* %179)
  br label %181

181:                                              ; preds = %166, %40, %18
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i64 @struct_size(%struct.virtchnl_vsi_queue_config_info*, i32, i32) #1

declare dso_local %struct.virtchnl_vsi_queue_config_info* @kzalloc(i64, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @iavf_send_pf_msg(%struct.iavf_adapter*, i64, i32*, i64) #1

declare dso_local i32 @kfree(%struct.virtchnl_vsi_queue_config_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
