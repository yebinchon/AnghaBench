; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_free_rbdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_free_rbdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rbdr = type { i32, i32, i32, i32, %struct.TYPE_4__, i64, %struct.pgcache* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pgcache = type { i64, i64 }
%struct.rbdr_entry_t = type { i64 }

@RCV_FRAG_LEN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_ATTR_SKIP_CPU_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*, %struct.rbdr*)* @nicvf_free_rbdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_free_rbdr(%struct.nicvf* %0, %struct.rbdr* %1) #0 {
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca %struct.rbdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pgcache*, align 8
  %10 = alloca %struct.rbdr_entry_t*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %3, align 8
  store %struct.rbdr* %1, %struct.rbdr** %4, align 8
  %11 = load %struct.rbdr*, %struct.rbdr** %4, align 8
  %12 = icmp ne %struct.rbdr* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %148

14:                                               ; preds = %2
  %15 = load %struct.rbdr*, %struct.rbdr** %4, align 8
  %16 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.rbdr*, %struct.rbdr** %4, align 8
  %18 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %148

23:                                               ; preds = %14
  %24 = load %struct.rbdr*, %struct.rbdr** %4, align 8
  %25 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  %27 = load %struct.rbdr*, %struct.rbdr** %4, align 8
  %28 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %60, %23
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %70

34:                                               ; preds = %30
  %35 = load %struct.rbdr*, %struct.rbdr** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.rbdr_entry_t* @GET_RBDR_DESC(%struct.rbdr* %35, i32 %36)
  store %struct.rbdr_entry_t* %37, %struct.rbdr_entry_t** %10, align 8
  %38 = load %struct.rbdr_entry_t*, %struct.rbdr_entry_t** %10, align 8
  %39 = getelementptr inbounds %struct.rbdr_entry_t, %struct.rbdr_entry_t* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %7, align 8
  %41 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @nicvf_iova_to_phys(%struct.nicvf* %41, i64 %42)
  store i64 %43, i64* %8, align 8
  %44 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %45 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* @RCV_FRAG_LEN, align 4
  %50 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %51 = load i32, i32* @DMA_ATTR_SKIP_CPU_SYNC, align 4
  %52 = call i32 @dma_unmap_page_attrs(i32* %47, i64 %48, i32 %49, i32 %50, i32 %51)
  %53 = load i64, i64* %8, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %34
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @phys_to_virt(i64 %56)
  %58 = call i64 @virt_to_page(i32 %57)
  %59 = call i32 @put_page(i64 %58)
  br label %60

60:                                               ; preds = %55, %34
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  %63 = load %struct.rbdr*, %struct.rbdr** %4, align 8
  %64 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %30

70:                                               ; preds = %30
  %71 = load %struct.rbdr*, %struct.rbdr** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call %struct.rbdr_entry_t* @GET_RBDR_DESC(%struct.rbdr* %71, i32 %72)
  store %struct.rbdr_entry_t* %73, %struct.rbdr_entry_t** %10, align 8
  %74 = load %struct.rbdr_entry_t*, %struct.rbdr_entry_t** %10, align 8
  %75 = getelementptr inbounds %struct.rbdr_entry_t, %struct.rbdr_entry_t* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %7, align 8
  %77 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i64 @nicvf_iova_to_phys(%struct.nicvf* %77, i64 %78)
  store i64 %79, i64* %8, align 8
  %80 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %81 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64, i64* %7, align 8
  %85 = load i32, i32* @RCV_FRAG_LEN, align 4
  %86 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %87 = load i32, i32* @DMA_ATTR_SKIP_CPU_SYNC, align 4
  %88 = call i32 @dma_unmap_page_attrs(i32* %83, i64 %84, i32 %85, i32 %86, i32 %87)
  %89 = load i64, i64* %8, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %70
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @phys_to_virt(i64 %92)
  %94 = call i64 @virt_to_page(i32 %93)
  %95 = call i32 @put_page(i64 %94)
  br label %96

96:                                               ; preds = %91, %70
  %97 = call i32 (...) @smp_rmb()
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %140, %96
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.rbdr*, %struct.rbdr** %4, align 8
  %101 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %143

104:                                              ; preds = %98
  %105 = load %struct.rbdr*, %struct.rbdr** %4, align 8
  %106 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %105, i32 0, i32 6
  %107 = load %struct.pgcache*, %struct.pgcache** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.pgcache, %struct.pgcache* %107, i64 %109
  store %struct.pgcache* %110, %struct.pgcache** %9, align 8
  %111 = load %struct.pgcache*, %struct.pgcache** %9, align 8
  %112 = getelementptr inbounds %struct.pgcache, %struct.pgcache* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %140

115:                                              ; preds = %104
  %116 = load %struct.pgcache*, %struct.pgcache** %9, align 8
  %117 = getelementptr inbounds %struct.pgcache, %struct.pgcache* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i64 @page_ref_count(i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %140

121:                                              ; preds = %115
  %122 = load %struct.rbdr*, %struct.rbdr** %4, align 8
  %123 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load %struct.pgcache*, %struct.pgcache** %9, align 8
  %128 = getelementptr inbounds %struct.pgcache, %struct.pgcache* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.pgcache*, %struct.pgcache** %9, align 8
  %131 = getelementptr inbounds %struct.pgcache, %struct.pgcache* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %132, 1
  %134 = call i32 @page_ref_sub(i64 %129, i64 %133)
  br label %135

135:                                              ; preds = %126, %121
  %136 = load %struct.pgcache*, %struct.pgcache** %9, align 8
  %137 = getelementptr inbounds %struct.pgcache, %struct.pgcache* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @put_page(i64 %138)
  br label %140

140:                                              ; preds = %135, %115, %104
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %98

143:                                              ; preds = %98
  %144 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %145 = load %struct.rbdr*, %struct.rbdr** %4, align 8
  %146 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %145, i32 0, i32 4
  %147 = call i32 @nicvf_free_q_desc_mem(%struct.nicvf* %144, %struct.TYPE_4__* %146)
  br label %148

148:                                              ; preds = %143, %22, %13
  ret void
}

declare dso_local %struct.rbdr_entry_t* @GET_RBDR_DESC(%struct.rbdr*, i32) #1

declare dso_local i64 @nicvf_iova_to_phys(%struct.nicvf*, i64) #1

declare dso_local i32 @dma_unmap_page_attrs(i32*, i64, i32, i32, i32) #1

declare dso_local i32 @put_page(i64) #1

declare dso_local i64 @virt_to_page(i32) #1

declare dso_local i32 @phys_to_virt(i64) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @page_ref_count(i64) #1

declare dso_local i32 @page_ref_sub(i64, i64) #1

declare dso_local i32 @nicvf_free_q_desc_mem(%struct.nicvf*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
