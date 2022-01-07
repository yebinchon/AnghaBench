; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-hix5hd2.c_hix5hd2_ir_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-hix5hd2.c_hix5hd2_ir_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hix5hd2_ir_priv = type { i32, i64 }

@IR_CLK = common dso_local global i32 0, align 4
@IR_CLK_RESET = common dso_local global i32 0, align 4
@IR_CLK_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hix5hd2_ir_priv*, i32)* @hix5hd2_ir_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hix5hd2_ir_enable(%struct.hix5hd2_ir_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.hix5hd2_ir_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hix5hd2_ir_priv* %0, %struct.hix5hd2_ir_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %3, align 8
  %8 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %2
  %12 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %3, align 8
  %13 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @IR_CLK, align 4
  %16 = call i32 @regmap_read(i64 %14, i32 %15, i32* %5)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = load i32, i32* @IR_CLK_RESET, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @IR_CLK_ENABLE, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %35

27:                                               ; preds = %11
  %28 = load i32, i32* @IR_CLK_ENABLE, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @IR_CLK_RESET, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %27, %19
  %36 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %3, align 8
  %37 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @IR_CLK, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @regmap_write(i64 %38, i32 %39, i32 %40)
  br label %56

42:                                               ; preds = %2
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %3, align 8
  %47 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @clk_prepare_enable(i32 %48)
  store i32 %49, i32* %6, align 4
  br label %55

50:                                               ; preds = %42
  %51 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %3, align 8
  %52 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @clk_disable_unprepare(i32 %53)
  br label %55

55:                                               ; preds = %50, %45
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @regmap_read(i64, i32, i32*) #1

declare dso_local i32 @regmap_write(i64, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
