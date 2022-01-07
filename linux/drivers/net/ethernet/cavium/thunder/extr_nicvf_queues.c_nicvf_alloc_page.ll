; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_alloc_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_alloc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgcache = type { i32, %struct.page*, i64 }
%struct.page = type { i32 }
%struct.nicvf = type { %struct.page*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rbdr = type { i64, i32, i32, %struct.pgcache*, i64 }

@__GFP_COMP = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@XDP_PAGE_REFCNT_REFILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pgcache* (%struct.nicvf*, %struct.rbdr*, i32)* @nicvf_alloc_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pgcache* @nicvf_alloc_page(%struct.nicvf* %0, %struct.rbdr* %1, i32 %2) #0 {
  %4 = alloca %struct.pgcache*, align 8
  %5 = alloca %struct.nicvf*, align 8
  %6 = alloca %struct.rbdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.pgcache*, align 8
  %11 = alloca %struct.pgcache*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %5, align 8
  store %struct.rbdr* %1, %struct.rbdr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.page* null, %struct.page** %9, align 8
  %12 = load %struct.rbdr*, %struct.rbdr** %6, align 8
  %13 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %12, i32 0, i32 3
  %14 = load %struct.pgcache*, %struct.pgcache** %13, align 8
  %15 = load %struct.rbdr*, %struct.rbdr** %6, align 8
  %16 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.pgcache, %struct.pgcache* %14, i64 %17
  store %struct.pgcache* %18, %struct.pgcache** %10, align 8
  %19 = load %struct.pgcache*, %struct.pgcache** %10, align 8
  %20 = getelementptr inbounds %struct.pgcache, %struct.pgcache* %19, i32 0, i32 1
  %21 = load %struct.page*, %struct.page** %20, align 8
  store %struct.page* %21, %struct.page** %9, align 8
  %22 = load %struct.page*, %struct.page** %9, align 8
  %23 = icmp ne %struct.page* %22, null
  br i1 %23, label %24, label %50

24:                                               ; preds = %3
  %25 = load %struct.page*, %struct.page** %9, align 8
  %26 = call i32 @page_ref_count(%struct.page* %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.rbdr*, %struct.rbdr** %6, align 8
  %28 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.pgcache*, %struct.pgcache** %10, align 8
  %34 = getelementptr inbounds %struct.pgcache, %struct.pgcache* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.pgcache*, %struct.pgcache** %10, align 8
  %39 = getelementptr inbounds %struct.pgcache, %struct.pgcache* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 8
  br label %43

42:                                               ; preds = %31
  store %struct.page* null, %struct.page** %9, align 8
  br label %43

43:                                               ; preds = %42, %37
  br label %49

44:                                               ; preds = %24
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store %struct.page* null, %struct.page** %9, align 8
  br label %48

48:                                               ; preds = %47, %44
  br label %49

49:                                               ; preds = %48, %43
  br label %50

50:                                               ; preds = %49, %3
  %51 = load %struct.page*, %struct.page** %9, align 8
  %52 = icmp ne %struct.page* %51, null
  br i1 %52, label %95, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @__GFP_COMP, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @__GFP_NOWARN, align 4
  %58 = or i32 %56, %57
  %59 = call %struct.page* @alloc_pages(i32 %58, i32 0)
  store %struct.page* %59, %struct.page** %9, align 8
  %60 = load %struct.page*, %struct.page** %9, align 8
  %61 = icmp ne %struct.page* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  store %struct.pgcache* null, %struct.pgcache** %4, align 8
  br label %148

63:                                               ; preds = %53
  %64 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %65 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @this_cpu_inc(i32 %70)
  %72 = load %struct.rbdr*, %struct.rbdr** %6, align 8
  %73 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.rbdr*, %struct.rbdr** %6, align 8
  %76 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp sge i32 %74, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %63
  %80 = load %struct.page*, %struct.page** %9, align 8
  %81 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %82 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %81, i32 0, i32 0
  store %struct.page* %80, %struct.page** %82, align 8
  store %struct.pgcache* null, %struct.pgcache** %4, align 8
  br label %148

83:                                               ; preds = %63
  %84 = load %struct.page*, %struct.page** %9, align 8
  %85 = load %struct.pgcache*, %struct.pgcache** %10, align 8
  %86 = getelementptr inbounds %struct.pgcache, %struct.pgcache* %85, i32 0, i32 1
  store %struct.page* %84, %struct.page** %86, align 8
  %87 = load %struct.pgcache*, %struct.pgcache** %10, align 8
  %88 = getelementptr inbounds %struct.pgcache, %struct.pgcache* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load %struct.pgcache*, %struct.pgcache** %10, align 8
  %90 = getelementptr inbounds %struct.pgcache, %struct.pgcache* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  %91 = load %struct.rbdr*, %struct.rbdr** %6, align 8
  %92 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %83, %50
  %96 = load %struct.rbdr*, %struct.rbdr** %6, align 8
  %97 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %95
  %101 = load %struct.pgcache*, %struct.pgcache** %10, align 8
  %102 = getelementptr inbounds %struct.pgcache, %struct.pgcache* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* @XDP_PAGE_REFCNT_REFILL, align 4
  %107 = load %struct.pgcache*, %struct.pgcache** %10, align 8
  %108 = getelementptr inbounds %struct.pgcache, %struct.pgcache* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.page*, %struct.page** %9, align 8
  %110 = load i32, i32* @XDP_PAGE_REFCNT_REFILL, align 4
  %111 = call i32 @page_ref_add(%struct.page* %109, i32 %110)
  br label %112

112:                                              ; preds = %105, %100
  br label %116

113:                                              ; preds = %95
  %114 = load %struct.page*, %struct.page** %9, align 8
  %115 = call i32 @page_ref_add(%struct.page* %114, i32 1)
  br label %116

116:                                              ; preds = %113, %112
  %117 = load %struct.rbdr*, %struct.rbdr** %6, align 8
  %118 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %118, align 8
  %121 = load %struct.rbdr*, %struct.rbdr** %6, align 8
  %122 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = load %struct.rbdr*, %struct.rbdr** %6, align 8
  %127 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = and i64 %128, %125
  store i64 %129, i64* %127, align 8
  %130 = load %struct.rbdr*, %struct.rbdr** %6, align 8
  %131 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %130, i32 0, i32 3
  %132 = load %struct.pgcache*, %struct.pgcache** %131, align 8
  %133 = load %struct.rbdr*, %struct.rbdr** %6, align 8
  %134 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.pgcache, %struct.pgcache* %132, i64 %135
  store %struct.pgcache* %136, %struct.pgcache** %11, align 8
  %137 = load %struct.pgcache*, %struct.pgcache** %11, align 8
  %138 = getelementptr inbounds %struct.pgcache, %struct.pgcache* %137, i32 0, i32 1
  %139 = load %struct.page*, %struct.page** %138, align 8
  store %struct.page* %139, %struct.page** %9, align 8
  %140 = load %struct.page*, %struct.page** %9, align 8
  %141 = icmp ne %struct.page* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %116
  %143 = load %struct.page*, %struct.page** %9, align 8
  %144 = getelementptr inbounds %struct.page, %struct.page* %143, i32 0, i32 0
  %145 = call i32 @prefetch(i32* %144)
  br label %146

146:                                              ; preds = %142, %116
  %147 = load %struct.pgcache*, %struct.pgcache** %10, align 8
  store %struct.pgcache* %147, %struct.pgcache** %4, align 8
  br label %148

148:                                              ; preds = %146, %79, %62
  %149 = load %struct.pgcache*, %struct.pgcache** %4, align 8
  ret %struct.pgcache* %149
}

declare dso_local i32 @page_ref_count(%struct.page*) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @page_ref_add(%struct.page*, i32) #1

declare dso_local i32 @prefetch(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
