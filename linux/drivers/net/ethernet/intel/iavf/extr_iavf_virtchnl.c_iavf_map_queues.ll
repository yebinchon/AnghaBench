; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_map_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_map_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i64, i8*, i32, %struct.TYPE_4__*, %struct.iavf_q_vector*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.iavf_q_vector = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.virtchnl_irq_map_info = type { i8*, %struct.virtchnl_vector_map* }
%struct.virtchnl_vector_map = type { i64, i64, i8*, i32, i32, i32 }

@VIRTCHNL_OP_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Cannot map queues to vectors, command %d pending\0A\00", align 1
@VIRTCHNL_OP_CONFIG_IRQ_MAP = common dso_local global i64 0, align 8
@NONQ_VECS = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@IAVF_RX_ITR = common dso_local global i32 0, align 4
@IAVF_TX_ITR = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_MAP_VECTORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iavf_map_queues(%struct.iavf_adapter* %0) #0 {
  %2 = alloca %struct.iavf_adapter*, align 8
  %3 = alloca %struct.virtchnl_irq_map_info*, align 8
  %4 = alloca %struct.virtchnl_vector_map*, align 8
  %5 = alloca %struct.iavf_q_vector*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %2, align 8
  %9 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VIRTCHNL_OP_UNKNOWN, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %15, i32 0, i32 5
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %136

23:                                               ; preds = %1
  %24 = load i64, i64* @VIRTCHNL_OP_CONFIG_IRQ_MAP, align 8
  %25 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** @NONQ_VECS, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.virtchnl_irq_map_info*, %struct.virtchnl_irq_map_info** %3, align 8
  %36 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %4, align 8
  %37 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @struct_size(%struct.virtchnl_irq_map_info* %35, %struct.virtchnl_vector_map* %36, i8* %39)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.virtchnl_irq_map_info* @kzalloc(i64 %41, i32 %42)
  store %struct.virtchnl_irq_map_info* %43, %struct.virtchnl_irq_map_info** %3, align 8
  %44 = load %struct.virtchnl_irq_map_info*, %struct.virtchnl_irq_map_info** %3, align 8
  %45 = icmp ne %struct.virtchnl_irq_map_info* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %23
  br label %136

47:                                               ; preds = %23
  %48 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.virtchnl_irq_map_info*, %struct.virtchnl_irq_map_info** %3, align 8
  %52 = getelementptr inbounds %struct.virtchnl_irq_map_info, %struct.virtchnl_irq_map_info* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %99, %47
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %102

57:                                               ; preds = %53
  %58 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %58, i32 0, i32 4
  %60 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %60, i64 %62
  store %struct.iavf_q_vector* %63, %struct.iavf_q_vector** %5, align 8
  %64 = load %struct.virtchnl_irq_map_info*, %struct.virtchnl_irq_map_info** %3, align 8
  %65 = getelementptr inbounds %struct.virtchnl_irq_map_info, %struct.virtchnl_irq_map_info* %64, i32 0, i32 1
  %66 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %66, i64 %68
  store %struct.virtchnl_vector_map* %69, %struct.virtchnl_vector_map** %4, align 8
  %70 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %4, align 8
  %76 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i8*, i8** @NONQ_VECS, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr i8, i8* %78, i64 %79
  %81 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %4, align 8
  %82 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  %83 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %5, align 8
  %84 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %4, align 8
  %87 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %5, align 8
  %89 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %4, align 8
  %92 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load i32, i32* @IAVF_RX_ITR, align 4
  %94 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %4, align 8
  %95 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @IAVF_TX_ITR, align 4
  %97 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %4, align 8
  %98 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %57
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %53

102:                                              ; preds = %53
  %103 = load %struct.virtchnl_irq_map_info*, %struct.virtchnl_irq_map_info** %3, align 8
  %104 = getelementptr inbounds %struct.virtchnl_irq_map_info, %struct.virtchnl_irq_map_info* %103, i32 0, i32 1
  %105 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %105, i64 %107
  store %struct.virtchnl_vector_map* %108, %struct.virtchnl_vector_map** %4, align 8
  %109 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %110 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %109, i32 0, i32 3
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %4, align 8
  %115 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 8
  %116 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %4, align 8
  %117 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %116, i32 0, i32 2
  store i8* null, i8** %117, align 8
  %118 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %4, align 8
  %119 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %118, i32 0, i32 1
  store i64 0, i64* %119, align 8
  %120 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %4, align 8
  %121 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %120, i32 0, i32 0
  store i64 0, i64* %121, align 8
  %122 = load i32, i32* @IAVF_FLAG_AQ_MAP_VECTORS, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %125 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %129 = load i64, i64* @VIRTCHNL_OP_CONFIG_IRQ_MAP, align 8
  %130 = load %struct.virtchnl_irq_map_info*, %struct.virtchnl_irq_map_info** %3, align 8
  %131 = bitcast %struct.virtchnl_irq_map_info* %130 to i32*
  %132 = load i64, i64* %8, align 8
  %133 = call i32 @iavf_send_pf_msg(%struct.iavf_adapter* %128, i64 %129, i32* %131, i64 %132)
  %134 = load %struct.virtchnl_irq_map_info*, %struct.virtchnl_irq_map_info** %3, align 8
  %135 = call i32 @kfree(%struct.virtchnl_irq_map_info* %134)
  br label %136

136:                                              ; preds = %102, %46, %14
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i64 @struct_size(%struct.virtchnl_irq_map_info*, %struct.virtchnl_vector_map*, i8*) #1

declare dso_local %struct.virtchnl_irq_map_info* @kzalloc(i64, i32) #1

declare dso_local i32 @iavf_send_pf_msg(%struct.iavf_adapter*, i64, i32*, i64) #1

declare dso_local i32 @kfree(%struct.virtchnl_irq_map_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
