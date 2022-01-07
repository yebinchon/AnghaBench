; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_rx_pkt_ignore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_rx_pkt_ignore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i64, i64, i32)* }
%struct.rx_ring_info = type { i32, i64*, i32, i32*, i32 }
%struct.page = type { i64, i32* }

@RCR_ENTRY_PKT_BUF_ADDR = common dso_local global i64 0, align 8
@RCR_ENTRY_PKT_BUF_ADDR_SHIFT = common dso_local global i64 0, align 8
@RCR_ENTRY_PKTBUFSZ = common dso_local global i64 0, align 8
@RCR_ENTRY_PKTBUFSZ_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@RCR_ENTRY_MULTI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, %struct.rx_ring_info*)* @niu_rx_pkt_ignore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_rx_pkt_ignore(%struct.niu* %0, %struct.rx_ring_info* %1) #0 {
  %3 = alloca %struct.niu*, align 8
  %4 = alloca %struct.rx_ring_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.niu* %0, %struct.niu** %3, align 8
  store %struct.rx_ring_info* %1, %struct.rx_ring_info** %4, align 8
  %12 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %13 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %15 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %16 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  br label %19

19:                                               ; preds = %2, %95
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %23 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i64 @le64_to_cpup(i32* %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @RCR_ENTRY_PKT_BUF_ADDR, align 8
  %31 = and i64 %29, %30
  %32 = load i64, i64* @RCR_ENTRY_PKT_BUF_ADDR_SHIFT, align 8
  %33 = shl i64 %31, %32
  store i64 %33, i64* %9, align 8
  %34 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call %struct.page* @niu_find_rxpage(%struct.rx_ring_info* %34, i64 %35, %struct.page*** %8)
  store %struct.page* %36, %struct.page** %7, align 8
  %37 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %38 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @RCR_ENTRY_PKTBUFSZ, align 8
  %42 = and i64 %40, %41
  %43 = load i64, i64* @RCR_ENTRY_PKTBUFSZ_SHIFT, align 8
  %44 = lshr i64 %42, %43
  %45 = getelementptr inbounds i64, i64* %39, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %11, align 8
  %47 = load %struct.page*, %struct.page** %7, align 8
  %48 = getelementptr inbounds %struct.page, %struct.page* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PAGE_SIZE, align 8
  %51 = add i64 %49, %50
  %52 = load i64, i64* %11, align 8
  %53 = sub i64 %51, %52
  %54 = load i64, i64* %9, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %19
  %57 = load %struct.page*, %struct.page** %7, align 8
  %58 = getelementptr inbounds %struct.page, %struct.page* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = bitcast i32* %59 to %struct.page*
  %61 = load %struct.page**, %struct.page*** %8, align 8
  store %struct.page* %60, %struct.page** %61, align 8
  %62 = load %struct.niu*, %struct.niu** %3, align 8
  %63 = getelementptr inbounds %struct.niu, %struct.niu* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32 (i32, i64, i64, i32)*, i32 (i32, i64, i64, i32)** %65, align 8
  %67 = load %struct.niu*, %struct.niu** %3, align 8
  %68 = getelementptr inbounds %struct.niu, %struct.niu* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.page*, %struct.page** %7, align 8
  %71 = getelementptr inbounds %struct.page, %struct.page* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PAGE_SIZE, align 8
  %74 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %75 = call i32 %66(i32 %69, i64 %72, i64 %73, i32 %74)
  %76 = load %struct.page*, %struct.page** %7, align 8
  %77 = getelementptr inbounds %struct.page, %struct.page* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  %78 = load %struct.page*, %struct.page** %7, align 8
  %79 = getelementptr inbounds %struct.page, %struct.page* %78, i32 0, i32 1
  store i32* null, i32** %79, align 8
  %80 = load %struct.page*, %struct.page** %7, align 8
  %81 = call i32 @__free_page(%struct.page* %80)
  %82 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %83 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %56, %19
  %87 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @NEXT_RCR(%struct.rx_ring_info* %87, i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* @RCR_ENTRY_MULTI, align 8
  %92 = and i64 %90, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %86
  br label %96

95:                                               ; preds = %86
  br label %19

96:                                               ; preds = %94
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %99 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i64 @le64_to_cpup(i32*) #1

declare dso_local %struct.page* @niu_find_rxpage(%struct.rx_ring_info*, i64, %struct.page***) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @NEXT_RCR(%struct.rx_ring_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
