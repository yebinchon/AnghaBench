; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps80031.c_tps80031_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps80031.c_tps80031_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps80031 = type { i32, i32*, %struct.device* }
%struct.device = type { i32 }

@TPS80031_SLAVE_ID2 = common dso_local global i64 0, align 8
@TPS80031_INT_MSK_STS_A = common dso_local global i64 0, align 8
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@tps80031_irq_chip = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"add irq failed, err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps80031*, i32, i32)* @tps80031_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps80031_irq_init(%struct.tps80031* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tps80031*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tps80031* %0, %struct.tps80031** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.tps80031*, %struct.tps80031** %5, align 8
  %12 = getelementptr inbounds %struct.tps80031, %struct.tps80031* %11, i32 0, i32 2
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %25, %3
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load %struct.device*, %struct.device** %8, align 8
  %19 = load i64, i64* @TPS80031_SLAVE_ID2, align 8
  %20 = load i64, i64* @TPS80031_INT_MSK_STS_A, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = call i32 @tps80031_write(%struct.device* %18, i64 %19, i64 %23, i32 0)
  br label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %14

28:                                               ; preds = %14
  %29 = load %struct.tps80031*, %struct.tps80031** %5, align 8
  %30 = getelementptr inbounds %struct.tps80031, %struct.tps80031* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @TPS80031_SLAVE_ID2, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @IRQF_ONESHOT, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.tps80031*, %struct.tps80031** %5, align 8
  %39 = getelementptr inbounds %struct.tps80031, %struct.tps80031* %38, i32 0, i32 0
  %40 = call i32 @regmap_add_irq_chip(i32 %34, i32 %35, i32 %36, i32 %37, i32* @tps80031_irq_chip, i32* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %28
  %44 = load %struct.device*, %struct.device** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %50

48:                                               ; preds = %28
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %43
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @tps80031_write(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @regmap_add_irq_chip(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
