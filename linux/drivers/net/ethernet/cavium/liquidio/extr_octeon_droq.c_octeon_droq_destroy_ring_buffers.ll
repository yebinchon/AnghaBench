; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_droq.c_octeon_droq_destroy_ring_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_droq.c_octeon_droq_destroy_ring_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }
%struct.octeon_droq = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.octeon_skb_page_info }
%struct.octeon_skb_page_info = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, %struct.octeon_droq*)* @octeon_droq_destroy_ring_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_droq_destroy_ring_buffers(%struct.octeon_device* %0, %struct.octeon_droq* %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca %struct.octeon_droq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.octeon_skb_page_info*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store %struct.octeon_droq* %1, %struct.octeon_droq** %4, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %61, %2
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %10 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %64

13:                                               ; preds = %7
  %14 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %15 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store %struct.octeon_skb_page_info* %19, %struct.octeon_skb_page_info** %6, align 8
  %20 = load %struct.octeon_skb_page_info*, %struct.octeon_skb_page_info** %6, align 8
  %21 = icmp ne %struct.octeon_skb_page_info* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  br label %61

23:                                               ; preds = %13
  %24 = load %struct.octeon_skb_page_info*, %struct.octeon_skb_page_info** %6, align 8
  %25 = getelementptr inbounds %struct.octeon_skb_page_info, %struct.octeon_skb_page_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %30 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.octeon_skb_page_info*, %struct.octeon_skb_page_info** %6, align 8
  %33 = getelementptr inbounds %struct.octeon_skb_page_info, %struct.octeon_skb_page_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @lio_unmap_ring(i32 %31, i32 %35)
  br label %37

37:                                               ; preds = %28, %23
  %38 = load %struct.octeon_skb_page_info*, %struct.octeon_skb_page_info** %6, align 8
  %39 = getelementptr inbounds %struct.octeon_skb_page_info, %struct.octeon_skb_page_info* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.octeon_skb_page_info*, %struct.octeon_skb_page_info** %6, align 8
  %41 = getelementptr inbounds %struct.octeon_skb_page_info, %struct.octeon_skb_page_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %46 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.octeon_skb_page_info*, %struct.octeon_skb_page_info** %6, align 8
  %53 = call i32 @recv_buffer_destroy(i32* %51, %struct.octeon_skb_page_info* %52)
  br label %54

54:                                               ; preds = %44, %37
  %55 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %56 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %54, %22
  %62 = load i64, i64* %5, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %5, align 8
  br label %7

64:                                               ; preds = %7
  %65 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %66 = call i32 @octeon_droq_reset_indices(%struct.octeon_droq* %65)
  ret void
}

declare dso_local i32 @lio_unmap_ring(i32, i32) #1

declare dso_local i32 @recv_buffer_destroy(i32*, %struct.octeon_skb_page_info*) #1

declare dso_local i32 @octeon_droq_reset_indices(%struct.octeon_droq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
