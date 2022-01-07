; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_xsk_umem_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_xsk_umem_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32 }
%struct.xdp_umem = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i32)* @ixgbe_xsk_umem_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_xsk_umem_disable(%struct.ixgbe_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xdp_umem*, align 8
  %7 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.xdp_umem* @xdp_get_umem_from_qid(i32 %10, i32 %11)
  store %struct.xdp_umem* %12, %struct.xdp_umem** %6, align 8
  %13 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %14 = icmp ne %struct.xdp_umem* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %53

18:                                               ; preds = %2
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @netif_running(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %26 = call i64 @ixgbe_enabled_xdp_adapter(%struct.ixgbe_adapter* %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %24, %18
  %29 = phi i1 [ false, %18 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ixgbe_txrx_ring_disable(%struct.ixgbe_adapter* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clear_bit(i32 %38, i32 %41)
  %43 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %44 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %45 = call i32 @ixgbe_xsk_umem_dma_unmap(%struct.ixgbe_adapter* %43, %struct.xdp_umem* %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ixgbe_txrx_ring_enable(%struct.ixgbe_adapter* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %37
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.xdp_umem* @xdp_get_umem_from_qid(i32, i32) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i64 @ixgbe_enabled_xdp_adapter(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_txrx_ring_disable(%struct.ixgbe_adapter*, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @ixgbe_xsk_umem_dma_unmap(%struct.ixgbe_adapter*, %struct.xdp_umem*) #1

declare dso_local i32 @ixgbe_txrx_ring_enable(%struct.ixgbe_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
