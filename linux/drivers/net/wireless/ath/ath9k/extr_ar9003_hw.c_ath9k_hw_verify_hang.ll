; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_hw.c_ath9k_hw_verify_hang.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_hw.c_ath9k_hw_verify_hang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@NUM_STATUS_READS = common dso_local global i32 0, align 4
@AR_DMADBG_4 = common dso_local global i32 0, align 4
@AR_DMADBG_5 = common dso_local global i32 0, align 4
@AR_DMADBG_6 = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"MAC Hang signature found for queue: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32)* @ath9k_hw_verify_hang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_verify_hang(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %44, %2
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* @NUM_STATUS_READS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = icmp ult i32 %16, 6
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %20 = load i32, i32* @AR_DMADBG_4, align 4
  %21 = call i32 @REG_READ(%struct.ath_hw* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  br label %26

22:                                               ; preds = %15
  %23 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %24 = load i32, i32* @AR_DMADBG_5, align 4
  %25 = call i32 @REG_READ(%struct.ath_hw* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %28 = load i32, i32* @AR_DMADBG_6, align 4
  %29 = call i32 @REG_READ(%struct.ath_hw* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = mul i32 5, %31
  %33 = ashr i32 %30, %32
  %34 = and i32 %33, 31
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 3
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 6
  br i1 %38, label %42, label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %26
  store i32 0, i32* %3, align 4
  br label %53

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %11

47:                                               ; preds = %11
  %48 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %49 = call i32 @ath9k_hw_common(%struct.ath_hw* %48)
  %50 = load i32, i32* @RESET, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @ath_dbg(i32 %49, i32 %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*, i32) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
