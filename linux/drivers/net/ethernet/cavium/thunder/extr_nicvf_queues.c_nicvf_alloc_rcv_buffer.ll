; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_alloc_rcv_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_alloc_rcv_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i64, i32*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.rbdr = type { i64 }
%struct.pgcache = type { i64, i32* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@XDP_PACKET_HEADROOM = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_ATTR_SKIP_CPU_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicvf*, %struct.rbdr*, i32, i64, i64*)* @nicvf_alloc_rcv_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_alloc_rcv_buffer(%struct.nicvf* %0, %struct.rbdr* %1, i32 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nicvf*, align 8
  %8 = alloca %struct.rbdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.pgcache*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %7, align 8
  store %struct.rbdr* %1, %struct.rbdr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store %struct.pgcache* null, %struct.pgcache** %12, align 8
  %13 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %14 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %5
  %18 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %19 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %24 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %10, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* @PAGE_SIZE, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %32 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  br label %83

35:                                               ; preds = %22, %17, %5
  %36 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %37 = call i32 @nicvf_get_page(%struct.nicvf* %36)
  %38 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %39 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %41 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call %struct.pgcache* @nicvf_alloc_page(%struct.nicvf* %40, %struct.rbdr* %41, i32 %42)
  store %struct.pgcache* %43, %struct.pgcache** %12, align 8
  %44 = load %struct.pgcache*, %struct.pgcache** %12, align 8
  %45 = icmp ne %struct.pgcache* %44, null
  br i1 %45, label %62, label %46

46:                                               ; preds = %35
  %47 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %48 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %46
  %52 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %53 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %52, i32 0, i32 3
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @this_cpu_inc(i32 %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %158

62:                                               ; preds = %46, %35
  %63 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %64 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %66 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i64, i64* @XDP_PACKET_HEADROOM, align 8
  %71 = load i64, i64* %10, align 8
  %72 = add nsw i64 %71, %70
  store i64 %72, i64* %10, align 8
  br label %73

73:                                               ; preds = %69, %62
  %74 = load %struct.pgcache*, %struct.pgcache** %12, align 8
  %75 = icmp ne %struct.pgcache* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.pgcache*, %struct.pgcache** %12, align 8
  %78 = getelementptr inbounds %struct.pgcache, %struct.pgcache* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %81 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %80, i32 0, i32 1
  store i32* %79, i32** %81, align 8
  br label %82

82:                                               ; preds = %76, %73
  br label %83

83:                                               ; preds = %82, %30
  %84 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %85 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load %struct.pgcache*, %struct.pgcache** %12, align 8
  %90 = icmp ne %struct.pgcache* %89, null
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load %struct.pgcache*, %struct.pgcache** %12, align 8
  %93 = getelementptr inbounds %struct.pgcache, %struct.pgcache* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.pgcache*, %struct.pgcache** %12, align 8
  %98 = getelementptr inbounds %struct.pgcache, %struct.pgcache* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64*, i64** %11, align 8
  store i64 %99, i64* %100, align 8
  br label %157

101:                                              ; preds = %91, %88, %83
  %102 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %103 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %102, i32 0, i32 2
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %107 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %110 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %10, align 8
  %113 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %114 = load i32, i32* @DMA_ATTR_SKIP_CPU_SYNC, align 4
  %115 = call i64 @dma_map_page_attrs(i32* %105, i32* %108, i64 %111, i64 %112, i32 %113, i32 %114)
  %116 = load i64*, i64** %11, align 8
  store i64 %115, i64* %116, align 8
  %117 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %118 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %117, i32 0, i32 2
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i64*, i64** %11, align 8
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i64 @dma_mapping_error(i32* %120, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %101
  %127 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %128 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %133 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @__free_pages(i32* %134, i32 0)
  br label %136

136:                                              ; preds = %131, %126
  %137 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %138 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %137, i32 0, i32 1
  store i32* null, i32** %138, align 8
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %6, align 4
  br label %158

141:                                              ; preds = %101
  %142 = load %struct.pgcache*, %struct.pgcache** %12, align 8
  %143 = icmp ne %struct.pgcache* %142, null
  br i1 %143, label %144, label %151

144:                                              ; preds = %141
  %145 = load i64*, i64** %11, align 8
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @XDP_PACKET_HEADROOM, align 8
  %148 = add nsw i64 %146, %147
  %149 = load %struct.pgcache*, %struct.pgcache** %12, align 8
  %150 = getelementptr inbounds %struct.pgcache, %struct.pgcache* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %144, %141
  %152 = load i64, i64* %10, align 8
  %153 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %154 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %155, %152
  store i64 %156, i64* %154, align 8
  br label %157

157:                                              ; preds = %151, %96
  store i32 0, i32* %6, align 4
  br label %158

158:                                              ; preds = %157, %136, %51
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local i32 @nicvf_get_page(%struct.nicvf*) #1

declare dso_local %struct.pgcache* @nicvf_alloc_page(%struct.nicvf*, %struct.rbdr*, i32) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i64 @dma_map_page_attrs(i32*, i32*, i64, i64, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @__free_pages(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
