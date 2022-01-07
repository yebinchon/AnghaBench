; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_dma.c_ath5k_hw_update_tx_triglevel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_dma.c_ath5k_hw_update_tx_triglevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i64 }

@EIO = common dso_local global i32 0, align 4
@AR5K_INT_GLOBAL = common dso_local global i64 0, align 8
@AR5K_TXCFG = common dso_local global i32 0, align 4
@AR5K_TXCFG_TXFULL = common dso_local global i32 0, align 4
@AR5K_TUNE_MIN_TX_FIFO_THRES = common dso_local global i64 0, align 8
@AR5K_TUNE_MAX_TX_FIFO_THRES = common dso_local global i64 0, align 8
@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_TRIG_LVL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_update_tx_triglevel(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @EIO, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AR5K_INT_GLOBAL, align 8
  %15 = xor i64 %14, -1
  %16 = and i64 %13, %15
  %17 = call i64 @ath5k_hw_set_imr(%struct.ath5k_hw* %10, i64 %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %19 = load i32, i32* @AR5K_TXCFG, align 4
  %20 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %18, i32 %19)
  %21 = load i32, i32* @AR5K_TXCFG_TXFULL, align 4
  %22 = call i64 @AR5K_REG_MS(i32 %20, i32 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %2
  %26 = load i64, i64* %5, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* @AR5K_TUNE_MIN_TX_FIFO_THRES, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %57

31:                                               ; preds = %25
  br label %39

32:                                               ; preds = %2
  %33 = load i64, i64* @AR5K_TUNE_MAX_TX_FIFO_THRES, align 8
  %34 = load i64, i64* %5, align 8
  %35 = sub nsw i64 %33, %34
  %36 = sdiv i64 %35, 2
  %37 = load i64, i64* %5, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %32, %31
  %40 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %41 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AR5K_AR5210, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i32, i32* @AR5K_TRIG_LVL, align 4
  %49 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %46, i64 %47, i32 %48)
  br label %56

50:                                               ; preds = %39
  %51 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %52 = load i32, i32* @AR5K_TXCFG, align 4
  %53 = load i32, i32* @AR5K_TXCFG_TXFULL, align 4
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %51, i32 %52, i32 %53, i64 %54)
  br label %56

56:                                               ; preds = %50, %45
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %56, %30
  %58 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i64 @ath5k_hw_set_imr(%struct.ath5k_hw* %58, i64 %59)
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i64 @ath5k_hw_set_imr(%struct.ath5k_hw*, i64) #1

declare dso_local i64 @AR5K_REG_MS(i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i64, i32) #1

declare dso_local i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
