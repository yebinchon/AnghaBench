; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_set_sharpness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_set_sharpness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov965x = type { i32 }

@REG_COM14 = common dso_local global i32 0, align 4
@REG_EDGE = common dso_local global i32 0, align 4
@COM14_EDGE_EN = common dso_local global i32 0, align 4
@COM14_EEF_X2 = common dso_local global i32 0, align 4
@EDGE_FACTOR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov965x*, i32)* @ov965x_set_sharpness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov965x_set_sharpness(%struct.ov965x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov965x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ov965x* %0, %struct.ov965x** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %10 = load i32, i32* @REG_COM14, align 4
  %11 = call i32 @ov965x_read(%struct.ov965x* %9, i32 %10, i32* %6)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %75

16:                                               ; preds = %2
  %17 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %18 = load i32, i32* @REG_EDGE, align 4
  %19 = call i32 @ov965x_read(%struct.ov965x* %17, i32 %18, i32* %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %75

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @COM14_EDGE_EN, align 4
  %30 = or i32 %28, %29
  br label %36

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @COM14_EDGE_EN, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi i32 [ %30, %27 ], [ %35, %31 ]
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, -1
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ugt i32 %40, 15
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i32, i32* @COM14_EEF_X2, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = lshr i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %53

48:                                               ; preds = %36
  %49 = load i32, i32* @COM14_EEF_X2, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %48, %42
  %54 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %55 = load i32, i32* @REG_COM14, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @ov965x_write(%struct.ov965x* %54, i32 %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %75

62:                                               ; preds = %53
  %63 = load i32, i32* @EDGE_FACTOR_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, 15
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %72 = load i32, i32* @REG_EDGE, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @ov965x_write(%struct.ov965x* %71, i32 %72, i32 %73)
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %62, %60, %22, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @ov965x_read(%struct.ov965x*, i32, i32*) #1

declare dso_local i32 @ov965x_write(%struct.ov965x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
