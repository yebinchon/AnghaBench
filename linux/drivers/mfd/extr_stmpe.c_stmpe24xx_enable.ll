; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe24xx_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe24xx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe = type { i32* }

@STMPE_BLOCK_GPIO = common dso_local global i32 0, align 4
@STMPE24XX_SYS_CTRL_ENABLE_GPIO = common dso_local global i32 0, align 4
@STMPE_BLOCK_KEYPAD = common dso_local global i32 0, align 4
@STMPE24XX_SYS_CTRL_ENABLE_KPC = common dso_local global i32 0, align 4
@STMPE_IDX_SYS_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmpe*, i32, i32)* @stmpe24xx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe24xx_enable(%struct.stmpe* %0, i32 %1, i32 %2) #0 {
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
  %13 = load i32, i32* @STMPE24XX_SYS_CTRL_ENABLE_GPIO, align 4
  %14 = load i32, i32* %7, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %12, %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @STMPE_BLOCK_KEYPAD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @STMPE24XX_SYS_CTRL_ENABLE_KPC, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %21, %16
  %26 = load %struct.stmpe*, %struct.stmpe** %4, align 8
  %27 = load %struct.stmpe*, %struct.stmpe** %4, align 8
  %28 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @STMPE_IDX_SYS_CTRL, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* %7, align 4
  br label %39

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = call i32 @__stmpe_set_bits(%struct.stmpe* %26, i32 %32, i32 %33, i32 %40)
  ret i32 %41
}

declare dso_local i32 @__stmpe_set_bits(%struct.stmpe*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
