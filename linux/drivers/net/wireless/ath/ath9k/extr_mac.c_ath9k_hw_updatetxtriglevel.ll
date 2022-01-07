; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_updatetxtriglevel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_updatetxtriglevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@AR_TXCFG = common dso_local global i32 0, align 4
@AR_FTRIG = common dso_local global i64 0, align 8
@MIN_TX_FIFO_THRESHOLD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_updatetxtriglevel(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %11, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

18:                                               ; preds = %2
  %19 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %20 = call i32 @ath9k_hw_disable_interrupts(%struct.ath_hw* %19)
  %21 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %22 = load i32, i32* @AR_TXCFG, align 4
  %23 = call i64 @REG_READ(%struct.ath_hw* %21, i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @AR_FTRIG, align 8
  %26 = call i64 @MS(i64 %24, i64 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  store i64 %27, i64* %8, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %18
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %33 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %31, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i64, i64* %8, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %37, %30
  br label %49

41:                                               ; preds = %18
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @MIN_TX_FIFO_THRESHOLD, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i64, i64* %8, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %45, %41
  br label %49

49:                                               ; preds = %48, %40
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %55 = load i32, i32* @AR_TXCFG, align 4
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @AR_FTRIG, align 8
  %58 = xor i64 %57, -1
  %59 = and i64 %56, %58
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @AR_FTRIG, align 8
  %62 = call i64 @SM(i64 %60, i64 %61)
  %63 = or i64 %59, %62
  %64 = call i32 @REG_WRITE(%struct.ath_hw* %54, i32 %55, i64 %63)
  br label %65

65:                                               ; preds = %53, %49
  %66 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %67 = call i32 @ath9k_hw_enable_interrupts(%struct.ath_hw* %66)
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %70 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp ne i64 %71, %72
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %65, %17
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @ath9k_hw_disable_interrupts(%struct.ath_hw*) #1

declare dso_local i64 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i64 @MS(i64, i64) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i64) #1

declare dso_local i64 @SM(i64, i64) #1

declare dso_local i32 @ath9k_hw_enable_interrupts(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
