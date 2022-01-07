; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rx_ring_bufs_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rx_ring_bufs_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_dp = type { i32 }
%struct.nfp_net_rx_ring = type { i32, %struct.nfp_net_rx_buf* }
%struct.nfp_net_rx_buf = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net_dp*, %struct.nfp_net_rx_ring*)* @nfp_net_rx_ring_bufs_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_rx_ring_bufs_alloc(%struct.nfp_net_dp* %0, %struct.nfp_net_rx_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_net_dp*, align 8
  %5 = alloca %struct.nfp_net_rx_ring*, align 8
  %6 = alloca %struct.nfp_net_rx_buf*, align 8
  %7 = alloca i32, align 4
  store %struct.nfp_net_dp* %0, %struct.nfp_net_dp** %4, align 8
  store %struct.nfp_net_rx_ring* %1, %struct.nfp_net_rx_ring** %5, align 8
  %8 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %5, align 8
  %9 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %8, i32 0, i32 1
  %10 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %9, align 8
  store %struct.nfp_net_rx_buf* %10, %struct.nfp_net_rx_buf** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %45, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %5, align 8
  %14 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  %17 = icmp ult i32 %12, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %11
  %19 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %20 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %20, i64 %22
  %24 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %23, i32 0, i32 1
  %25 = call i32 @nfp_net_rx_alloc_one(%struct.nfp_net_dp* %19, i32* %24)
  %26 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %26, i64 %28
  %30 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %29, i32 0, i32 0
  store i32 %25, i32* %30, align 4
  %31 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %31, i64 %33
  %35 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %18
  %39 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %40 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %5, align 8
  %41 = call i32 @nfp_net_rx_ring_bufs_free(%struct.nfp_net_dp* %39, %struct.nfp_net_rx_ring* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %49

44:                                               ; preds = %18
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %11

48:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %38
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @nfp_net_rx_alloc_one(%struct.nfp_net_dp*, i32*) #1

declare dso_local i32 @nfp_net_rx_ring_bufs_free(%struct.nfp_net_dp*, %struct.nfp_net_rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
