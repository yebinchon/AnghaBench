; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_get_tsf64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_get_tsf64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }

@AR5K_TSF_U32 = common dso_local global i32 0, align 4
@ATH5K_MAX_TSF_READ = common dso_local global i32 0, align 4
@AR5K_TSF_L32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_get_tsf64(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %11 = load i32, i32* @AR5K_TSF_U32, align 4
  %12 = call i64 @ath5k_hw_reg_read(%struct.ath5k_hw* %10, i32 %11)
  store i64 %12, i64* %4, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %30, %1
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @ATH5K_MAX_TSF_READ, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %19 = load i32, i32* @AR5K_TSF_L32, align 4
  %20 = call i64 @ath5k_hw_reg_read(%struct.ath5k_hw* %18, i32 %19)
  store i64 %20, i64* %3, align 8
  %21 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %22 = load i32, i32* @AR5K_TSF_U32, align 4
  %23 = call i64 @ath5k_hw_reg_read(%struct.ath5k_hw* %21, i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %33

28:                                               ; preds = %17
  %29 = load i64, i64* %5, align 8
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %13

33:                                               ; preds = %27, %13
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @local_irq_restore(i64 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @ATH5K_MAX_TSF_READ, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON(i32 %39)
  %41 = load i64, i64* %4, align 8
  %42 = trunc i64 %41 to i32
  %43 = shl i32 %42, 32
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %3, align 8
  %46 = or i64 %44, %45
  %47 = trunc i64 %46 to i32
  ret i32 %47
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
