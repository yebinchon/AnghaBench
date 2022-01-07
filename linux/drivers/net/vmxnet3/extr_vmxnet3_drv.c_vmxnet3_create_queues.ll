; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_create_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_create_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_adapter = type { i32, i32, i32, i32, %struct.TYPE_13__*, %struct.vmxnet3_rx_queue*, %struct.TYPE_11__*, %struct.vmxnet3_tx_queue* }
%struct.TYPE_13__ = type { i32 }
%struct.vmxnet3_rx_queue = type { %struct.TYPE_14__, %struct.vmxnet3_adapter*, i32*, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { i32 }
%struct.vmxnet3_tx_queue = type { i32, i32, %struct.vmxnet3_adapter*, i32*, i8*, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i8* }

@.str = private unnamed_addr constant [45 x i8] c"Could not allocate any rx queues. Aborting.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Number of rx queues changed to : %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmxnet3_create_queues(%struct.vmxnet3_adapter* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmxnet3_adapter*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.vmxnet3_tx_queue*, align 8
  %17 = alloca %struct.vmxnet3_rx_queue*, align 8
  store %struct.vmxnet3_adapter* %0, %struct.vmxnet3_adapter** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %18

18:                                               ; preds = %70, %6
  %19 = load i32, i32* %15, align 4
  %20 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %21 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %73

24:                                               ; preds = %18
  %25 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %26 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %25, i32 0, i32 7
  %27 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %26, align 8
  %28 = load i32, i32* %15, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %27, i64 %29
  store %struct.vmxnet3_tx_queue* %30, %struct.vmxnet3_tx_queue** %16, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %16, align 8
  %33 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %16, align 8
  %37 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %16, align 8
  %41 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i8* %39, i8** %42, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %16, align 8
  %45 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %47 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %46, i32 0, i32 6
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %16, align 8
  %54 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %53, i32 0, i32 3
  store i32* %52, i32** %54, align 8
  %55 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %16, align 8
  %56 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %58 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %16, align 8
  %59 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %58, i32 0, i32 2
  store %struct.vmxnet3_adapter* %57, %struct.vmxnet3_adapter** %59, align 8
  %60 = load i32, i32* %15, align 4
  %61 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %16, align 8
  %62 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %16, align 8
  %64 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %65 = call i32 @vmxnet3_tq_create(%struct.vmxnet3_tx_queue* %63, %struct.vmxnet3_adapter* %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %24
  br label %163

69:                                               ; preds = %24
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %15, align 4
  br label %18

73:                                               ; preds = %18
  %74 = load i8*, i8** %10, align 8
  %75 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %76 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %75, i32 0, i32 5
  %77 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %76, align 8
  %78 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %77, i64 0
  %79 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %78, i32 0, i32 3
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  store i8* %74, i8** %82, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %85 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %84, i32 0, i32 5
  %86 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %85, align 8
  %87 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %86, i64 0
  %88 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %87, i32 0, i32 3
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i64 1
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  store i8* %83, i8** %91, align 8
  %92 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %93 = call i32 @vmxnet3_adjust_rx_ring_size(%struct.vmxnet3_adapter* %92)
  %94 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %95 = call i32 @VMXNET3_VERSION_GE_3(%struct.vmxnet3_adapter* %94)
  %96 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %97 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  store i32 0, i32* %15, align 4
  br label %98

98:                                               ; preds = %150, %73
  %99 = load i32, i32* %15, align 4
  %100 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %101 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %153

104:                                              ; preds = %98
  %105 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %106 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %105, i32 0, i32 5
  %107 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %106, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %107, i64 %109
  store %struct.vmxnet3_rx_queue* %110, %struct.vmxnet3_rx_queue** %17, align 8
  %111 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %112 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %111, i32 0, i32 4
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %17, align 8
  %119 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %118, i32 0, i32 2
  store i32* %117, i32** %119, align 8
  %120 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %121 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %17, align 8
  %122 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %121, i32 0, i32 1
  store %struct.vmxnet3_adapter* %120, %struct.vmxnet3_adapter** %122, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %17, align 8
  %125 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  store i8* %123, i8** %126, align 8
  %127 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %17, align 8
  %128 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %129 = call i32 @vmxnet3_rq_create(%struct.vmxnet3_rx_queue* %127, %struct.vmxnet3_adapter* %128)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %149

132:                                              ; preds = %104
  %133 = load i32, i32* %15, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %137 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @netdev_err(i32 %138, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %163

140:                                              ; preds = %132
  %141 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %142 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %15, align 4
  %145 = call i32 @netdev_info(i32 %143, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %15, align 4
  %147 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %148 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  store i32 0, i32* %14, align 4
  br label %153

149:                                              ; preds = %104
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %15, align 4
  br label %98

153:                                              ; preds = %140, %98
  %154 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %155 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %153
  %159 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %160 = call i32 @vmxnet3_rq_destroy_all_rxdataring(%struct.vmxnet3_adapter* %159)
  br label %161

161:                                              ; preds = %158, %153
  %162 = load i32, i32* %14, align 4
  store i32 %162, i32* %7, align 4
  br label %167

163:                                              ; preds = %135, %68
  %164 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %165 = call i32 @vmxnet3_tq_destroy_all(%struct.vmxnet3_adapter* %164)
  %166 = load i32, i32* %14, align 4
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %163, %161
  %168 = load i32, i32* %7, align 4
  ret i32 %168
}

declare dso_local i32 @vmxnet3_tq_create(%struct.vmxnet3_tx_queue*, %struct.vmxnet3_adapter*) #1

declare dso_local i32 @vmxnet3_adjust_rx_ring_size(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @VMXNET3_VERSION_GE_3(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @vmxnet3_rq_create(%struct.vmxnet3_rx_queue*, %struct.vmxnet3_adapter*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @netdev_info(i32, i8*, i32) #1

declare dso_local i32 @vmxnet3_rq_destroy_all_rxdataring(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @vmxnet3_tq_destroy_all(%struct.vmxnet3_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
