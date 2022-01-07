; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_xsk_umem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_xsk_umem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_umem = type { i32 }
%struct.ixgbe_adapter = type { i32, i32, i32 }
%struct.ixgbe_ring = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xdp_umem* @ixgbe_xsk_umem(%struct.ixgbe_adapter* %0, %struct.ixgbe_ring* %1) #0 {
  %3 = alloca %struct.xdp_umem*, align 8
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca %struct.ixgbe_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store %struct.ixgbe_ring* %1, %struct.ixgbe_ring** %5, align 8
  %8 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @READ_ONCE(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %13 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @test_bit(i32 %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17, %2
  store %struct.xdp_umem* null, %struct.xdp_umem** %3, align 8
  br label %31

25:                                               ; preds = %17
  %26 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.xdp_umem* @xdp_get_umem_from_qid(i32 %28, i32 %29)
  store %struct.xdp_umem* %30, %struct.xdp_umem** %3, align 8
  br label %31

31:                                               ; preds = %25, %24
  %32 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  ret %struct.xdp_umem* %32
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local %struct.xdp_umem* @xdp_get_umem_from_qid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
