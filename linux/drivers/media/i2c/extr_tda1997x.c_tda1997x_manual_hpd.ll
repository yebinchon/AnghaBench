; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_manual_hpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_manual_hpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@REG_HPD_AUTO_CTRL = common dso_local global i32 0, align 4
@REG_HPD_POWER = common dso_local global i32 0, align 4
@REG_HPD_MAN_CTRL = common dso_local global i32 0, align 4
@HPD_MAN_CTRL_HPD_PULSE = common dso_local global i32 0, align 4
@HPD_MAN_CTRL_5VEN = common dso_local global i32 0, align 4
@HPD_MAN_CTRL_HPD_B = common dso_local global i32 0, align 4
@HPD_MAN_CTRL_HPD_A = common dso_local global i32 0, align 4
@HPD_POWER_BP_MASK = common dso_local global i32 0, align 4
@HPD_POWER_BP_SHIFT = common dso_local global i32 0, align 4
@HPD_AUTO_HP_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @tda1997x_manual_hpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda1997x_manual_hpd(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = load i32, i32* @REG_HPD_AUTO_CTRL, align 4
  %10 = call i32 @io_read(%struct.v4l2_subdev* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = load i32, i32* @REG_HPD_POWER, align 4
  %13 = call i32 @io_read(%struct.v4l2_subdev* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %15 = load i32, i32* @REG_HPD_MAN_CTRL, align 4
  %16 = call i32 @io_read(%struct.v4l2_subdev* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @HPD_MAN_CTRL_HPD_PULSE, align 4
  %18 = load i32, i32* @HPD_MAN_CTRL_5VEN, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @HPD_MAN_CTRL_HPD_B, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @HPD_MAN_CTRL_HPD_A, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %97 [
    i32 130, label %27
    i32 132, label %46
    i32 129, label %59
    i32 131, label %78
    i32 128, label %86
  ]

27:                                               ; preds = %2
  %28 = load i32, i32* @HPD_POWER_BP_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @HPD_MAN_CTRL_HPD_A, align 4
  %33 = load i32, i32* @HPD_MAN_CTRL_HPD_B, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %39 = load i32, i32* @REG_HPD_POWER, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @io_write(%struct.v4l2_subdev* %38, i32 %39, i32 %40)
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %43 = load i32, i32* @REG_HPD_MAN_CTRL, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @io_write(%struct.v4l2_subdev* %42, i32 %43, i32 %44)
  br label %97

46:                                               ; preds = %2
  %47 = load i32, i32* @HPD_POWER_BP_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @HPD_POWER_BP_SHIFT, align 4
  %52 = shl i32 1, %51
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %56 = load i32, i32* @REG_HPD_POWER, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @io_write(%struct.v4l2_subdev* %55, i32 %56, i32 %57)
  br label %97

59:                                               ; preds = %2
  %60 = load i32, i32* @HPD_MAN_CTRL_HPD_A, align 4
  %61 = load i32, i32* @HPD_MAN_CTRL_HPD_B, align 4
  %62 = or i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* @HPD_AUTO_HP_OTHER, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %71 = load i32, i32* @REG_HPD_AUTO_CTRL, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @io_write(%struct.v4l2_subdev* %70, i32 %71, i32 %72)
  %74 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %75 = load i32, i32* @REG_HPD_MAN_CTRL, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @io_write(%struct.v4l2_subdev* %74, i32 %75, i32 %76)
  br label %97

78:                                               ; preds = %2
  %79 = load i32, i32* @HPD_AUTO_HP_OTHER, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %83 = load i32, i32* @REG_HPD_AUTO_CTRL, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @io_write(%struct.v4l2_subdev* %82, i32 %83, i32 %84)
  br label %97

86:                                               ; preds = %2
  %87 = load i32, i32* @HPD_MAN_CTRL_HPD_A, align 4
  %88 = load i32, i32* @HPD_MAN_CTRL_HPD_B, align 4
  %89 = or i32 %87, %88
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %7, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %7, align 4
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %94 = load i32, i32* @REG_HPD_MAN_CTRL, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @io_write(%struct.v4l2_subdev* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %2, %86, %78, %59, %46, %27
  ret i32 0
}

declare dso_local i32 @io_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @io_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
