; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_dump_rx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_dump_rx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }
%struct.xgbe_ring = type { i32 }
%struct.xgbe_ring_data = type { %struct.xgbe_ring_desc* }
%struct.xgbe_ring_desc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"RX_NORMAL_DESC[%d RX BY DEVICE] = %08x:%08x:%08x:%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xgbe_dump_rx_desc(%struct.xgbe_prv_data* %0, %struct.xgbe_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca %struct.xgbe_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xgbe_ring_data*, align 8
  %8 = alloca %struct.xgbe_ring_desc*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %4, align 8
  store %struct.xgbe_ring* %1, %struct.xgbe_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %9, i32 %10)
  store %struct.xgbe_ring_data* %11, %struct.xgbe_ring_data** %7, align 8
  %12 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %7, align 8
  %13 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %12, i32 0, i32 0
  %14 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %13, align 8
  store %struct.xgbe_ring_desc* %14, %struct.xgbe_ring_desc** %8, align 8
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %16 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %8, align 8
  %20 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  %23 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %8, align 8
  %24 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  %27 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %8, align 8
  %28 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  %31 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %8, align 8
  %32 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  %35 = call i32 @netdev_dbg(i32 %17, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %22, i32 %26, i32 %30, i32 %34)
  ret void
}

declare dso_local %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring*, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
