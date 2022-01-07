; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_rbr_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_rbr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i64, i32, i32)* }
%struct.rx_ring_info = type { i32, i64, i32*, %struct.page** }
%struct.page = type { i32*, i64 }

@MAX_RBR_RING_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*, %struct.rx_ring_info*)* @niu_rbr_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_rbr_free(%struct.niu* %0, %struct.rx_ring_info* %1) #0 {
  %3 = alloca %struct.niu*, align 8
  %4 = alloca %struct.rx_ring_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  store %struct.niu* %0, %struct.niu** %3, align 8
  store %struct.rx_ring_info* %1, %struct.rx_ring_info** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %52, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MAX_RBR_RING_SIZE, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %9
  %14 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %15 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %14, i32 0, i32 3
  %16 = load %struct.page**, %struct.page*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.page*, %struct.page** %16, i64 %18
  %20 = load %struct.page*, %struct.page** %19, align 8
  store %struct.page* %20, %struct.page** %6, align 8
  br label %21

21:                                               ; preds = %24, %13
  %22 = load %struct.page*, %struct.page** %6, align 8
  %23 = icmp ne %struct.page* %22, null
  br i1 %23, label %24, label %51

24:                                               ; preds = %21
  %25 = load %struct.page*, %struct.page** %6, align 8
  %26 = getelementptr inbounds %struct.page, %struct.page* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = bitcast i32* %27 to %struct.page*
  store %struct.page* %28, %struct.page** %7, align 8
  %29 = load %struct.page*, %struct.page** %6, align 8
  %30 = getelementptr inbounds %struct.page, %struct.page* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %8, align 8
  %32 = load %struct.niu*, %struct.niu** %3, align 8
  %33 = getelementptr inbounds %struct.niu, %struct.niu* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (i32, i64, i32, i32)*, i32 (i32, i64, i32, i32)** %35, align 8
  %37 = load %struct.niu*, %struct.niu** %3, align 8
  %38 = getelementptr inbounds %struct.niu, %struct.niu* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %43 = call i32 %36(i32 %39, i64 %40, i32 %41, i32 %42)
  %44 = load %struct.page*, %struct.page** %6, align 8
  %45 = getelementptr inbounds %struct.page, %struct.page* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.page*, %struct.page** %6, align 8
  %47 = getelementptr inbounds %struct.page, %struct.page* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  %48 = load %struct.page*, %struct.page** %6, align 8
  %49 = call i32 @__free_page(%struct.page* %48)
  %50 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %50, %struct.page** %6, align 8
  br label %21

51:                                               ; preds = %21
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %9

55:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %70, %55
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %59 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = call i32 @cpu_to_le32(i32 0)
  %64 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %65 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %56

73:                                               ; preds = %56
  %74 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %75 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  ret void
}

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
