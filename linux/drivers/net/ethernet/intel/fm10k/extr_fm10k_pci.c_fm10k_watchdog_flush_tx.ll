; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_watchdog_flush_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_watchdog_flush_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32, i32, %struct.fm10k_ring**, i32 }
%struct.fm10k_ring = type { i64, i64 }

@FM10K_FLAG_RESET_REQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_intfc*)* @fm10k_watchdog_flush_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_watchdog_flush_tx(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca %struct.fm10k_intfc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fm10k_ring*, align 8
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %7 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @netif_carrier_ok(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %48

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %36, %12
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %16 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  %20 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %21 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %20, i32 0, i32 2
  %22 = load %struct.fm10k_ring**, %struct.fm10k_ring*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.fm10k_ring*, %struct.fm10k_ring** %22, i64 %24
  %26 = load %struct.fm10k_ring*, %struct.fm10k_ring** %25, align 8
  store %struct.fm10k_ring* %26, %struct.fm10k_ring** %5, align 8
  %27 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %28 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %31 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %39

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %13

39:                                               ; preds = %34, %13
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* @FM10K_FLAG_RESET_REQUESTED, align 4
  %44 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %45 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @set_bit(i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %11, %42, %39
  ret void
}

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
