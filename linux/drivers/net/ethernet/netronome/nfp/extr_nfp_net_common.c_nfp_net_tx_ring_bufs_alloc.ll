; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_tx_ring_bufs_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_tx_ring_bufs_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_dp = type { i32 }
%struct.nfp_net_tx_ring = type { i32, i32, %struct.nfp_net_tx_buf* }
%struct.nfp_net_tx_buf = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net_dp*, %struct.nfp_net_tx_ring*)* @nfp_net_tx_ring_bufs_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_tx_ring_bufs_alloc(%struct.nfp_net_dp* %0, %struct.nfp_net_tx_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_net_dp*, align 8
  %5 = alloca %struct.nfp_net_tx_ring*, align 8
  %6 = alloca %struct.nfp_net_tx_buf*, align 8
  %7 = alloca i32, align 4
  store %struct.nfp_net_dp* %0, %struct.nfp_net_dp** %4, align 8
  store %struct.nfp_net_tx_ring* %1, %struct.nfp_net_tx_ring** %5, align 8
  %8 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %5, align 8
  %9 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %8, i32 0, i32 2
  %10 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %9, align 8
  store %struct.nfp_net_tx_buf* %10, %struct.nfp_net_tx_buf** %6, align 8
  %11 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %5, align 8
  %12 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

16:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %50, %16
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %5, align 8
  %20 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %17
  %24 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %25 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %25, i64 %27
  %29 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %28, i32 0, i32 1
  %30 = call i32 @nfp_net_rx_alloc_one(%struct.nfp_net_dp* %24, i32* %29)
  %31 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %31, i64 %33
  %35 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %34, i32 0, i32 0
  store i32 %30, i32* %35, align 4
  %36 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %36, i64 %38
  %40 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %23
  %44 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %45 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %5, align 8
  %46 = call i32 @nfp_net_tx_ring_bufs_free(%struct.nfp_net_dp* %44, %struct.nfp_net_tx_ring* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %54

49:                                               ; preds = %23
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %17

53:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %43, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @nfp_net_rx_alloc_one(%struct.nfp_net_dp*, i32*) #1

declare dso_local i32 @nfp_net_tx_ring_bufs_free(%struct.nfp_net_dp*, %struct.nfp_net_tx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
