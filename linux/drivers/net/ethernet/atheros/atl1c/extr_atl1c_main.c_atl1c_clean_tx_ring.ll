; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { i32, %struct.pci_dev*, %struct.atl1c_tpd_ring* }
%struct.pci_dev = type { i32 }
%struct.atl1c_tpd_ring = type { i64, i64, i32, i32, %struct.atl1c_buffer* }
%struct.atl1c_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_adapter*, i32)* @atl1c_clean_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_clean_tx_ring(%struct.atl1c_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.atl1c_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atl1c_tpd_ring*, align 8
  %6 = alloca %struct.atl1c_buffer*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %10, i32 0, i32 2
  %12 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %12, i64 %14
  store %struct.atl1c_tpd_ring* %15, %struct.atl1c_tpd_ring** %5, align 8
  %16 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %16, i32 0, i32 1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %7, align 8
  %19 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %20 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %22

22:                                               ; preds = %35, %2
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %28 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %27, i32 0, i32 4
  %29 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %29, i64 %30
  store %struct.atl1c_buffer* %31, %struct.atl1c_buffer** %6, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %33 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %6, align 8
  %34 = call i32 @atl1c_clean_buffer(%struct.pci_dev* %32, %struct.atl1c_buffer* %33)
  br label %35

35:                                               ; preds = %26
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %8, align 8
  br label %22

38:                                               ; preds = %22
  %39 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @netdev_reset_queue(i32 %41)
  %43 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %44 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %9, align 8
  %47 = mul i64 4, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memset(i32 %45, i32 0, i32 %48)
  %50 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %51 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %50, i32 0, i32 2
  %52 = call i32 @atomic_set(i32* %51, i32 0)
  %53 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %54 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  ret void
}

declare dso_local i32 @atl1c_clean_buffer(%struct.pci_dev*, %struct.atl1c_buffer*) #1

declare dso_local i32 @netdev_reset_queue(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
