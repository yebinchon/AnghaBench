; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65218.c_tps65218_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65218.c_tps65218_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps65218 = type { i32 }

@TPS65218_PASSWORD_REGS_UNLOCK = common dso_local global i32 0, align 4
@TPS65218_REG_PASSWORD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tps65218_reg_write(%struct.tps65218* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tps65218*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tps65218* %0, %struct.tps65218** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  switch i32 %12, label %41 [
    i32 128, label %13
    i32 129, label %20
  ]

13:                                               ; preds = %4
  %14 = load %struct.tps65218*, %struct.tps65218** %6, align 8
  %15 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @regmap_write(i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %44

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @TPS65218_PASSWORD_REGS_UNLOCK, align 4
  %23 = xor i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load %struct.tps65218*, %struct.tps65218** %6, align 8
  %25 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TPS65218_REG_PASSWORD, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @regmap_write(i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %44

34:                                               ; preds = %20
  %35 = load %struct.tps65218*, %struct.tps65218** %6, align 8
  %36 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @regmap_write(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %5, align 4
  br label %44

41:                                               ; preds = %4
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %34, %32, %13
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
