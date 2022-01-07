; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_radio_revision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_radio_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64 }

@AR5K_PHY_SHIFT_2GHZ = common dso_local global i32 0, align 4
@AR5K_PHY_SHIFT_5GHZ = common dso_local global i32 0, align 4
@AR5K_AR5210 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ath5k_hw_radio_revision(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %20 [
    i32 129, label %10
    i32 128, label %15
  ]

10:                                               ; preds = %2
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %12 = load i32, i32* @AR5K_PHY_SHIFT_2GHZ, align 4
  %13 = call i32 @AR5K_PHY(i32 0)
  %14 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %11, i32 %12, i32 %13)
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %17 = load i32, i32* @AR5K_PHY_SHIFT_5GHZ, align 4
  %18 = call i32 @AR5K_PHY(i32 0)
  %19 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %16, i32 %17, i32 %18)
  br label %21

20:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %71

21:                                               ; preds = %15, %10
  %22 = call i32 @usleep_range(i32 2000, i32 2500)
  %23 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %24 = call i32 @AR5K_PHY(i32 52)
  %25 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %23, i32 7190, i32 %24)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %33, %21
  %27 = load i32, i32* %6, align 4
  %28 = icmp ult i32 %27, 8
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %31 = call i32 @AR5K_PHY(i32 32)
  %32 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %30, i32 65536, i32 %31)
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %26

36:                                               ; preds = %26
  %37 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %38 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AR5K_AR5210, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %44 = call i32 @AR5K_PHY(i32 256)
  %45 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %43, i32 %44)
  %46 = ashr i32 %45, 28
  %47 = and i32 %46, 15
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @ath5k_hw_bitswap(i32 %48, i32 4)
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %8, align 8
  br label %65

51:                                               ; preds = %36
  %52 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %53 = call i32 @AR5K_PHY(i32 256)
  %54 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %52, i32 %53)
  %55 = ashr i32 %54, 24
  %56 = and i32 %55, 255
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 240
  %59 = ashr i32 %58, 4
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, 15
  %62 = shl i32 %61, 4
  %63 = or i32 %59, %62
  %64 = call i64 @ath5k_hw_bitswap(i32 %63, i32 8)
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %51, %42
  %66 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %67 = load i32, i32* @AR5K_PHY_SHIFT_5GHZ, align 4
  %68 = call i32 @AR5K_PHY(i32 0)
  %69 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %66, i32 %67, i32 %68)
  %70 = load i64, i64* %8, align 8
  store i64 %70, i64* %3, align 8
  br label %71

71:                                               ; preds = %65, %20
  %72 = load i64, i64* %3, align 8
  ret i64 %72
}

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_PHY(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i64 @ath5k_hw_bitswap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
