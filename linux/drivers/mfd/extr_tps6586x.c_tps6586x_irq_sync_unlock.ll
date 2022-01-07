; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps6586x.c_tps6586x_irq_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps6586x.c_tps6586x_irq_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.tps6586x = type { i32, i32*, i32 }

@TPS6586X_INT_MASK1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @tps6586x_irq_sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tps6586x_irq_sync_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.tps6586x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.tps6586x* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.tps6586x* %7, %struct.tps6586x** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %33, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.tps6586x*, %struct.tps6586x** %3, align 8
  %11 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %8
  %16 = load %struct.tps6586x*, %struct.tps6586x** %3, align 8
  %17 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* @TPS6586X_INT_MASK1, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = load %struct.tps6586x*, %struct.tps6586x** %3, align 8
  %24 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @tps6586x_write(i32 %18, i64 %22, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @WARN_ON(i32 %31)
  br label %33

33:                                               ; preds = %15
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %8

36:                                               ; preds = %8
  %37 = load %struct.tps6586x*, %struct.tps6586x** %3, align 8
  %38 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  ret void
}

declare dso_local %struct.tps6586x* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @tps6586x_write(i32, i64, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
