; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_rx-offload.c_can_rx_offload_offload_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_rx-offload.c_can_rx_offload_offload_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.can_rx_offload = type { i64, i32 (%struct.can_rx_offload*, %struct.can_frame*, i32*, i32)*, %struct.TYPE_4__*, i32 }
%struct.can_frame = type opaque
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.can_rx_offload_cb = type { i32 }
%struct.can_frame.0 = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.can_rx_offload*, i32)* @can_rx_offload_offload_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @can_rx_offload_offload_one(%struct.can_rx_offload* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.can_rx_offload*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.can_rx_offload_cb*, align 8
  %9 = alloca %struct.can_frame.0*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.can_frame.0, align 4
  %12 = alloca i32, align 4
  store %struct.can_rx_offload* %0, %struct.can_rx_offload** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %13 = load %struct.can_rx_offload*, %struct.can_rx_offload** %4, align 8
  %14 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %13, i32 0, i32 3
  %15 = call i64 @skb_queue_len(i32* %14)
  %16 = load %struct.can_rx_offload*, %struct.can_rx_offload** %4, align 8
  %17 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @likely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %2
  %24 = load %struct.can_rx_offload*, %struct.can_rx_offload** %4, align 8
  %25 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call %struct.sk_buff* @alloc_can_skb(%struct.TYPE_4__* %26, %struct.can_frame.0** %9)
  store %struct.sk_buff* %27, %struct.sk_buff** %6, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.sk_buff* @ERR_PTR(i32 %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %7, align 8
  br label %38

38:                                               ; preds = %34, %23
  br label %43

39:                                               ; preds = %2
  %40 = load i32, i32* @ENOBUFS, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.sk_buff* @ERR_PTR(i32 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %7, align 8
  br label %43

43:                                               ; preds = %39, %38
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = ptrtoint %struct.sk_buff* %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %43
  %49 = load %struct.can_rx_offload*, %struct.can_rx_offload** %4, align 8
  %50 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %49, i32 0, i32 1
  %51 = load i32 (%struct.can_rx_offload*, %struct.can_frame*, i32*, i32)*, i32 (%struct.can_rx_offload*, %struct.can_frame*, i32*, i32)** %50, align 8
  %52 = load %struct.can_rx_offload*, %struct.can_rx_offload** %4, align 8
  %53 = bitcast %struct.can_frame.0* %11 to %struct.can_frame*
  %54 = load i32, i32* %5, align 4
  %55 = call i32 %51(%struct.can_rx_offload* %52, %struct.can_frame* %53, i32* %12, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %137

63:                                               ; preds = %48
  %64 = load %struct.can_rx_offload*, %struct.can_rx_offload** %4, align 8
  %65 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.can_rx_offload*, %struct.can_rx_offload** %4, align 8
  %72 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %63
  %84 = load i32, i32* %10, align 4
  %85 = call %struct.sk_buff* @ERR_PTR(i32 %84)
  store %struct.sk_buff* %85, %struct.sk_buff** %3, align 8
  br label %137

86:                                               ; preds = %63
  %87 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %87, %struct.sk_buff** %3, align 8
  br label %137

88:                                               ; preds = %43
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = call %struct.can_rx_offload_cb* @can_rx_offload_get_cb(%struct.sk_buff* %89)
  store %struct.can_rx_offload_cb* %90, %struct.can_rx_offload_cb** %8, align 8
  %91 = load %struct.can_rx_offload*, %struct.can_rx_offload** %4, align 8
  %92 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %91, i32 0, i32 1
  %93 = load i32 (%struct.can_rx_offload*, %struct.can_frame*, i32*, i32)*, i32 (%struct.can_rx_offload*, %struct.can_frame*, i32*, i32)** %92, align 8
  %94 = load %struct.can_rx_offload*, %struct.can_rx_offload** %4, align 8
  %95 = load %struct.can_frame.0*, %struct.can_frame.0** %9, align 8
  %96 = bitcast %struct.can_frame.0* %95 to %struct.can_frame*
  %97 = load %struct.can_rx_offload_cb*, %struct.can_rx_offload_cb** %8, align 8
  %98 = getelementptr inbounds %struct.can_rx_offload_cb, %struct.can_rx_offload_cb* %97, i32 0, i32 0
  %99 = load i32, i32* %5, align 4
  %100 = call i32 %93(%struct.can_rx_offload* %94, %struct.can_frame* %96, i32* %98, i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i64 @unlikely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %88
  %108 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %109 = call i32 @kfree_skb(%struct.sk_buff* %108)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %137

110:                                              ; preds = %88
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i64 @unlikely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %135

116:                                              ; preds = %110
  %117 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %118 = call i32 @kfree_skb(%struct.sk_buff* %117)
  %119 = load %struct.can_rx_offload*, %struct.can_rx_offload** %4, align 8
  %120 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %119, i32 0, i32 2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  %126 = load %struct.can_rx_offload*, %struct.can_rx_offload** %4, align 8
  %127 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %126, i32 0, i32 2
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* %10, align 4
  %134 = call %struct.sk_buff* @ERR_PTR(i32 %133)
  store %struct.sk_buff* %134, %struct.sk_buff** %3, align 8
  br label %137

135:                                              ; preds = %110
  %136 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %136, %struct.sk_buff** %3, align 8
  br label %137

137:                                              ; preds = %135, %116, %107, %86, %83, %62
  %138 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %138
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.TYPE_4__*, %struct.can_frame.0**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.can_rx_offload_cb* @can_rx_offload_get_cb(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
