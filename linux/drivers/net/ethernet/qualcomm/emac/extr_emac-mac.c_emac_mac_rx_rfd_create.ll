; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_rx_rfd_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_rx_rfd_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { i32 }
%struct.emac_rx_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_adapter*, %struct.emac_rx_queue*, i32)* @emac_mac_rx_rfd_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_mac_rx_rfd_create(%struct.emac_adapter* %0, %struct.emac_rx_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.emac_adapter*, align 8
  %5 = alloca %struct.emac_rx_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.emac_adapter* %0, %struct.emac_adapter** %4, align 8
  store %struct.emac_rx_queue* %1, %struct.emac_rx_queue** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %5, align 8
  %9 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %5, align 8
  %13 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32* @EMAC_RFD(%struct.emac_rx_queue* %8, i32 %11, i64 %15)
  store i32* %16, i32** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @lower_32_bits(i32 %17)
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @upper_32_bits(i32 %21)
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %5, align 8
  %25 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %5, align 8
  %30 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %28, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %5, align 8
  %36 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %34, %3
  ret void
}

declare dso_local i32* @EMAC_RFD(%struct.emac_rx_queue*, i32, i64) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
