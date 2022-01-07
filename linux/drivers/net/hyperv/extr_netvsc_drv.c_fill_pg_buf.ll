; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_fill_pg_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_fill_pg_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.hv_page_buffer = type { i64, i64, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.page*, i64, i64, %struct.hv_page_buffer*)* @fill_pg_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fill_pg_buf(%struct.page* %0, i64 %1, i64 %2, %struct.hv_page_buffer* %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hv_page_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.hv_page_buffer* %3, %struct.hv_page_buffer** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @PAGE_SHIFT, align 8
  %13 = ashr i64 %11, %12
  %14 = load %struct.page*, %struct.page** %5, align 8
  %15 = getelementptr inbounds %struct.page, %struct.page* %14, i64 %13
  store %struct.page* %15, %struct.page** %5, align 8
  %16 = load i64, i64* @PAGE_MASK, align 8
  %17 = xor i64 %16, -1
  %18 = load i64, i64* %6, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %6, align 8
  br label %20

20:                                               ; preds = %69, %4
  %21 = load i64, i64* %7, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %70

23:                                               ; preds = %20
  %24 = load i64, i64* @PAGE_SIZE, align 8
  %25 = load i64, i64* %6, align 8
  %26 = sub nsw i64 %24, %25
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i64, i64* %7, align 8
  store i64 %31, i64* %10, align 8
  br label %32

32:                                               ; preds = %30, %23
  %33 = load %struct.page*, %struct.page** %5, align 8
  %34 = call i32 @page_to_pfn(%struct.page* %33)
  %35 = load %struct.hv_page_buffer*, %struct.hv_page_buffer** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.hv_page_buffer, %struct.hv_page_buffer* %35, i64 %37
  %39 = getelementptr inbounds %struct.hv_page_buffer, %struct.hv_page_buffer* %38, i32 0, i32 2
  store i32 %34, i32* %39, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.hv_page_buffer*, %struct.hv_page_buffer** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.hv_page_buffer, %struct.hv_page_buffer* %41, i64 %43
  %45 = getelementptr inbounds %struct.hv_page_buffer, %struct.hv_page_buffer* %44, i32 0, i32 1
  store i64 %40, i64* %45, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.hv_page_buffer*, %struct.hv_page_buffer** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.hv_page_buffer, %struct.hv_page_buffer* %47, i64 %49
  %51 = getelementptr inbounds %struct.hv_page_buffer, %struct.hv_page_buffer* %50, i32 0, i32 0
  store i64 %46, i64* %51, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %7, align 8
  %57 = sub i64 %56, %55
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @PAGE_SIZE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %32
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.page*, %struct.page** %5, align 8
  %66 = getelementptr inbounds %struct.page, %struct.page* %65, i32 1
  store %struct.page* %66, %struct.page** %5, align 8
  store i64 0, i64* %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %64, %61, %32
  br label %20

70:                                               ; preds = %20
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  ret i64 %73
}

declare dso_local i32 @page_to_pfn(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
