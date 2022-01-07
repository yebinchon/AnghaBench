; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-hix5hd2.c_hix5hd2_ir_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-hix5hd2.c_hix5hd2_ir_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hix5hd2_ir_priv = type { i64, i32, i32 }

@IR_ENABLE = common dso_local global i64 0, align 8
@IR_BUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"IR_BUSY timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@IR_CFG_SYMBOL_MAXWIDTH = common dso_local global i32 0, align 4
@IR_CFG_WIDTH_MASK = common dso_local global i32 0, align 4
@IR_CFG_WIDTH_SHIFT = common dso_local global i32 0, align 4
@IR_CFG_SYMBOL_FMT = common dso_local global i32 0, align 4
@IR_CFG_FORMAT_MASK = common dso_local global i32 0, align 4
@IR_CFG_FORMAT_SHIFT = common dso_local global i32 0, align 4
@IR_CFG_INT_THRESHOLD = common dso_local global i32 0, align 4
@IR_CFG_INT_LEVEL_MASK = common dso_local global i32 0, align 4
@IR_CFG_INT_LEVEL_SHIFT = common dso_local global i32 0, align 4
@IR_CFG_MODE_RAW = common dso_local global i32 0, align 4
@IR_CFG_FREQ_MASK = common dso_local global i32 0, align 4
@IR_CFG_FREQ_SHIFT = common dso_local global i32 0, align 4
@IR_CONFIG = common dso_local global i64 0, align 8
@IR_INTM = common dso_local global i64 0, align 8
@IR_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hix5hd2_ir_priv*)* @hix5hd2_ir_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hix5hd2_ir_config(%struct.hix5hd2_ir_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hix5hd2_ir_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hix5hd2_ir_priv* %0, %struct.hix5hd2_ir_priv** %3, align 8
  store i32 10000, i32* %4, align 4
  %7 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %3, align 8
  %8 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IR_ENABLE, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel_relaxed(i32 1, i64 %11)
  br label %13

13:                                               ; preds = %34, %1
  %14 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %3, align 8
  %15 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IR_BUSY, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i64 @readl_relaxed(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %4, align 4
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @udelay(i32 1)
  br label %34

27:                                               ; preds = %21
  %28 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %3, align 8
  %29 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ETIMEDOUT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %90

34:                                               ; preds = %25
  br label %13

35:                                               ; preds = %13
  %36 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %3, align 8
  %37 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @DIV_ROUND_CLOSEST(i32 %38, i32 1000000)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @IR_CFG_SYMBOL_MAXWIDTH, align 4
  %41 = load i32, i32* @IR_CFG_WIDTH_MASK, align 4
  %42 = load i32, i32* @IR_CFG_WIDTH_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = and i32 %40, %43
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @IR_CFG_SYMBOL_FMT, align 4
  %46 = load i32, i32* @IR_CFG_FORMAT_MASK, align 4
  %47 = load i32, i32* @IR_CFG_FORMAT_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = and i32 %45, %48
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @IR_CFG_INT_THRESHOLD, align 4
  %53 = sub nsw i32 %52, 1
  %54 = load i32, i32* @IR_CFG_INT_LEVEL_MASK, align 4
  %55 = load i32, i32* @IR_CFG_INT_LEVEL_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = and i32 %53, %56
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @IR_CFG_MODE_RAW, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 %63, 1
  %65 = load i32, i32* @IR_CFG_FREQ_MASK, align 4
  %66 = load i32, i32* @IR_CFG_FREQ_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = and i32 %64, %67
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %3, align 8
  %73 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @IR_CONFIG, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel_relaxed(i32 %71, i64 %76)
  %78 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %3, align 8
  %79 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @IR_INTM, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel_relaxed(i32 0, i64 %82)
  %84 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %3, align 8
  %85 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @IR_START, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @writel_relaxed(i32 1, i64 %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %35, %27
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
