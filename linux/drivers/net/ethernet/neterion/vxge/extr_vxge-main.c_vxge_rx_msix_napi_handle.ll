; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_rx_msix_napi_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_rx_msix_napi_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxge_ring = type { i32, i32, i64 }
%struct.__vxge_hw_channel = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vxge_rx_msix_napi_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxge_rx_msix_napi_handle(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vxge_ring*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.vxge_ring*
  store %struct.vxge_ring* %7, %struct.vxge_ring** %5, align 8
  %8 = load %struct.vxge_ring*, %struct.vxge_ring** %5, align 8
  %9 = call i32 @adaptive_coalesce_rx_interrupts(%struct.vxge_ring* %8)
  %10 = load %struct.vxge_ring*, %struct.vxge_ring** %5, align 8
  %11 = getelementptr inbounds %struct.vxge_ring, %struct.vxge_ring* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.__vxge_hw_channel*
  %14 = load %struct.vxge_ring*, %struct.vxge_ring** %5, align 8
  %15 = getelementptr inbounds %struct.vxge_ring, %struct.vxge_ring* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @vxge_hw_channel_msix_mask(%struct.__vxge_hw_channel* %13, i32 %16)
  %18 = load %struct.vxge_ring*, %struct.vxge_ring** %5, align 8
  %19 = getelementptr inbounds %struct.vxge_ring, %struct.vxge_ring* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.__vxge_hw_channel*
  %22 = load %struct.vxge_ring*, %struct.vxge_ring** %5, align 8
  %23 = getelementptr inbounds %struct.vxge_ring, %struct.vxge_ring* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @vxge_hw_channel_msix_clear(%struct.__vxge_hw_channel* %21, i32 %24)
  %26 = load %struct.vxge_ring*, %struct.vxge_ring** %5, align 8
  %27 = getelementptr inbounds %struct.vxge_ring, %struct.vxge_ring* %26, i32 0, i32 0
  %28 = call i32 @napi_schedule(i32* %27)
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %29
}

declare dso_local i32 @adaptive_coalesce_rx_interrupts(%struct.vxge_ring*) #1

declare dso_local i32 @vxge_hw_channel_msix_mask(%struct.__vxge_hw_channel*, i32) #1

declare dso_local i32 @vxge_hw_channel_msix_clear(%struct.__vxge_hw_channel*, i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
