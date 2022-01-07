; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_xdp_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_xdp_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xdp_frame = type { i64 }
%struct.virtnet_info = type { %struct.receive_queue* }
%struct.receive_queue = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.send_queue = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@XDP_XMIT_FLAGS_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XDP_XMIT_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)* @virtnet_xdp_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtnet_xdp_xmit(%struct.net_device* %0, i32 %1, %struct.xdp_frame** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xdp_frame**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.virtnet_info*, align 8
  %11 = alloca %struct.receive_queue*, align 8
  %12 = alloca %struct.bpf_prog*, align 8
  %13 = alloca %struct.send_queue*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.xdp_frame*, align 8
  %24 = alloca %struct.sk_buff*, align 8
  %25 = alloca %struct.xdp_frame*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.xdp_frame** %2, %struct.xdp_frame*** %8, align 8
  store i32 %3, i32* %9, align 4
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = call %struct.virtnet_info* @netdev_priv(%struct.net_device* %26)
  store %struct.virtnet_info* %27, %struct.virtnet_info** %10, align 8
  %28 = load %struct.virtnet_info*, %struct.virtnet_info** %10, align 8
  %29 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %28, i32 0, i32 0
  %30 = load %struct.receive_queue*, %struct.receive_queue** %29, align 8
  store %struct.receive_queue* %30, %struct.receive_queue** %11, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %31 = load %struct.receive_queue*, %struct.receive_queue** %11, align 8
  %32 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.bpf_prog* @rcu_dereference(i32 %33)
  store %struct.bpf_prog* %34, %struct.bpf_prog** %12, align 8
  %35 = load %struct.bpf_prog*, %struct.bpf_prog** %12, align 8
  %36 = icmp ne %struct.bpf_prog* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %4
  %38 = load i32, i32* @ENXIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %181

40:                                               ; preds = %4
  %41 = load %struct.virtnet_info*, %struct.virtnet_info** %10, align 8
  %42 = call %struct.send_queue* @virtnet_xdp_sq(%struct.virtnet_info* %41)
  store %struct.send_queue* %42, %struct.send_queue** %13, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @XDP_XMIT_FLAGS_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %17, align 4
  br label %141

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %89, %53
  %55 = load %struct.send_queue*, %struct.send_queue** %13, align 8
  %56 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @virtqueue_get_buf(i32 %57, i32* %14)
  store i8* %58, i8** %21, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %92

60:                                               ; preds = %54
  %61 = load i8*, i8** %21, align 8
  %62 = call i32 @is_xdp_frame(i8* %61)
  %63 = call i64 @likely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = load i8*, i8** %21, align 8
  %67 = call %struct.xdp_frame* @ptr_to_xdp(i8* %66)
  store %struct.xdp_frame* %67, %struct.xdp_frame** %23, align 8
  %68 = load %struct.xdp_frame*, %struct.xdp_frame** %23, align 8
  %69 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %16, align 4
  %75 = load %struct.xdp_frame*, %struct.xdp_frame** %23, align 8
  %76 = call i32 @xdp_return_frame(%struct.xdp_frame* %75)
  br label %89

77:                                               ; preds = %60
  %78 = load i8*, i8** %21, align 8
  %79 = bitcast i8* %78 to %struct.sk_buff*
  store %struct.sk_buff* %79, %struct.sk_buff** %24, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %16, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %88 = call i32 @napi_consume_skb(%struct.sk_buff* %87, i32 0)
  br label %89

89:                                               ; preds = %77, %65
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %15, align 4
  br label %54

92:                                               ; preds = %54
  store i32 0, i32* %22, align 4
  br label %93

93:                                               ; preds = %115, %92
  %94 = load i32, i32* %22, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %118

97:                                               ; preds = %93
  %98 = load %struct.xdp_frame**, %struct.xdp_frame*** %8, align 8
  %99 = load i32, i32* %22, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.xdp_frame*, %struct.xdp_frame** %98, i64 %100
  %102 = load %struct.xdp_frame*, %struct.xdp_frame** %101, align 8
  store %struct.xdp_frame* %102, %struct.xdp_frame** %25, align 8
  %103 = load %struct.virtnet_info*, %struct.virtnet_info** %10, align 8
  %104 = load %struct.send_queue*, %struct.send_queue** %13, align 8
  %105 = load %struct.xdp_frame*, %struct.xdp_frame** %25, align 8
  %106 = call i32 @__virtnet_xdp_xmit_one(%struct.virtnet_info* %103, %struct.send_queue* %104, %struct.xdp_frame* %105)
  store i32 %106, i32* %20, align 4
  %107 = load i32, i32* %20, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %97
  %110 = load %struct.xdp_frame*, %struct.xdp_frame** %25, align 8
  %111 = call i32 @xdp_return_frame_rx_napi(%struct.xdp_frame* %110)
  %112 = load i32, i32* %17, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %17, align 4
  br label %114

114:                                              ; preds = %109, %97
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %22, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %22, align 4
  br label %93

118:                                              ; preds = %93
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %17, align 4
  %121 = sub nsw i32 %119, %120
  store i32 %121, i32* %19, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @XDP_XMIT_FLUSH, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %118
  %127 = load %struct.send_queue*, %struct.send_queue** %13, align 8
  %128 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @virtqueue_kick_prepare(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %126
  %133 = load %struct.send_queue*, %struct.send_queue** %13, align 8
  %134 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @virtqueue_notify(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  store i32 1, i32* %18, align 4
  br label %139

139:                                              ; preds = %138, %132, %126
  br label %140

140:                                              ; preds = %139, %118
  br label %141

141:                                              ; preds = %140, %49
  %142 = load %struct.send_queue*, %struct.send_queue** %13, align 8
  %143 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 5
  %145 = call i32 @u64_stats_update_begin(i32* %144)
  %146 = load i32, i32* %16, align 4
  %147 = load %struct.send_queue*, %struct.send_queue** %13, align 8
  %148 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, %146
  store i32 %151, i32* %149, align 4
  %152 = load i32, i32* %15, align 4
  %153 = load %struct.send_queue*, %struct.send_queue** %13, align 8
  %154 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, %152
  store i32 %157, i32* %155, align 4
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.send_queue*, %struct.send_queue** %13, align 8
  %160 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, %158
  store i32 %163, i32* %161, align 4
  %164 = load i32, i32* %17, align 4
  %165 = load %struct.send_queue*, %struct.send_queue** %13, align 8
  %166 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, %164
  store i32 %169, i32* %167, align 4
  %170 = load i32, i32* %18, align 4
  %171 = load %struct.send_queue*, %struct.send_queue** %13, align 8
  %172 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, %170
  store i32 %175, i32* %173, align 4
  %176 = load %struct.send_queue*, %struct.send_queue** %13, align 8
  %177 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 5
  %179 = call i32 @u64_stats_update_end(i32* %178)
  %180 = load i32, i32* %19, align 4
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %141, %37
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local %struct.virtnet_info* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.bpf_prog* @rcu_dereference(i32) #1

declare dso_local %struct.send_queue* @virtnet_xdp_sq(%struct.virtnet_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @virtqueue_get_buf(i32, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @is_xdp_frame(i8*) #1

declare dso_local %struct.xdp_frame* @ptr_to_xdp(i8*) #1

declare dso_local i32 @xdp_return_frame(%struct.xdp_frame*) #1

declare dso_local i32 @napi_consume_skb(%struct.sk_buff*, i32) #1

declare dso_local i32 @__virtnet_xdp_xmit_one(%struct.virtnet_info*, %struct.send_queue*, %struct.xdp_frame*) #1

declare dso_local i32 @xdp_return_frame_rx_napi(%struct.xdp_frame*) #1

declare dso_local i64 @virtqueue_kick_prepare(i32) #1

declare dso_local i64 @virtqueue_notify(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
