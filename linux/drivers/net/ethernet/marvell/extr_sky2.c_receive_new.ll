; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_receive_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_receive_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sky2_port = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rx_ring_info = type { %struct.sk_buff* }
%struct.TYPE_4__ = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sky2_port*, %struct.rx_ring_info*, i32)* @receive_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @receive_new(%struct.sky2_port* %0, %struct.rx_ring_info* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sky2_port*, align 8
  %6 = alloca %struct.rx_ring_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.rx_ring_info, align 8
  %10 = alloca i32, align 4
  store %struct.sky2_port* %0, %struct.sky2_port** %5, align 8
  store %struct.rx_ring_info* %1, %struct.rx_ring_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %12 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %10, align 4
  %14 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.sk_buff* @sky2_rx_alloc(%struct.sky2_port* %14, i32 %15)
  %17 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %9, i32 0, i32 0
  store %struct.sk_buff* %16, %struct.sk_buff** %17, align 8
  %18 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %9, i32 0, i32 0
  %19 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %74

26:                                               ; preds = %3
  %27 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %28 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i64 @sky2_rx_map_skb(i32 %31, %struct.rx_ring_info* %9, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %70

36:                                               ; preds = %26
  %37 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %38 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %37, i32 0, i32 0
  %39 = load %struct.sk_buff*, %struct.sk_buff** %38, align 8
  store %struct.sk_buff* %39, %struct.sk_buff** %8, align 8
  %40 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %41 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %46 = call i32 @sky2_rx_unmap_skb(i32 %44, %struct.rx_ring_info* %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @prefetch(i32 %49)
  %51 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %52 = bitcast %struct.rx_ring_info* %51 to i8*
  %53 = bitcast %struct.rx_ring_info* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 8, i1 false)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %54)
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %36
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @skb_put_frags(%struct.sk_buff* %60, i32 %61, i32 %62)
  br label %68

64:                                               ; preds = %36
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @skb_put(%struct.sk_buff* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %59
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %69, %struct.sk_buff** %4, align 8
  br label %75

70:                                               ; preds = %35
  %71 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %9, i32 0, i32 0
  %72 = load %struct.sk_buff*, %struct.sk_buff** %71, align 8
  %73 = call i32 @dev_kfree_skb(%struct.sk_buff* %72)
  br label %74

74:                                               ; preds = %70, %25
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %75

75:                                               ; preds = %74, %68
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %76
}

declare dso_local %struct.sk_buff* @sky2_rx_alloc(%struct.sky2_port*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @sky2_rx_map_skb(i32, %struct.rx_ring_info*, i32) #1

declare dso_local i32 @sky2_rx_unmap_skb(i32, %struct.rx_ring_info*) #1

declare dso_local i32 @prefetch(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_put_frags(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
