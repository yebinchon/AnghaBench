; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_tx_rings_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_tx_rings_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_dp = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net_dp*)* @nfp_net_tx_rings_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_tx_rings_free(%struct.nfp_net_dp* %0) #0 {
  %2 = alloca %struct.nfp_net_dp*, align 8
  %3 = alloca i32, align 4
  store %struct.nfp_net_dp* %0, %struct.nfp_net_dp** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %26, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %2, align 8
  %7 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %4
  %11 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %2, align 8
  %12 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %2, align 8
  %13 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = call i32 @nfp_net_tx_ring_bufs_free(%struct.nfp_net_dp* %11, i32* %17)
  %19 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %2, align 8
  %20 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @nfp_net_tx_ring_free(i32* %24)
  br label %26

26:                                               ; preds = %10
  %27 = load i32, i32* %3, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %4

29:                                               ; preds = %4
  %30 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %2, align 8
  %31 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @kfree(i32* %32)
  ret void
}

declare dso_local i32 @nfp_net_tx_ring_bufs_free(%struct.nfp_net_dp*, i32*) #1

declare dso_local i32 @nfp_net_tx_ring_free(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
