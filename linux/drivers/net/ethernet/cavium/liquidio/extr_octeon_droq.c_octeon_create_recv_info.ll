; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_droq.c_octeon_create_recv_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_droq.c_octeon_create_recv_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_recv_info = type { %struct.octeon_recv_pkt* }
%struct.octeon_recv_pkt = type { i64, i64*, i32**, i8*, i8*, i32 }
%struct.octeon_device = type { i32, i64 }
%struct.octeon_droq = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.octeon_skb_page_info, i64 }
%struct.octeon_skb_page_info = type { i64, i32* }
%struct.octeon_droq_info = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.octeon_recv_info* (%struct.octeon_device*, %struct.octeon_droq*, i64, i64)* @octeon_create_recv_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.octeon_recv_info* @octeon_create_recv_info(%struct.octeon_device* %0, %struct.octeon_droq* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.octeon_recv_info*, align 8
  %6 = alloca %struct.octeon_device*, align 8
  %7 = alloca %struct.octeon_droq*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.octeon_droq_info*, align 8
  %11 = alloca %struct.octeon_recv_pkt*, align 8
  %12 = alloca %struct.octeon_recv_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.octeon_skb_page_info*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %6, align 8
  store %struct.octeon_droq* %1, %struct.octeon_droq** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.octeon_droq*, %struct.octeon_droq** %7, align 8
  %17 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.octeon_droq_info*
  store %struct.octeon_droq_info* %23, %struct.octeon_droq_info** %10, align 8
  %24 = call %struct.octeon_recv_info* @octeon_alloc_recv_info(i32 4)
  store %struct.octeon_recv_info* %24, %struct.octeon_recv_info** %12, align 8
  %25 = load %struct.octeon_recv_info*, %struct.octeon_recv_info** %12, align 8
  %26 = icmp ne %struct.octeon_recv_info* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  store %struct.octeon_recv_info* null, %struct.octeon_recv_info** %5, align 8
  br label %129

28:                                               ; preds = %4
  %29 = load %struct.octeon_recv_info*, %struct.octeon_recv_info** %12, align 8
  %30 = getelementptr inbounds %struct.octeon_recv_info, %struct.octeon_recv_info* %29, i32 0, i32 0
  %31 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %30, align 8
  store %struct.octeon_recv_pkt* %31, %struct.octeon_recv_pkt** %11, align 8
  %32 = load %struct.octeon_droq_info*, %struct.octeon_droq_info** %10, align 8
  %33 = getelementptr inbounds %struct.octeon_droq_info, %struct.octeon_droq_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %11, align 8
  %36 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load %struct.octeon_droq_info*, %struct.octeon_droq_info** %10, align 8
  %38 = getelementptr inbounds %struct.octeon_droq_info, %struct.octeon_droq_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %11, align 8
  %41 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %8, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %11, align 8
  %45 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %47 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %11, align 8
  %51 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  store i64 0, i64* %13, align 8
  %52 = load %struct.octeon_droq_info*, %struct.octeon_droq_info** %10, align 8
  %53 = getelementptr inbounds %struct.octeon_droq_info, %struct.octeon_droq_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %14, align 8
  br label %55

55:                                               ; preds = %88, %28
  %56 = load i64, i64* %8, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %127

58:                                               ; preds = %55
  %59 = load %struct.octeon_droq*, %struct.octeon_droq** %7, align 8
  %60 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store %struct.octeon_skb_page_info* %64, %struct.octeon_skb_page_info** %15, align 8
  %65 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %66 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.octeon_skb_page_info*, %struct.octeon_skb_page_info** %15, align 8
  %69 = getelementptr inbounds %struct.octeon_skb_page_info, %struct.octeon_skb_page_info* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @lio_unmap_ring(i32 %67, i32 %71)
  %73 = load %struct.octeon_skb_page_info*, %struct.octeon_skb_page_info** %15, align 8
  %74 = getelementptr inbounds %struct.octeon_skb_page_info, %struct.octeon_skb_page_info* %73, i32 0, i32 1
  store i32* null, i32** %74, align 8
  %75 = load %struct.octeon_skb_page_info*, %struct.octeon_skb_page_info** %15, align 8
  %76 = getelementptr inbounds %struct.octeon_skb_page_info, %struct.octeon_skb_page_info* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load i64, i64* %14, align 8
  %78 = load %struct.octeon_droq*, %struct.octeon_droq** %7, align 8
  %79 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp uge i64 %77, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %58
  %83 = load %struct.octeon_droq*, %struct.octeon_droq** %7, align 8
  %84 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  br label %88

86:                                               ; preds = %58
  %87 = load i64, i64* %14, align 8
  br label %88

88:                                               ; preds = %86, %82
  %89 = phi i64 [ %85, %82 ], [ %87, %86 ]
  %90 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %11, align 8
  %91 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* %13, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  store i64 %89, i64* %94, align 8
  %95 = load %struct.octeon_droq*, %struct.octeon_droq** %7, align 8
  %96 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %11, align 8
  %103 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %102, i32 0, i32 2
  %104 = load i32**, i32*** %103, align 8
  %105 = load i64, i64* %13, align 8
  %106 = getelementptr inbounds i32*, i32** %104, i64 %105
  store i32* %101, i32** %106, align 8
  %107 = load %struct.octeon_droq*, %struct.octeon_droq** %7, align 8
  %108 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %107, i32 0, i32 2
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i64, i64* %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i32* null, i32** %112, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load %struct.octeon_droq*, %struct.octeon_droq** %7, align 8
  %115 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @incr_index(i64 %113, i32 1, i32 %116)
  store i64 %117, i64* %9, align 8
  %118 = load %struct.octeon_droq*, %struct.octeon_droq** %7, align 8
  %119 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %14, align 8
  %122 = sub i64 %121, %120
  store i64 %122, i64* %14, align 8
  %123 = load i64, i64* %13, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %13, align 8
  %125 = load i64, i64* %8, align 8
  %126 = add i64 %125, -1
  store i64 %126, i64* %8, align 8
  br label %55

127:                                              ; preds = %55
  %128 = load %struct.octeon_recv_info*, %struct.octeon_recv_info** %12, align 8
  store %struct.octeon_recv_info* %128, %struct.octeon_recv_info** %5, align 8
  br label %129

129:                                              ; preds = %127, %27
  %130 = load %struct.octeon_recv_info*, %struct.octeon_recv_info** %5, align 8
  ret %struct.octeon_recv_info* %130
}

declare dso_local %struct.octeon_recv_info* @octeon_alloc_recv_info(i32) #1

declare dso_local i32 @lio_unmap_ring(i32, i32) #1

declare dso_local i64 @incr_index(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
