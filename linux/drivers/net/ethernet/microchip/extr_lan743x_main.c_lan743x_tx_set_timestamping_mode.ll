; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_tx_set_timestamping_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_tx_set_timestamping_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_tx = type { i32 }

@TX_TS_FLAG_TIMESTAMPING_ENABLED = common dso_local global i32 0, align 4
@TX_TS_FLAG_ONE_STEP_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lan743x_tx_set_timestamping_mode(%struct.lan743x_tx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lan743x_tx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lan743x_tx* %0, %struct.lan743x_tx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load i32, i32* @TX_TS_FLAG_TIMESTAMPING_ENABLED, align 4
  %11 = load %struct.lan743x_tx*, %struct.lan743x_tx** %4, align 8
  %12 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  br label %22

15:                                               ; preds = %3
  %16 = load i32, i32* @TX_TS_FLAG_TIMESTAMPING_ENABLED, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.lan743x_tx*, %struct.lan743x_tx** %4, align 8
  %19 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %15, %9
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* @TX_TS_FLAG_ONE_STEP_SYNC, align 4
  %27 = load %struct.lan743x_tx*, %struct.lan743x_tx** %4, align 8
  %28 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %38

31:                                               ; preds = %22
  %32 = load i32, i32* @TX_TS_FLAG_ONE_STEP_SYNC, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.lan743x_tx*, %struct.lan743x_tx** %4, align 8
  %35 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %31, %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
