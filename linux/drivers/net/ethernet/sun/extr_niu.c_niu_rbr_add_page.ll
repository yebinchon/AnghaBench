; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_rbr_add_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_rbr_add_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.page*, i32, i32, i32)* }
%struct.page = type { i32 }
%struct.rx_ring_info = type { i32, i64, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@RBR_DESCR_ADDR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, %struct.rx_ring_info*, i32, i32)* @niu_rbr_add_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_rbr_add_page(%struct.niu* %0, %struct.rx_ring_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.niu*, align 8
  %7 = alloca %struct.rx_ring_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.niu* %0, %struct.niu** %6, align 8
  store %struct.rx_ring_info* %1, %struct.rx_ring_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.page* @alloc_page(i32 %14)
  store %struct.page* %15, %struct.page** %10, align 8
  %16 = load %struct.page*, %struct.page** %10, align 8
  %17 = icmp ne %struct.page* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %89

21:                                               ; preds = %4
  %22 = load %struct.niu*, %struct.niu** %6, align 8
  %23 = getelementptr inbounds %struct.niu, %struct.niu* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (i32, %struct.page*, i32, i32, i32)*, i32 (i32, %struct.page*, i32, i32, i32)** %25, align 8
  %27 = load %struct.niu*, %struct.niu** %6, align 8
  %28 = getelementptr inbounds %struct.niu, %struct.niu* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.page*, %struct.page** %10, align 8
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %33 = call i32 %26(i32 %29, %struct.page* %30, i32 0, i32 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %21
  %37 = load %struct.page*, %struct.page** %10, align 8
  %38 = call i32 @__free_page(%struct.page* %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %89

41:                                               ; preds = %21
  %42 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %43 = load %struct.page*, %struct.page** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @niu_hash_page(%struct.rx_ring_info* %42, %struct.page* %43, i32 %44)
  %46 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %47 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %57

50:                                               ; preds = %41
  %51 = load %struct.page*, %struct.page** %10, align 8
  %52 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %53 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  %56 = call i32 @page_ref_add(%struct.page* %51, i32 %55)
  br label %57

57:                                               ; preds = %50, %41
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %85, %57
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %61 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %88

64:                                               ; preds = %58
  %65 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %66 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  store i32* %72, i32** %13, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @RBR_DESCR_ADDR_SHIFT, align 4
  %75 = ashr i32 %73, %74
  %76 = call i32 @cpu_to_le32(i32 %75)
  %77 = load i32*, i32** %13, align 8
  store i32 %76, i32* %77, align 4
  %78 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %79 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %64
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %58

88:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %36, %18
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @niu_hash_page(%struct.rx_ring_info*, %struct.page*, i32) #1

declare dso_local i32 @page_ref_add(%struct.page*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
