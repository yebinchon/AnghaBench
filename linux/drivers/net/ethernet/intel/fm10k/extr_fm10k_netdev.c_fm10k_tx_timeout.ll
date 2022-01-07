; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fm10k_intfc = type { i32, %struct.fm10k_ring** }
%struct.fm10k_ring = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Fake Tx hang detected with timeout of %d seconds\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@TX_TIMEO_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fm10k_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fm10k_ring*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.fm10k_intfc* @netdev_priv(%struct.net_device* %7)
  store %struct.fm10k_intfc* %8, %struct.fm10k_intfc** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %32, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %12 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %9
  %16 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %17 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %16, i32 0, i32 1
  %18 = load %struct.fm10k_ring**, %struct.fm10k_ring*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.fm10k_ring*, %struct.fm10k_ring** %18, i64 %20
  %22 = load %struct.fm10k_ring*, %struct.fm10k_ring** %21, align 8
  store %struct.fm10k_ring* %22, %struct.fm10k_ring** %6, align 8
  %23 = load %struct.fm10k_ring*, %struct.fm10k_ring** %6, align 8
  %24 = call i64 @check_for_tx_hang(%struct.fm10k_ring* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = load %struct.fm10k_ring*, %struct.fm10k_ring** %6, align 8
  %28 = call i64 @fm10k_check_tx_hang(%struct.fm10k_ring* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %26, %15
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %9

35:                                               ; preds = %9
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %40 = call i32 @fm10k_tx_timeout_reset(%struct.fm10k_intfc* %39)
  br label %61

41:                                               ; preds = %35
  %42 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %43 = load i32, i32* @drv, align 4
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @HZ, align 4
  %49 = sdiv i32 %47, %48
  %50 = call i32 @netif_info(%struct.fm10k_intfc* %42, i32 %43, %struct.net_device* %44, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 16000
  br i1 %54, label %55, label %60

55:                                               ; preds = %41
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, 2
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %55, %41
  br label %61

61:                                               ; preds = %60, %38
  ret void
}

declare dso_local %struct.fm10k_intfc* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @check_for_tx_hang(%struct.fm10k_ring*) #1

declare dso_local i64 @fm10k_check_tx_hang(%struct.fm10k_ring*) #1

declare dso_local i32 @fm10k_tx_timeout_reset(%struct.fm10k_intfc*) #1

declare dso_local i32 @netif_info(%struct.fm10k_intfc*, i32, %struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
