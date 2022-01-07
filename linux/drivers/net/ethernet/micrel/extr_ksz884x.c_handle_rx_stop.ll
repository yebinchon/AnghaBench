; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_handle_rx_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_handle_rx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i32, i32, i32, i64 }

@KS884X_INT_RX_STOPPED = common dso_local global i32 0, align 4
@DMA_RX_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*)* @handle_rx_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_rx_stop(%struct.ksz_hw* %0) #0 {
  %2 = alloca %struct.ksz_hw*, align 8
  store %struct.ksz_hw* %0, %struct.ksz_hw** %2, align 8
  %3 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %4 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp eq i32 0, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i32, i32* @KS884X_INT_RX_STOPPED, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 8
  br label %50

14:                                               ; preds = %1
  %15 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %16 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %21 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %26 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DMA_RX_ENABLE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %33 = call i32 @hw_start_rx(%struct.ksz_hw* %32)
  br label %43

34:                                               ; preds = %24, %19
  %35 = load i32, i32* @KS884X_INT_RX_STOPPED, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %38 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %42 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %34, %31
  br label %49

44:                                               ; preds = %14
  %45 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %46 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %44, %43
  br label %50

50:                                               ; preds = %49, %7
  ret void
}

declare dso_local i32 @hw_start_rx(%struct.ksz_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
