; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-core.c_ab8500_irq_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-core.c_ab8500_irq_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.ab8500 = type { i32, i64*, i64*, i32*, i32, i32 }

@AB8500_IT_MASK1_REG = common dso_local global i32 0, align 4
@AB8500_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @ab8500_irq_sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ab8500_irq_sync_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.ab8500*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = call %struct.ab8500* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.ab8500* %9, %struct.ab8500** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %81, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ab8500*, %struct.ab8500** %3, align 8
  %13 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %84

16:                                               ; preds = %10
  %17 = load %struct.ab8500*, %struct.ab8500** %3, align 8
  %18 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %5, align 8
  %24 = load %struct.ab8500*, %struct.ab8500** %3, align 8
  %25 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %24, i32 0, i32 2
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %16
  br label %81

35:                                               ; preds = %16
  %36 = load %struct.ab8500*, %struct.ab8500** %3, align 8
  %37 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 11
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.ab8500*, %struct.ab8500** %3, align 8
  %46 = call i64 @is_ab8500_1p1_or_earlier(%struct.ab8500* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %81

49:                                               ; preds = %44, %35
  %50 = load %struct.ab8500*, %struct.ab8500** %3, align 8
  %51 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %81

59:                                               ; preds = %49
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.ab8500*, %struct.ab8500** %3, align 8
  %62 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64 %60, i64* %66, align 8
  %67 = load i32, i32* @AB8500_IT_MASK1_REG, align 4
  %68 = load %struct.ab8500*, %struct.ab8500** %3, align 8
  %69 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %67, %74
  store i32 %75, i32* %7, align 4
  %76 = load %struct.ab8500*, %struct.ab8500** %3, align 8
  %77 = load i32, i32* @AB8500_INTERRUPT, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @set_register_interruptible(%struct.ab8500* %76, i32 %77, i32 %78, i64 %79)
  br label %81

81:                                               ; preds = %59, %58, %48, %34
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %10

84:                                               ; preds = %10
  %85 = load %struct.ab8500*, %struct.ab8500** %3, align 8
  %86 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %85, i32 0, i32 5
  %87 = call i32 @atomic_dec(i32* %86)
  %88 = load %struct.ab8500*, %struct.ab8500** %3, align 8
  %89 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %88, i32 0, i32 4
  %90 = call i32 @mutex_unlock(i32* %89)
  ret void
}

declare dso_local %struct.ab8500* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i64 @is_ab8500_1p1_or_earlier(%struct.ab8500*) #1

declare dso_local i32 @set_register_interruptible(%struct.ab8500*, i32, i32, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
