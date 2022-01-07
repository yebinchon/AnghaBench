; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AH_TIME_QUANTUM = common dso_local global i32 0, align 4
@ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"timeout (%d us) on reg 0x%x: 0x%08x & 0x%08x != 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_wait(%struct.ath_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @AH_TIME_QUANTUM, align 4
  %15 = icmp slt i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %36, %5
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @AH_TIME_QUANTUM, align 4
  %22 = sdiv i32 %20, %21
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %18
  %25 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @REG_READ(%struct.ath_hw* %25, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %51

33:                                               ; preds = %24
  %34 = load i32, i32* @AH_TIME_QUANTUM, align 4
  %35 = call i32 @udelay(i32 %34)
  br label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %12, align 4
  br label %18

39:                                               ; preds = %18
  %40 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %41 = call i32 @ath9k_hw_common(%struct.ath_hw* %40)
  %42 = load i32, i32* @ANY, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @REG_READ(%struct.ath_hw* %45, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @ath_dbg(i32 %41, i32 %42, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %47, i32 %48, i32 %49)
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %39, %32
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
