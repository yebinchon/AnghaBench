; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_shutdown_bnx2_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_shutdown_bnx2_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32 (%struct.cnic_dev*, %struct.kwqe**, i32)* }
%struct.kwqe = type { i32 }

@L2_LAYER_CODE = common dso_local global i32 0, align 4
@KWQE_LAYER_SHIFT = common dso_local global i32 0, align 4
@L2_KWQE_OPCODE_VALUE_FLUSH = common dso_local global i32 0, align 4
@KWQE_OPCODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*)* @cnic_shutdown_bnx2_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_shutdown_bnx2_rx_ring(%struct.cnic_dev* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca [1 x %struct.kwqe*], align 8
  %4 = alloca %struct.kwqe, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %2, align 8
  %5 = call i32 @memset(%struct.kwqe* %4, i32 0, i32 4)
  %6 = getelementptr inbounds [1 x %struct.kwqe*], [1 x %struct.kwqe*]* %3, i64 0, i64 0
  store %struct.kwqe* %4, %struct.kwqe** %6, align 8
  %7 = load i32, i32* @L2_LAYER_CODE, align 4
  %8 = load i32, i32* @KWQE_LAYER_SHIFT, align 4
  %9 = shl i32 %7, %8
  %10 = load i32, i32* @L2_KWQE_OPCODE_VALUE_FLUSH, align 4
  %11 = load i32, i32* @KWQE_OPCODE_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = or i32 %9, %12
  %14 = or i32 %13, 2
  %15 = getelementptr inbounds %struct.kwqe, %struct.kwqe* %4, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %17 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %16, i32 0, i32 0
  %18 = load i32 (%struct.cnic_dev*, %struct.kwqe**, i32)*, i32 (%struct.cnic_dev*, %struct.kwqe**, i32)** %17, align 8
  %19 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %20 = getelementptr inbounds [1 x %struct.kwqe*], [1 x %struct.kwqe*]* %3, i64 0, i64 0
  %21 = call i32 %18(%struct.cnic_dev* %19, %struct.kwqe** %20, i32 1)
  ret void
}

declare dso_local i32 @memset(%struct.kwqe*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
