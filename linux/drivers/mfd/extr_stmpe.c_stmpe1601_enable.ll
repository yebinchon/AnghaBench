; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe1601_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe1601_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe = type { i32* }

@STMPE_BLOCK_GPIO = common dso_local global i32 0, align 4
@STMPE1601_SYS_CTRL_ENABLE_GPIO = common dso_local global i32 0, align 4
@STMPE_BLOCK_KEYPAD = common dso_local global i32 0, align 4
@STMPE1601_SYS_CTRL_ENABLE_KPC = common dso_local global i32 0, align 4
@STMPE_BLOCK_PWM = common dso_local global i32 0, align 4
@STMPE1601_SYS_CTRL_ENABLE_SPWM = common dso_local global i32 0, align 4
@STMPE_IDX_SYS_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmpe*, i32, i32)* @stmpe1601_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe1601_enable(%struct.stmpe* %0, i32 %1, i32 %2) #0 {
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
  %13 = load i32, i32* @STMPE1601_SYS_CTRL_ENABLE_GPIO, align 4
  %14 = load i32, i32* %7, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %7, align 4
  br label %21

16:                                               ; preds = %3
  %17 = load i32, i32* @STMPE1601_SYS_CTRL_ENABLE_GPIO, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %16, %12
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @STMPE_BLOCK_KEYPAD, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @STMPE1601_SYS_CTRL_ENABLE_KPC, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %35

30:                                               ; preds = %21
  %31 = load i32, i32* @STMPE1601_SYS_CTRL_ENABLE_KPC, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @STMPE_BLOCK_PWM, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @STMPE1601_SYS_CTRL_ENABLE_SPWM, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %49

44:                                               ; preds = %35
  %45 = load i32, i32* @STMPE1601_SYS_CTRL_ENABLE_SPWM, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = load %struct.stmpe*, %struct.stmpe** %4, align 8
  %51 = load %struct.stmpe*, %struct.stmpe** %4, align 8
  %52 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @STMPE_IDX_SYS_CTRL, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32, i32* %7, align 4
  br label %63

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ 0, %62 ]
  %65 = call i32 @__stmpe_set_bits(%struct.stmpe* %50, i32 %56, i32 %57, i32 %64)
  ret i32 %65
}

declare dso_local i32 @__stmpe_set_bits(%struct.stmpe*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
