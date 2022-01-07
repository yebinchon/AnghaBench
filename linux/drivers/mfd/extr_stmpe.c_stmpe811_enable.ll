; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe811_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe811_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe = type { i32* }

@STMPE_BLOCK_GPIO = common dso_local global i32 0, align 4
@STMPE811_SYS_CTRL2_GPIO_OFF = common dso_local global i32 0, align 4
@STMPE_BLOCK_ADC = common dso_local global i32 0, align 4
@STMPE811_SYS_CTRL2_ADC_OFF = common dso_local global i32 0, align 4
@STMPE_BLOCK_TOUCHSCREEN = common dso_local global i32 0, align 4
@STMPE811_SYS_CTRL2_TSC_OFF = common dso_local global i32 0, align 4
@STMPE_IDX_SYS_CTRL2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmpe*, i32, i32)* @stmpe811_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe811_enable(%struct.stmpe* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stmpe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stmpe* %0, %struct.stmpe** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @STMPE_BLOCK_GPIO, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @STMPE811_SYS_CTRL2_GPIO_OFF, align 4
  %14 = load i32, i32* %7, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %12, %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @STMPE_BLOCK_ADC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @STMPE811_SYS_CTRL2_ADC_OFF, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @STMPE_BLOCK_TOUCHSCREEN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @STMPE811_SYS_CTRL2_TSC_OFF, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.stmpe*, %struct.stmpe** %4, align 8
  %36 = load %struct.stmpe*, %struct.stmpe** %4, align 8
  %37 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @STMPE_IDX_SYS_CTRL2, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %48

46:                                               ; preds = %34
  %47 = load i32, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %45
  %49 = phi i32 [ 0, %45 ], [ %47, %46 ]
  %50 = call i32 @__stmpe_set_bits(%struct.stmpe* %35, i32 %41, i32 %42, i32 %49)
  ret i32 %50
}

declare dso_local i32 @__stmpe_set_bits(%struct.stmpe*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
