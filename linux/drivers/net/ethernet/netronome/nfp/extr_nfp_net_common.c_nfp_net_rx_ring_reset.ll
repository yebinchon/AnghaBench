; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rx_ring_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rx_ring_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_rx_ring = type { i64, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net_rx_ring*)* @nfp_net_rx_ring_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_rx_ring_reset(%struct.nfp_net_rx_ring* %0) #0 {
  %2 = alloca %struct.nfp_net_rx_ring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nfp_net_rx_ring* %0, %struct.nfp_net_rx_ring** %2, align 8
  %5 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %2, align 8
  %6 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %2, align 8
  %11 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %80

15:                                               ; preds = %9, %1
  %16 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %2, align 8
  %17 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %2, align 8
  %18 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @D_IDX(%struct.nfp_net_rx_ring* %16, i64 %19)
  store i32 %20, i32* %3, align 4
  %21 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %2, align 8
  %22 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  %25 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %2, align 8
  %26 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %25, i32 0, i32 5
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %2, align 8
  %34 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %33, i32 0, i32 5
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i64 %32, i64* %39, align 8
  %40 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %2, align 8
  %41 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %40, i32 0, i32 5
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %2, align 8
  %49 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %48, i32 0, i32 5
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32* %47, i32** %54, align 8
  %55 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %2, align 8
  %56 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %55, i32 0, i32 5
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %2, align 8
  %63 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %62, i32 0, i32 5
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  %69 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %2, align 8
  %70 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %2, align 8
  %73 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @memset(i32 %71, i32 0, i32 %74)
  %76 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %2, align 8
  %77 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  %78 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %2, align 8
  %79 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @D_IDX(%struct.nfp_net_rx_ring*, i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
