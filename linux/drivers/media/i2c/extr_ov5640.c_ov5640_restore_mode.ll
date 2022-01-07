; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_restore_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_restore_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5640_dev = type { i32, i32* }

@ov5640_mode_init_data = common dso_local global i32 0, align 4
@OV5640_REG_SYS_ROOT_DIVIDER = common dso_local global i32 0, align 4
@OV5640_SCLK2X_ROOT_DIV = common dso_local global i32 0, align 4
@OV5640_SCLK_ROOT_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5640_dev*)* @ov5640_restore_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_restore_mode(%struct.ov5640_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov5640_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.ov5640_dev* %0, %struct.ov5640_dev** %3, align 8
  %5 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %6 = call i32 @ov5640_load_regs(%struct.ov5640_dev* %5, i32* @ov5640_mode_init_data)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %39

11:                                               ; preds = %1
  %12 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %13 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %12, i32 0, i32 1
  store i32* @ov5640_mode_init_data, i32** %13, align 8
  %14 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %15 = load i32, i32* @OV5640_REG_SYS_ROOT_DIVIDER, align 4
  %16 = load i32, i32* @OV5640_SCLK2X_ROOT_DIV, align 4
  %17 = call i32 @ilog2(i32 %16)
  %18 = shl i32 %17, 2
  %19 = load i32, i32* @OV5640_SCLK_ROOT_DIV, align 4
  %20 = call i32 @ilog2(i32 %19)
  %21 = or i32 %18, %20
  %22 = call i32 @ov5640_mod_reg(%struct.ov5640_dev* %14, i32 %15, i32 63, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %11
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %39

27:                                               ; preds = %11
  %28 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %29 = call i32 @ov5640_set_mode(%struct.ov5640_dev* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %39

34:                                               ; preds = %27
  %35 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %36 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %37 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %36, i32 0, i32 0
  %38 = call i32 @ov5640_set_framefmt(%struct.ov5640_dev* %35, i32* %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %32, %25, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @ov5640_load_regs(%struct.ov5640_dev*, i32*) #1

declare dso_local i32 @ov5640_mod_reg(%struct.ov5640_dev*, i32, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @ov5640_set_mode(%struct.ov5640_dev*) #1

declare dso_local i32 @ov5640_set_framefmt(%struct.ov5640_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
