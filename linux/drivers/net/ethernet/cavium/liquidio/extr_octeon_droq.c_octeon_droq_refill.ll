; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_droq.c_octeon_droq_refill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_droq.c_octeon_droq_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }
%struct.octeon_droq = type { i64, i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.octeon_droq_desc* }
%struct.TYPE_4__ = type { i8*, i32*, %struct.octeon_skb_page_info }
%struct.octeon_skb_page_info = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.octeon_droq_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.octeon_device*, %struct.octeon_droq*)* @octeon_droq_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @octeon_droq_refill(%struct.octeon_device* %0, %struct.octeon_droq* %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca %struct.octeon_droq*, align 8
  %5 = alloca %struct.octeon_droq_desc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.octeon_skb_page_info*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store %struct.octeon_droq* %1, %struct.octeon_droq** %4, align 8
  store i8* null, i8** %6, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %11 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %10, i32 0, i32 5
  %12 = load %struct.octeon_droq_desc*, %struct.octeon_droq_desc** %11, align 8
  store %struct.octeon_droq_desc* %12, %struct.octeon_droq_desc** %5, align 8
  br label %13

13:                                               ; preds = %90, %2
  %14 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %15 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %21 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br label %24

24:                                               ; preds = %18, %13
  %25 = phi i1 [ false, %13 ], [ %23, %18 ]
  br i1 %25, label %26, label %131

26:                                               ; preds = %24
  %27 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %28 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %31 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %79, label %37

37:                                               ; preds = %26
  %38 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %39 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %42 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store %struct.octeon_skb_page_info* %45, %struct.octeon_skb_page_info** %9, align 8
  %46 = load %struct.octeon_skb_page_info*, %struct.octeon_skb_page_info** %9, align 8
  %47 = getelementptr inbounds %struct.octeon_skb_page_info, %struct.octeon_skb_page_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %37
  %51 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %52 = load %struct.octeon_skb_page_info*, %struct.octeon_skb_page_info** %9, align 8
  %53 = call i8* @recv_buffer_reuse(%struct.octeon_device* %51, %struct.octeon_skb_page_info* %52)
  store i8* %53, i8** %6, align 8
  br label %58

54:                                               ; preds = %37
  %55 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %56 = load %struct.octeon_skb_page_info*, %struct.octeon_skb_page_info** %9, align 8
  %57 = call i8* @recv_buffer_alloc(%struct.octeon_device* %55, %struct.octeon_skb_page_info* %56)
  store i8* %57, i8** %6, align 8
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i8*, i8** %6, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %63 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  br label %131

67:                                               ; preds = %58
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %70 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %69, i32 0, i32 3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %73 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i8* %68, i8** %76, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = call i32* @get_rbd(i8* %77)
  store i32* %78, i32** %7, align 8
  br label %90

79:                                               ; preds = %26
  %80 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %81 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %80, i32 0, i32 3
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %84 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32* @get_rbd(i8* %88)
  store i32* %89, i32** %7, align 8
  br label %90

90:                                               ; preds = %79, %67
  %91 = load i32*, i32** %7, align 8
  %92 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %93 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %92, i32 0, i32 3
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %96 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  store i32* %91, i32** %99, align 8
  %100 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %101 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %100, i32 0, i32 3
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %104 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @lio_map_ring(i8* %108)
  %110 = load %struct.octeon_droq_desc*, %struct.octeon_droq_desc** %5, align 8
  %111 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %112 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.octeon_droq_desc, %struct.octeon_droq_desc* %110, i64 %113
  %115 = getelementptr inbounds %struct.octeon_droq_desc, %struct.octeon_droq_desc* %114, i32 0, i32 0
  store i32 %109, i32* %115, align 4
  %116 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %117 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %120 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @incr_index(i64 %118, i32 1, i64 %121)
  %123 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %124 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  %125 = load i64, i64* %8, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %8, align 8
  %127 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %128 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, -1
  store i64 %130, i64* %128, align 8
  br label %13

131:                                              ; preds = %61, %24
  %132 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %133 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %138 = load %struct.octeon_droq_desc*, %struct.octeon_droq_desc** %5, align 8
  %139 = call i64 @octeon_droq_refill_pullup_descs(%struct.octeon_droq* %137, %struct.octeon_droq_desc* %138)
  %140 = load i64, i64* %8, align 8
  %141 = add nsw i64 %140, %139
  store i64 %141, i64* %8, align 8
  br label %142

142:                                              ; preds = %136, %131
  %143 = load i64, i64* %8, align 8
  ret i64 %143
}

declare dso_local i8* @recv_buffer_reuse(%struct.octeon_device*, %struct.octeon_skb_page_info*) #1

declare dso_local i8* @recv_buffer_alloc(%struct.octeon_device*, %struct.octeon_skb_page_info*) #1

declare dso_local i32* @get_rbd(i8*) #1

declare dso_local i32 @lio_map_ring(i8*) #1

declare dso_local i64 @incr_index(i64, i32, i64) #1

declare dso_local i64 @octeon_droq_refill_pullup_descs(%struct.octeon_droq*, %struct.octeon_droq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
