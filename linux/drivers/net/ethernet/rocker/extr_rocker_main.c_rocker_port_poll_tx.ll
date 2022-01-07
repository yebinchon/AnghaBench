; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_poll_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_poll_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }
%struct.rocker_port = type { i32, %struct.TYPE_6__*, %struct.rocker* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.rocker = type { i32 }
%struct.rocker_desc_info = type { i32 }
%struct.sk_buff = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"tx desc received with err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @rocker_port_poll_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_port_poll_tx(%struct.napi_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rocker_port*, align 8
  %6 = alloca %struct.rocker*, align 8
  %7 = alloca %struct.rocker_desc_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %12 = call %struct.rocker_port* @rocker_port_napi_tx_get(%struct.napi_struct* %11)
  store %struct.rocker_port* %12, %struct.rocker_port** %5, align 8
  %13 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %14 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %13, i32 0, i32 2
  %15 = load %struct.rocker*, %struct.rocker** %14, align 8
  store %struct.rocker* %15, %struct.rocker** %6, align 8
  store i64 0, i64* %8, align 8
  br label %16

16:                                               ; preds = %71, %2
  %17 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %18 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %17, i32 0, i32 0
  %19 = call %struct.rocker_desc_info* @rocker_desc_tail_get(i32* %18)
  store %struct.rocker_desc_info* %19, %struct.rocker_desc_info** %7, align 8
  %20 = icmp ne %struct.rocker_desc_info* %19, null
  br i1 %20, label %21, label %76

21:                                               ; preds = %16
  %22 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %7, align 8
  %23 = call i32 @rocker_desc_err(%struct.rocker_desc_info* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = call i64 (...) @net_ratelimit()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %31 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @netdev_err(%struct.TYPE_6__* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %29, %26, %21
  %36 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %37 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %7, align 8
  %38 = call i32 @rocker_tx_desc_frags_unmap(%struct.rocker_port* %36, %struct.rocker_desc_info* %37)
  %39 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %7, align 8
  %40 = call %struct.sk_buff* @rocker_desc_cookie_ptr_get(%struct.rocker_desc_info* %39)
  store %struct.sk_buff* %40, %struct.sk_buff** %10, align 8
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %35
  %44 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %45 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %55 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %53
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  br label %71

63:                                               ; preds = %35
  %64 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %65 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %63, %43
  %72 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %73 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %72)
  %74 = load i64, i64* %8, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %8, align 8
  br label %16

76:                                               ; preds = %16
  %77 = load i64, i64* %8, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %81 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = call i64 @netif_queue_stopped(%struct.TYPE_6__* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %87 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = call i32 @netif_wake_queue(%struct.TYPE_6__* %88)
  br label %90

90:                                               ; preds = %85, %79, %76
  %91 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %92 = call i32 @napi_complete(%struct.napi_struct* %91)
  %93 = load %struct.rocker*, %struct.rocker** %6, align 8
  %94 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %95 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %94, i32 0, i32 0
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @rocker_dma_ring_credits_set(%struct.rocker* %93, i32* %95, i64 %96)
  ret i32 0
}

declare dso_local %struct.rocker_port* @rocker_port_napi_tx_get(%struct.napi_struct*) #1

declare dso_local %struct.rocker_desc_info* @rocker_desc_tail_get(i32*) #1

declare dso_local i32 @rocker_desc_err(%struct.rocker_desc_info*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @rocker_tx_desc_frags_unmap(%struct.rocker_port*, %struct.rocker_desc_info*) #1

declare dso_local %struct.sk_buff* @rocker_desc_cookie_ptr_get(%struct.rocker_desc_info*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @netif_queue_stopped(%struct.TYPE_6__*) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_6__*) #1

declare dso_local i32 @napi_complete(%struct.napi_struct*) #1

declare dso_local i32 @rocker_dma_ring_credits_set(%struct.rocker*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
