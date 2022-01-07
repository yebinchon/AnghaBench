; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_drop_tx_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_drop_tx_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32, i32, %struct.jme_ring* }
%struct.jme_ring = type { %struct.jme_buffer_info* }
%struct.jme_buffer_info = type { i64, i64 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*, i32, i32)* @jme_drop_tx_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_drop_tx_map(%struct.jme_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.jme_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.jme_ring*, align 8
  %8 = alloca %struct.jme_buffer_info*, align 8
  %9 = alloca %struct.jme_buffer_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %12, i32 0, i32 2
  %14 = load %struct.jme_ring*, %struct.jme_ring** %13, align 8
  %15 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %14, i64 0
  store %struct.jme_ring* %15, %struct.jme_ring** %7, align 8
  %16 = load %struct.jme_ring*, %struct.jme_ring** %7, align 8
  %17 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %16, i32 0, i32 0
  %18 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %17, align 8
  store %struct.jme_buffer_info* %18, %struct.jme_buffer_info** %8, align 8
  %19 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %51, %3
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %22
  %27 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %8, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %28, %29
  %31 = add nsw i32 %30, 2
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %27, i64 %34
  store %struct.jme_buffer_info* %35, %struct.jme_buffer_info** %9, align 8
  %36 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %37 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %9, align 8
  %40 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %9, align 8
  %43 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %46 = call i32 @pci_unmap_page(i32 %38, i64 %41, i64 %44, i32 %45)
  %47 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %9, align 8
  %48 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %9, align 8
  %50 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %26
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %22

54:                                               ; preds = %22
  ret void
}

declare dso_local i32 @pci_unmap_page(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
