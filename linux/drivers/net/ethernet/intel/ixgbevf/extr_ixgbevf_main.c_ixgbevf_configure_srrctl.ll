; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_configure_srrctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_configure_srrctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }
%struct.ixgbevf_ring = type { i32 }

@IXGBE_SRRCTL_DROP_EN = common dso_local global i32 0, align 4
@IXGBEVF_RX_HDR_SIZE = common dso_local global i32 0, align 4
@IXGBE_SRRCTL_BSIZEHDRSIZE_SHIFT = common dso_local global i32 0, align 4
@IXGBEVF_RXBUFFER_3072 = common dso_local global i32 0, align 4
@IXGBE_SRRCTL_BSIZEPKT_SHIFT = common dso_local global i32 0, align 4
@IXGBEVF_RXBUFFER_2048 = common dso_local global i32 0, align 4
@IXGBE_SRRCTL_DESCTYPE_ADV_ONEBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*, %struct.ixgbevf_ring*, i32)* @ixgbevf_configure_srrctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_configure_srrctl(%struct.ixgbevf_adapter* %0, %struct.ixgbevf_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbevf_adapter*, align 8
  %5 = alloca %struct.ixgbevf_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %4, align 8
  store %struct.ixgbevf_ring* %1, %struct.ixgbevf_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %9, i32 0, i32 0
  store %struct.ixgbe_hw* %10, %struct.ixgbe_hw** %7, align 8
  %11 = load i32, i32* @IXGBE_SRRCTL_DROP_EN, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @IXGBEVF_RX_HDR_SIZE, align 4
  %13 = load i32, i32* @IXGBE_SRRCTL_BSIZEHDRSIZE_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = load i32, i32* %8, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %8, align 4
  %17 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %18 = call i64 @ring_uses_large_buffer(%struct.ixgbevf_ring* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32, i32* @IXGBEVF_RXBUFFER_3072, align 4
  %22 = load i32, i32* @IXGBE_SRRCTL_BSIZEPKT_SHIFT, align 4
  %23 = ashr i32 %21, %22
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %32

26:                                               ; preds = %3
  %27 = load i32, i32* @IXGBEVF_RXBUFFER_2048, align 4
  %28 = load i32, i32* @IXGBE_SRRCTL_BSIZEPKT_SHIFT, align 4
  %29 = ashr i32 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %26, %20
  %33 = load i32, i32* @IXGBE_SRRCTL_DESCTYPE_ADV_ONEBUF, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @IXGBE_VFSRRCTL(i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %36, i32 %38, i32 %39)
  ret void
}

declare dso_local i64 @ring_uses_large_buffer(%struct.ixgbevf_ring*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_VFSRRCTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
