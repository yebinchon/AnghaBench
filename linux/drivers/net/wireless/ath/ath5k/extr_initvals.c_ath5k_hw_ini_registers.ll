; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_initvals.c_ath5k_hw_ini_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_initvals.c_ath5k_hw_ini_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }
%struct.ath5k_ini = type { i64, i32, i32 }

@AR5K_PCU_MIN = common dso_local global i64 0, align 8
@AR5K_PCU_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*, i32, %struct.ath5k_ini*, i32)* @ath5k_hw_ini_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_hw_ini_registers(%struct.ath5k_hw* %0, i32 %1, %struct.ath5k_ini* %2, i32 %3) #0 {
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath5k_ini*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ath5k_ini* %2, %struct.ath5k_ini** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %71, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %74

14:                                               ; preds = %10
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  %18 = load %struct.ath5k_ini*, %struct.ath5k_ini** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ath5k_ini, %struct.ath5k_ini* %18, i64 %20
  %22 = getelementptr inbounds %struct.ath5k_ini, %struct.ath5k_ini* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AR5K_PCU_MIN, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %17
  %27 = load %struct.ath5k_ini*, %struct.ath5k_ini** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ath5k_ini, %struct.ath5k_ini* %27, i64 %29
  %31 = getelementptr inbounds %struct.ath5k_ini, %struct.ath5k_ini* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AR5K_PCU_MAX, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %71

36:                                               ; preds = %26, %17, %14
  %37 = load %struct.ath5k_ini*, %struct.ath5k_ini** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ath5k_ini, %struct.ath5k_ini* %37, i64 %39
  %41 = getelementptr inbounds %struct.ath5k_ini, %struct.ath5k_ini* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %53 [
    i32 129, label %43
    i32 128, label %52
  ]

43:                                               ; preds = %36
  %44 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %45 = load %struct.ath5k_ini*, %struct.ath5k_ini** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ath5k_ini, %struct.ath5k_ini* %45, i64 %47
  %49 = getelementptr inbounds %struct.ath5k_ini, %struct.ath5k_ini* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %44, i64 %50)
  br label %70

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %36, %52
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @AR5K_REG_WAIT(i32 %54)
  %56 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %57 = load %struct.ath5k_ini*, %struct.ath5k_ini** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ath5k_ini, %struct.ath5k_ini* %57, i64 %59
  %61 = getelementptr inbounds %struct.ath5k_ini, %struct.ath5k_ini* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ath5k_ini*, %struct.ath5k_ini** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ath5k_ini, %struct.ath5k_ini* %63, i64 %65
  %67 = getelementptr inbounds %struct.ath5k_ini, %struct.ath5k_ini* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %56, i32 %62, i64 %68)
  br label %70

70:                                               ; preds = %53, %43
  br label %71

71:                                               ; preds = %70, %35
  %72 = load i32, i32* %9, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %10

74:                                               ; preds = %10
  ret void
}

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i64) #1

declare dso_local i32 @AR5K_REG_WAIT(i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
