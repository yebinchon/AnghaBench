; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_set_multicast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i64, i32 }

@DMA_RX_ALL_MULTICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*, i64)* @hw_set_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_set_multicast(%struct.ksz_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ksz_hw*, align 8
  %4 = alloca i64, align 8
  store %struct.ksz_hw* %0, %struct.ksz_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %6 = call i32 @hw_stop_rx(%struct.ksz_hw* %5)
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32, i32* @DMA_RX_ALL_MULTICAST, align 4
  %11 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  br label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @DMA_RX_ALL_MULTICAST, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %19 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  br label %22

22:                                               ; preds = %15, %9
  %23 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %24 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %29 = call i32 @hw_start_rx(%struct.ksz_hw* %28)
  br label %30

30:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @hw_stop_rx(%struct.ksz_hw*) #1

declare dso_local i32 @hw_start_rx(%struct.ksz_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
