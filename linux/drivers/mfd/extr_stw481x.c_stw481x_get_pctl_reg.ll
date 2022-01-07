; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stw481x.c_stw481x_get_pctl_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stw481x.c_stw481x_get_pctl_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stw481x = type { i32 }

@STW_PCTL_REG_HI = common dso_local global i32 0, align 4
@STW_PCTL_REG_LO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stw481x*, i32)* @stw481x_get_pctl_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stw481x_get_pctl_reg(%struct.stw481x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stw481x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.stw481x* %0, %struct.stw481x** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = ashr i32 %11, 3
  %13 = and i32 %12, 3
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 %14, 5
  %16 = and i32 %15, 224
  store i32 %16, i32* %7, align 4
  %17 = load %struct.stw481x*, %struct.stw481x** %4, align 8
  %18 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @STW_PCTL_REG_HI, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @regmap_write(i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %3, align 4
  br label %77

27:                                               ; preds = %2
  %28 = load %struct.stw481x*, %struct.stw481x** %4, align 8
  %29 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @STW_PCTL_REG_LO, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @regmap_write(i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %3, align 4
  br label %77

38:                                               ; preds = %27
  %39 = load %struct.stw481x*, %struct.stw481x** %4, align 8
  %40 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @STW_PCTL_REG_HI, align 4
  %43 = call i32 @regmap_read(i32 %41, i32 %42, i32* %8)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  br label %77

48:                                               ; preds = %38
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, 3
  %51 = shl i32 %50, 3
  store i32 %51, i32* %9, align 4
  %52 = load %struct.stw481x*, %struct.stw481x** %4, align 8
  %53 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @STW_PCTL_REG_LO, align 4
  %56 = call i32 @regmap_read(i32 %54, i32 %55, i32* %8)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %3, align 4
  br label %77

61:                                               ; preds = %48
  %62 = load i32, i32* %8, align 4
  %63 = lshr i32 %62, 5
  %64 = and i32 %63, 7
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %77

73:                                               ; preds = %61
  %74 = load i32, i32* %8, align 4
  %75 = lshr i32 %74, 1
  %76 = and i32 %75, 15
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %70, %59, %46, %36, %25
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
