; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vxgedev = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.vxge_fifo_stats }
%struct.vxge_fifo_stats = type { i64, i64, i64, i32 }
%struct.TYPE_4__ = type { %struct.vxge_ring_stats }
%struct.vxge_ring_stats = type { i64, i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @vxge_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxge_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.vxgedev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vxge_ring_stats*, align 8
  %8 = alloca %struct.vxge_fifo_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.vxgedev* @netdev_priv(%struct.net_device* %13)
  store %struct.vxgedev* %14, %struct.vxgedev** %5, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %137, %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.vxgedev*, %struct.vxgedev** %5, align 8
  %18 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %140

21:                                               ; preds = %15
  %22 = load %struct.vxgedev*, %struct.vxgedev** %5, align 8
  %23 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store %struct.vxge_ring_stats* %29, %struct.vxge_ring_stats** %7, align 8
  %30 = load %struct.vxgedev*, %struct.vxgedev** %5, align 8
  %31 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store %struct.vxge_fifo_stats* %37, %struct.vxge_fifo_stats** %8, align 8
  br label %38

38:                                               ; preds = %51, %21
  %39 = load %struct.vxge_ring_stats*, %struct.vxge_ring_stats** %7, align 8
  %40 = getelementptr inbounds %struct.vxge_ring_stats, %struct.vxge_ring_stats* %39, i32 0, i32 5
  %41 = call i32 @u64_stats_fetch_begin_irq(i32* %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.vxge_ring_stats*, %struct.vxge_ring_stats** %7, align 8
  %43 = getelementptr inbounds %struct.vxge_ring_stats, %struct.vxge_ring_stats* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %10, align 8
  %45 = load %struct.vxge_ring_stats*, %struct.vxge_ring_stats** %7, align 8
  %46 = getelementptr inbounds %struct.vxge_ring_stats, %struct.vxge_ring_stats* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %12, align 8
  %48 = load %struct.vxge_ring_stats*, %struct.vxge_ring_stats** %7, align 8
  %49 = getelementptr inbounds %struct.vxge_ring_stats, %struct.vxge_ring_stats* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %11, align 8
  br label %51

51:                                               ; preds = %38
  %52 = load %struct.vxge_ring_stats*, %struct.vxge_ring_stats** %7, align 8
  %53 = getelementptr inbounds %struct.vxge_ring_stats, %struct.vxge_ring_stats* %52, i32 0, i32 5
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @u64_stats_fetch_retry_irq(i32* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %38, label %57

57:                                               ; preds = %51
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %60 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %58
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %67 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 4
  %72 = load i64, i64* %12, align 8
  %73 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %74 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %72
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  %79 = load %struct.vxge_ring_stats*, %struct.vxge_ring_stats** %7, align 8
  %80 = getelementptr inbounds %struct.vxge_ring_stats, %struct.vxge_ring_stats* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %83 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %81
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 4
  %88 = load %struct.vxge_ring_stats*, %struct.vxge_ring_stats** %7, align 8
  %89 = getelementptr inbounds %struct.vxge_ring_stats, %struct.vxge_ring_stats* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %92 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %90
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 4
  br label %97

97:                                               ; preds = %107, %57
  %98 = load %struct.vxge_fifo_stats*, %struct.vxge_fifo_stats** %8, align 8
  %99 = getelementptr inbounds %struct.vxge_fifo_stats, %struct.vxge_fifo_stats* %98, i32 0, i32 3
  %100 = call i32 @u64_stats_fetch_begin_irq(i32* %99)
  store i32 %100, i32* %9, align 4
  %101 = load %struct.vxge_fifo_stats*, %struct.vxge_fifo_stats** %8, align 8
  %102 = getelementptr inbounds %struct.vxge_fifo_stats, %struct.vxge_fifo_stats* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %10, align 8
  %104 = load %struct.vxge_fifo_stats*, %struct.vxge_fifo_stats** %8, align 8
  %105 = getelementptr inbounds %struct.vxge_fifo_stats, %struct.vxge_fifo_stats* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %11, align 8
  br label %107

107:                                              ; preds = %97
  %108 = load %struct.vxge_fifo_stats*, %struct.vxge_fifo_stats** %8, align 8
  %109 = getelementptr inbounds %struct.vxge_fifo_stats, %struct.vxge_fifo_stats* %108, i32 0, i32 3
  %110 = load i32, i32* %9, align 4
  %111 = call i64 @u64_stats_fetch_retry_irq(i32* %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %97, label %113

113:                                              ; preds = %107
  %114 = load i64, i64* %10, align 8
  %115 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %116 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %114
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %116, align 4
  %121 = load i64, i64* %11, align 8
  %122 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %123 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %121
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %123, align 4
  %128 = load %struct.vxge_fifo_stats*, %struct.vxge_fifo_stats** %8, align 8
  %129 = getelementptr inbounds %struct.vxge_fifo_stats, %struct.vxge_fifo_stats* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %132 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %130
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %132, align 4
  br label %137

137:                                              ; preds = %113
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %15

140:                                              ; preds = %15
  ret void
}

declare dso_local %struct.vxgedev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
