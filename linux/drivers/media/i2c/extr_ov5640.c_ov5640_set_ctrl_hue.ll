; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_ctrl_hue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_ctrl_hue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5640_dev = type { i32 }

@OV5640_REG_SDE_CTRL0 = common dso_local global i32 0, align 4
@OV5640_REG_SDE_CTRL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5640_dev*, i32)* @ov5640_set_ctrl_hue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_set_ctrl_hue(%struct.ov5640_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov5640_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ov5640_dev* %0, %struct.ov5640_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %11 = load i32, i32* @OV5640_REG_SDE_CTRL0, align 4
  %12 = call i32 @BIT(i32 0)
  %13 = call i32 @BIT(i32 0)
  %14 = call i32 @ov5640_mod_reg(%struct.ov5640_dev* %10, i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %31

19:                                               ; preds = %9
  %20 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %21 = load i32, i32* @OV5640_REG_SDE_CTRL1, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ov5640_write_reg16(%struct.ov5640_dev* %20, i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %26 = load i32, i32* @OV5640_REG_SDE_CTRL0, align 4
  %27 = call i32 @BIT(i32 0)
  %28 = call i32 @ov5640_mod_reg(%struct.ov5640_dev* %25, i32 %26, i32 %27, i32 0)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %17
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @ov5640_mod_reg(%struct.ov5640_dev*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ov5640_write_reg16(%struct.ov5640_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
