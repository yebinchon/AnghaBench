; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_tx_ring_has_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_tx_ring_has_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx_ring = type { i64, i64, i64* }

@QCAFRM_MAX_LEN = common dso_local global i64 0, align 8
@QCASPI_HW_BUF_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tx_ring*)* @qcaspi_tx_ring_has_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcaspi_tx_ring_has_space(%struct.tx_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tx_ring*, align 8
  store %struct.tx_ring* %0, %struct.tx_ring** %3, align 8
  %4 = load %struct.tx_ring*, %struct.tx_ring** %3, align 8
  %5 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %4, i32 0, i32 2
  %6 = load i64*, i64** %5, align 8
  %7 = load %struct.tx_ring*, %struct.tx_ring** %3, align 8
  %8 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds i64, i64* %6, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.tx_ring*, %struct.tx_ring** %3, align 8
  %16 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @QCAFRM_MAX_LEN, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i64, i64* @QCASPI_HW_BUF_LEN, align 8
  %21 = icmp slt i64 %19, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %14, %13
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
