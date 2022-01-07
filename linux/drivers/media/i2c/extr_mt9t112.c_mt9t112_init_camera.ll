; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t112.c_mt9t112_init_camera.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t112.c_mt9t112_init_camera.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @mt9t112_init_camera to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t112_init_camera(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call i32 @mt9t112_reset(%struct.i2c_client* %5)
  %7 = call i32 @ECHECKER(i32 %4, i32 %6)
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %10 = call i32 @mt9t112_init_pll(%struct.i2c_client* %9)
  %11 = call i32 @ECHECKER(i32 %8, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %14 = call i32 @mt9t112_init_setting(%struct.i2c_client* %13)
  %15 = call i32 @ECHECKER(i32 %12, i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %18 = call i32 @mt9t112_auto_focus_setting(%struct.i2c_client* %17)
  %19 = call i32 @ECHECKER(i32 %16, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %22 = call i32 @mt9t112_reg_mask_set(i32 %20, %struct.i2c_client* %21, i32 24, i32 4, i32 0)
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %25 = call i32 @mt9t112_reg_write(i32 %23, %struct.i2c_client* %24, i32 12420, i32 9225)
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %28 = call i32 @mt9t112_reg_write(i32 %26, %struct.i2c_client* %27, i32 12434, i32 2633)
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %31 = call i32 @mt9t112_reg_write(i32 %29, %struct.i2c_client* %30, i32 12436, i32 18761)
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %34 = call i32 @mt9t112_reg_write(i32 %32, %struct.i2c_client* %33, i32 12438, i32 18768)
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %37 = call i32 @VAR(i32 26, i32 160)
  %38 = call i32 @mt9t112_mcu_write(i32 %35, %struct.i2c_client* %36, i32 %37, i32 2606)
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %41 = call i32 @VAR(i32 27, i32 160)
  %42 = call i32 @mt9t112_mcu_write(i32 %39, %struct.i2c_client* %40, i32 %41, i32 2606)
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %45 = call i32 @VAR(i32 27, i32 144)
  %46 = call i32 @mt9t112_mcu_write(i32 %43, %struct.i2c_client* %44, i32 %45, i32 3252)
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %49 = call i32 @VAR8(i32 27, i32 142)
  %50 = call i32 @mt9t112_mcu_write(i32 %47, %struct.i2c_client* %48, i32 %49, i32 1)
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %53 = call i32 @mt9t112_reg_write(i32 %51, %struct.i2c_client* %52, i32 12652, i32 13583)
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %56 = call i32 @mt9t112_reg_write(i32 %54, %struct.i2c_client* %55, i32 30, i32 1911)
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @ECHECKER(i32, i32) #1

declare dso_local i32 @mt9t112_reset(%struct.i2c_client*) #1

declare dso_local i32 @mt9t112_init_pll(%struct.i2c_client*) #1

declare dso_local i32 @mt9t112_init_setting(%struct.i2c_client*) #1

declare dso_local i32 @mt9t112_auto_focus_setting(%struct.i2c_client*) #1

declare dso_local i32 @mt9t112_reg_mask_set(i32, %struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @mt9t112_reg_write(i32, %struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mt9t112_mcu_write(i32, %struct.i2c_client*, i32, i32) #1

declare dso_local i32 @VAR(i32, i32) #1

declare dso_local i32 @VAR8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
