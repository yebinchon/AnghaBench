; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_alloc_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_alloc_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtnet_info = type { i32, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32, i32, i32* }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@refill_work = common dso_local global i32 0, align 4
@virtnet_poll = common dso_local global i32 0, align 4
@napi_weight = common dso_local global i32 0, align 4
@virtnet_poll_tx = common dso_local global i32 0, align 4
@napi_tx = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtnet_info*)* @virtnet_alloc_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtnet_alloc_queues(%struct.virtnet_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtnet_info*, align 8
  %4 = alloca i32, align 4
  store %struct.virtnet_info* %0, %struct.virtnet_info** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.TYPE_9__* @kzalloc(i32 12, i32 %5)
  %7 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %8 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %7, i32 0, i32 1
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %8, align 8
  %9 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %10 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %169

14:                                               ; preds = %1
  %15 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %16 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kcalloc(i32 %17, i32 12, i32 %18)
  %20 = bitcast i8* %19 to %struct.TYPE_9__*
  %21 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %22 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %21, i32 0, i32 2
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %22, align 8
  %23 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %24 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %23, i32 0, i32 2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = icmp ne %struct.TYPE_9__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %14
  br label %164

28:                                               ; preds = %14
  %29 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %30 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kcalloc(i32 %31, i32 24, i32 %32)
  %34 = bitcast i8* %33 to %struct.TYPE_7__*
  %35 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %36 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %35, i32 0, i32 3
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %36, align 8
  %37 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %38 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %37, i32 0, i32 3
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = icmp ne %struct.TYPE_7__* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %28
  br label %159

42:                                               ; preds = %28
  %43 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %44 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %43, i32 0, i32 5
  %45 = load i32, i32* @refill_work, align 4
  %46 = call i32 @INIT_DELAYED_WORK(i32* %44, i32 %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %155, %42
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %50 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %158

53:                                               ; preds = %47
  %54 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %55 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %54, i32 0, i32 3
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 4
  store i32* null, i32** %60, align 8
  %61 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %62 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %65 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %64, i32 0, i32 3
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 3
  %71 = load i32, i32* @virtnet_poll, align 4
  %72 = load i32, i32* @napi_weight, align 4
  %73 = call i32 @netif_napi_add(i32 %63, i32* %70, i32 %71, i32 %72)
  %74 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %75 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %78 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %77, i32 0, i32 2
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  %84 = load i32, i32* @virtnet_poll_tx, align 4
  %85 = load i64, i64* @napi_tx, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %53
  %88 = load i32, i32* @napi_weight, align 4
  br label %90

89:                                               ; preds = %53
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i32 [ %88, %87 ], [ 0, %89 ]
  %92 = call i32 @netif_tx_napi_add(i32 %76, i32* %83, i32 %84, i32 %91)
  %93 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %94 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %93, i32 0, i32 3
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %102 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %101, i32 0, i32 3
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @ARRAY_SIZE(i32 %108)
  %110 = call i32 @sg_init_table(i32 %100, i32 %109)
  %111 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %112 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %111, i32 0, i32 3
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = call i32 @ewma_pkt_len_init(i32* %117)
  %119 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %120 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %119, i32 0, i32 2
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %128 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %127, i32 0, i32 2
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ARRAY_SIZE(i32 %134)
  %136 = call i32 @sg_init_table(i32 %126, i32 %135)
  %137 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %138 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %137, i32 0, i32 3
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = call i32 @u64_stats_init(i32* %144)
  %146 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %147 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %146, i32 0, i32 2
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = call i32 @u64_stats_init(i32* %153)
  br label %155

155:                                              ; preds = %90
  %156 = load i32, i32* %4, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %4, align 4
  br label %47

158:                                              ; preds = %47
  store i32 0, i32* %2, align 4
  br label %172

159:                                              ; preds = %41
  %160 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %161 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %160, i32 0, i32 2
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = call i32 @kfree(%struct.TYPE_9__* %162)
  br label %164

164:                                              ; preds = %159, %27
  %165 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %166 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %165, i32 0, i32 1
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  %168 = call i32 @kfree(%struct.TYPE_9__* %167)
  br label %169

169:                                              ; preds = %164, %13
  %170 = load i32, i32* @ENOMEM, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %169, %158
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.TYPE_9__* @kzalloc(i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

declare dso_local i32 @netif_tx_napi_add(i32, i32*, i32, i32) #1

declare dso_local i32 @sg_init_table(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ewma_pkt_len_init(i32*) #1

declare dso_local i32 @u64_stats_init(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
