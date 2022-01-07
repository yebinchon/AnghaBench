; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_set_rx_ring_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_set_rx_ring_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ETH_HLEN = common dso_local global i64 0, align 8
@BNX2_RX_OFFSET = common dso_local global i64 0, align 8
@BNX2_RX_ALIGN = common dso_local global i32 0, align 4
@NET_SKB_PAD = common dso_local global i64 0, align 8
@BNX2_RX_COPY_THRESH = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@BNX2_FLAG_JUMBO_BROKEN = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@BNX2_MAX_TOTAL_RX_PG_DESC_CNT = common dso_local global i64 0, align 8
@BNX2_MAX_RX_PG_RINGS = common dso_local global i32 0, align 4
@BNX2_RX_DESC_CNT = common dso_local global i32 0, align 4
@BNX2_MAX_RX_RINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*, i64)* @bnx2_set_rx_ring_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_set_rx_ring_size(%struct.bnx2* %0, i64 %1) #0 {
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %10 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %9, i32 0, i32 11
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ETH_HLEN, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i64, i64* @BNX2_RX_OFFSET, align 8
  %17 = add nsw i64 %15, %16
  %18 = add nsw i64 %17, 8
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i32, i32* @BNX2_RX_ALIGN, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = trunc i64 %22 to i32
  %24 = call i64 @SKB_DATA_ALIGN(i32 %23)
  %25 = load i64, i64* @NET_SKB_PAD, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i64 @SKB_DATA_ALIGN(i32 4)
  %28 = add nsw i64 %26, %27
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* @BNX2_RX_COPY_THRESH, align 8
  %30 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %31 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %30, i32 0, i32 9
  store i64 %29, i64* %31, align 8
  %32 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %33 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %32, i32 0, i32 10
  store i64 0, i64* %33, align 8
  %34 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %35 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %37 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @PAGE_SIZE, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %90

41:                                               ; preds = %2
  %42 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %43 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @BNX2_FLAG_JUMBO_BROKEN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %90, label %48

48:                                               ; preds = %41
  %49 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %50 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %49, i32 0, i32 11
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, 40
  %55 = call i32 @PAGE_ALIGN(i64 %54)
  %56 = load i32, i32* @PAGE_SHIFT, align 4
  %57 = ashr i32 %55, %56
  store i32 %57, i32* %8, align 4
  %58 = load i64, i64* %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = mul nsw i64 %58, %60
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @BNX2_MAX_TOTAL_RX_PG_DESC_CNT, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %48
  %66 = load i64, i64* @BNX2_MAX_TOTAL_RX_PG_DESC_CNT, align 8
  store i64 %66, i64* %7, align 8
  br label %67

67:                                               ; preds = %65, %48
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %70 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %69, i32 0, i32 10
  store i64 %68, i64* %70, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i32, i32* @BNX2_MAX_RX_PG_RINGS, align 4
  %73 = call i8* @bnx2_find_max_ring(i64 %71, i32 %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %76 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %78 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @BNX2_RX_DESC_CNT, align 4
  %81 = mul nsw i32 %79, %80
  %82 = sub nsw i32 %81, 1
  %83 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %84 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i64, i64* @BNX2_RX_COPY_THRESH, align 8
  %86 = load i64, i64* @BNX2_RX_OFFSET, align 8
  %87 = add nsw i64 %85, %86
  store i64 %87, i64* %5, align 8
  %88 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %89 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %88, i32 0, i32 9
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %67, %41, %2
  %91 = load i64, i64* %5, align 8
  %92 = trunc i64 %91 to i32
  %93 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %94 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %96 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @BNX2_RX_ALIGN, align 4
  %99 = add nsw i32 %97, %98
  %100 = call i64 @SKB_DATA_ALIGN(i32 %99)
  %101 = load i64, i64* @NET_SKB_PAD, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i64 @SKB_DATA_ALIGN(i32 4)
  %104 = add nsw i64 %102, %103
  %105 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %106 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %105, i32 0, i32 8
  store i64 %104, i64* %106, align 8
  %107 = load i64, i64* %5, align 8
  %108 = load i64, i64* @BNX2_RX_OFFSET, align 8
  %109 = sub nsw i64 %107, %108
  %110 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %111 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %110, i32 0, i32 7
  store i64 %109, i64* %111, align 8
  %112 = load i64, i64* %4, align 8
  %113 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %114 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %113, i32 0, i32 6
  store i64 %112, i64* %114, align 8
  %115 = load i64, i64* %4, align 8
  %116 = load i32, i32* @BNX2_MAX_RX_RINGS, align 4
  %117 = call i8* @bnx2_find_max_ring(i64 %115, i32 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %120 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 8
  %121 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %122 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @BNX2_RX_DESC_CNT, align 4
  %125 = mul nsw i32 %123, %124
  %126 = sub nsw i32 %125, 1
  %127 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %128 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %127, i32 0, i32 5
  store i32 %126, i32* %128, align 4
  ret void
}

declare dso_local i64 @SKB_DATA_ALIGN(i32) #1

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local i8* @bnx2_find_max_ring(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
