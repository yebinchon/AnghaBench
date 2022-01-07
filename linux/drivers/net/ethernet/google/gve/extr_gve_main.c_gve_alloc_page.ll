; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_alloc_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_alloc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gve_alloc_page(%struct.device* %0, %struct.page** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.page** %1, %struct.page*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.page* @alloc_page(i32 %10)
  %12 = load %struct.page**, %struct.page*** %7, align 8
  store %struct.page* %11, %struct.page** %12, align 8
  %13 = load %struct.page**, %struct.page*** %7, align 8
  %14 = load %struct.page*, %struct.page** %13, align 8
  %15 = icmp ne %struct.page* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %39

19:                                               ; preds = %4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load %struct.page**, %struct.page*** %7, align 8
  %22 = load %struct.page*, %struct.page** %21, align 8
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @dma_map_page(%struct.device* %20, %struct.page* %22, i32 0, i32 %23, i32 %24)
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @dma_mapping_error(%struct.device* %27, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %19
  %33 = load %struct.page**, %struct.page*** %7, align 8
  %34 = load %struct.page*, %struct.page** %33, align 8
  %35 = call i32 @put_page(%struct.page* %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %39

38:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %32, %16
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @dma_map_page(%struct.device*, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
