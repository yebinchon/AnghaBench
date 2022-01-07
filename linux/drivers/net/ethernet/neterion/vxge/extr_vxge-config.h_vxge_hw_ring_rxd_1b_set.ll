; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-config.h_vxge_hw_ring_rxd_1b_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-config.h_vxge_hw_ring_rxd_1b_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxge_hw_ring_rxd_1 = type { i32, i32 }

@VXGE_HW_RING_RXD_1_BUFFER0_SIZE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @vxge_hw_ring_rxd_1b_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxge_hw_ring_rxd_1b_set(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vxge_hw_ring_rxd_1*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.vxge_hw_ring_rxd_1*
  store %struct.vxge_hw_ring_rxd_1* %9, %struct.vxge_hw_ring_rxd_1** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %7, align 8
  %12 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, %struct.vxge_hw_ring_rxd_1* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @VXGE_HW_RING_RXD_1_BUFFER0_SIZE_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %7, align 8
  %16 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, %struct.vxge_hw_ring_rxd_1* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @VXGE_HW_RING_RXD_1_BUFFER0_SIZE(i32 %19)
  %21 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %7, align 8
  %22 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, %struct.vxge_hw_ring_rxd_1* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  ret void
}

declare dso_local i32 @VXGE_HW_RING_RXD_1_BUFFER0_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
