; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65217.c_tps65217_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65217.c_tps65217_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps65217 = type { i32 }

@TPS65217_PASSWORD_REGS_UNLOCK = common dso_local global i32 0, align 4
@TPS65217_REG_PASSWORD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tps65217_reg_write(%struct.tps65217* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tps65217*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tps65217* %0, %struct.tps65217** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  switch i32 %12, label %84 [
    i32 128, label %13
    i32 130, label %20
    i32 129, label %41
  ]

13:                                               ; preds = %4
  %14 = load %struct.tps65217*, %struct.tps65217** %6, align 8
  %15 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @regmap_write(i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %87

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @TPS65217_PASSWORD_REGS_UNLOCK, align 4
  %23 = xor i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load %struct.tps65217*, %struct.tps65217** %6, align 8
  %25 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TPS65217_REG_PASSWORD, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @regmap_write(i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %87

34:                                               ; preds = %20
  %35 = load %struct.tps65217*, %struct.tps65217** %6, align 8
  %36 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @regmap_write(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %5, align 4
  br label %87

41:                                               ; preds = %4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @TPS65217_PASSWORD_REGS_UNLOCK, align 4
  %44 = xor i32 %42, %43
  store i32 %44, i32* %11, align 4
  %45 = load %struct.tps65217*, %struct.tps65217** %6, align 8
  %46 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TPS65217_REG_PASSWORD, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @regmap_write(i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %5, align 4
  br label %87

55:                                               ; preds = %41
  %56 = load %struct.tps65217*, %struct.tps65217** %6, align 8
  %57 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @regmap_write(i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %87

66:                                               ; preds = %55
  %67 = load %struct.tps65217*, %struct.tps65217** %6, align 8
  %68 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @TPS65217_REG_PASSWORD, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @regmap_write(i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %5, align 4
  br label %87

77:                                               ; preds = %66
  %78 = load %struct.tps65217*, %struct.tps65217** %6, align 8
  %79 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @regmap_write(i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %5, align 4
  br label %87

84:                                               ; preds = %4
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %84, %77, %75, %64, %53, %34, %32, %13
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
