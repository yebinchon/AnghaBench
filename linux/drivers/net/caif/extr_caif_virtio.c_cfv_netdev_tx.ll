; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_virtio.c_cfv_netdev_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_virtio.c_cfv_netdev_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.cfv_info = type { i32, %struct.TYPE_12__*, i32, %struct.TYPE_11__*, i64, i32, i64, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.buf_info = type { i32 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Out of gen_pool memory\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed adding buffer to TX vring:%d\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @cfv_netdev_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfv_netdev_tx(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cfv_info*, align 8
  %7 = alloca %struct.buf_info*, align 8
  %8 = alloca %struct.scatterlist, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.cfv_info* @netdev_priv(%struct.net_device* %12)
  store %struct.cfv_info* %13, %struct.cfv_info** %6, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %15 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %14, i32 0, i32 3
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = call i32 @cfv_release_used_buf(%struct.TYPE_11__* %16)
  %18 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %19 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %18, i32 0, i32 2
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %23 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %22, i32 0, i32 3
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 (...) @num_present_cpus()
  %28 = icmp sle i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  %33 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %34 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %2
  %39 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call %struct.buf_info* @cfv_alloc_and_copy_to_shm(%struct.cfv_info* %39, %struct.sk_buff* %40, %struct.scatterlist* %8)
  store %struct.buf_info* %41, %struct.buf_info** %7, align 8
  %42 = load %struct.buf_info*, %struct.buf_info** %7, align 8
  %43 = icmp ne %struct.buf_info* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %38
  %49 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %50 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  store i32 1, i32* %10, align 4
  %54 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %55 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %48
  %59 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %60 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  %64 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %65 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %68 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %71 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @gen_pool_free(i64 %66, i64 %69, i32 %72)
  %74 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %75 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %74, i32 0, i32 4
  store i64 0, i64* %75, align 8
  %76 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = call %struct.buf_info* @cfv_alloc_and_copy_to_shm(%struct.cfv_info* %76, %struct.sk_buff* %77, %struct.scatterlist* %8)
  store %struct.buf_info* %78, %struct.buf_info** %7, align 8
  br label %79

79:                                               ; preds = %63, %58, %48
  br label %80

80:                                               ; preds = %79, %38
  %81 = load i32, i32* %10, align 4
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %80
  %85 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %86 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %85, i32 0, i32 3
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = call i32 @virtqueue_get_vring_size(%struct.TYPE_11__* %87)
  %89 = sdiv i32 %88, 4
  %90 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %91 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %93 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %92, i32 0, i32 3
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = call i32 @virtqueue_enable_cb(%struct.TYPE_11__* %94)
  %96 = load %struct.net_device*, %struct.net_device** %5, align 8
  %97 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %96)
  br label %98

98:                                               ; preds = %84, %80
  %99 = load %struct.buf_info*, %struct.buf_info** %7, align 8
  %100 = icmp ne %struct.buf_info* %99, null
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %107 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %106, i32 0, i32 1
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = call i32 (%struct.TYPE_12__*, i8*, ...) @netdev_warn(%struct.TYPE_12__* %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %159

110:                                              ; preds = %98
  %111 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %112 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %111, i32 0, i32 3
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = load %struct.buf_info*, %struct.buf_info** %7, align 8
  %115 = load i32, i32* @GFP_ATOMIC, align 4
  %116 = call i32 @virtqueue_add_outbuf(%struct.TYPE_11__* %113, %struct.scatterlist* %8, i32 1, %struct.buf_info* %114, i32 %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp slt i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %110
  %123 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %124 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %123, i32 0, i32 1
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 (%struct.TYPE_12__*, i8*, ...) @netdev_warn(%struct.TYPE_12__* %125, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  br label %159

128:                                              ; preds = %110
  %129 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %130 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %129, i32 0, i32 1
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  %136 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %140 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %139, i32 0, i32 1
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %138
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %143, align 4
  %148 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %149 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %148, i32 0, i32 2
  %150 = load i64, i64* %9, align 8
  %151 = call i32 @spin_unlock_irqrestore(i32* %149, i64 %150)
  %152 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %153 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %152, i32 0, i32 3
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = call i32 @virtqueue_kick(%struct.TYPE_11__* %154)
  %156 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %157 = call i32 @dev_kfree_skb(%struct.sk_buff* %156)
  %158 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %158, i32* %3, align 4
  br label %177

159:                                              ; preds = %122, %105
  %160 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %161 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %160, i32 0, i32 2
  %162 = load i64, i64* %9, align 8
  %163 = call i32 @spin_unlock_irqrestore(i32* %161, i64 %162)
  %164 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %165 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %164, i32 0, i32 1
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  %171 = load %struct.cfv_info*, %struct.cfv_info** %6, align 8
  %172 = load %struct.buf_info*, %struct.buf_info** %7, align 8
  %173 = call i32 @free_buf_info(%struct.cfv_info* %171, %struct.buf_info* %172)
  %174 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %175 = call i32 @dev_kfree_skb(%struct.sk_buff* %174)
  %176 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %159, %128
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local %struct.cfv_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cfv_release_used_buf(%struct.TYPE_11__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @num_present_cpus(...) #1

declare dso_local %struct.buf_info* @cfv_alloc_and_copy_to_shm(%struct.cfv_info*, %struct.sk_buff*, %struct.scatterlist*) #1

declare dso_local i32 @gen_pool_free(i64, i64, i32) #1

declare dso_local i32 @virtqueue_get_vring_size(%struct.TYPE_11__*) #1

declare dso_local i32 @virtqueue_enable_cb(%struct.TYPE_11__*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @virtqueue_add_outbuf(%struct.TYPE_11__*, %struct.scatterlist*, i32, %struct.buf_info*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @virtqueue_kick(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @free_buf_info(%struct.cfv_info*, %struct.buf_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
