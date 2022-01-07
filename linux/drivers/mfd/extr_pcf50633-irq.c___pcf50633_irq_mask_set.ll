; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_pcf50633-irq.c___pcf50633_irq_mask_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_pcf50633-irq.c___pcf50633_irq_mask_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf50633 = type { i32*, i32 }

@PCF50633_REG_INT1M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcf50633*, i32, i32)* @__pcf50633_irq_mask_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pcf50633_irq_mask_set(%struct.pcf50633* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pcf50633*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pcf50633* %0, %struct.pcf50633** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 3
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @PCF50633_REG_INT1M, align 4
  %13 = load i32, i32* %9, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 7
  %17 = shl i32 1, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  %28 = call i32 @pcf50633_reg_set_bit_mask(%struct.pcf50633* %18, i32 %19, i32 %20, i32 %27)
  %29 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %30 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %37 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %35
  store i32 %43, i32* %41, align 4
  br label %55

44:                                               ; preds = %26
  %45 = load i32, i32* %8, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %48 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %46
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %44, %34
  %56 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %57 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  ret i32 0
}

declare dso_local i32 @pcf50633_reg_set_bit_mask(%struct.pcf50633*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
