; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max8998-irq.c_max8998_irq_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max8998-irq.c_max8998_irq_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.max8998_dev = type { i64*, i64*, i32, i32 }

@MAX8998_REG_IRQM1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @max8998_irq_sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max8998_irq_sync_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.max8998_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call %struct.max8998_dev* @irq_data_get_irq_chip_data(%struct.irq_data* %5)
  store %struct.max8998_dev* %6, %struct.max8998_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %60, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.max8998_dev*, %struct.max8998_dev** %3, align 8
  %10 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = call i32 @ARRAY_SIZE(i64* %11)
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %63

14:                                               ; preds = %7
  %15 = load %struct.max8998_dev*, %struct.max8998_dev** %3, align 8
  %16 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.max8998_dev*, %struct.max8998_dev** %3, align 8
  %23 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %21, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %14
  %31 = load %struct.max8998_dev*, %struct.max8998_dev** %3, align 8
  %32 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.max8998_dev*, %struct.max8998_dev** %3, align 8
  %39 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  store i64 %37, i64* %43, align 8
  %44 = load %struct.max8998_dev*, %struct.max8998_dev** %3, align 8
  %45 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* @MAX8998_REG_IRQM1, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = load %struct.max8998_dev*, %struct.max8998_dev** %3, align 8
  %52 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @max8998_write_reg(i32 %46, i64 %50, i64 %57)
  br label %59

59:                                               ; preds = %30, %14
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %7

63:                                               ; preds = %7
  %64 = load %struct.max8998_dev*, %struct.max8998_dev** %3, align 8
  %65 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %64, i32 0, i32 2
  %66 = call i32 @mutex_unlock(i32* %65)
  ret void
}

declare dso_local %struct.max8998_dev* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @max8998_write_reg(i32, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
