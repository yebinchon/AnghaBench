; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_intr_update_pkt_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_intr_update_pkt_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_rx_bytes_counter = type { i32, i32 }

@ENIC_LARGE_PKT_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnic_rx_bytes_counter*, i64)* @enic_intr_update_pkt_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_intr_update_pkt_size(%struct.vnic_rx_bytes_counter* %0, i64 %1) #0 {
  %3 = alloca %struct.vnic_rx_bytes_counter*, align 8
  %4 = alloca i64, align 8
  store %struct.vnic_rx_bytes_counter* %0, %struct.vnic_rx_bytes_counter** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* @ENIC_LARGE_PKT_THRESHOLD, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp sle i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.vnic_rx_bytes_counter*, %struct.vnic_rx_bytes_counter** %3, align 8
  %11 = getelementptr inbounds %struct.vnic_rx_bytes_counter, %struct.vnic_rx_bytes_counter* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %9
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  br label %24

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.vnic_rx_bytes_counter*, %struct.vnic_rx_bytes_counter** %3, align 8
  %19 = getelementptr inbounds %struct.vnic_rx_bytes_counter, %struct.vnic_rx_bytes_counter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %17
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 4
  br label %24

24:                                               ; preds = %16, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
