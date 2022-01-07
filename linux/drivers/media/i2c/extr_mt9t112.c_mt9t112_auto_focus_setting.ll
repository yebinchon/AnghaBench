; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t112.c_mt9t112_auto_focus_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t112.c_mt9t112_auto_focus_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @mt9t112_auto_focus_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t112_auto_focus_setting(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call i32 @VAR(i32 12, i32 13)
  %7 = call i32 @mt9t112_mcu_write(i32 %4, %struct.i2c_client* %5, i32 %6, i32 15)
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %10 = call i32 @VAR(i32 12, i32 23)
  %11 = call i32 @mt9t112_mcu_write(i32 %8, %struct.i2c_client* %9, i32 %10, i32 3855)
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %14 = call i32 @VAR8(i32 1, i32 0)
  %15 = call i32 @mt9t112_mcu_write(i32 %12, %struct.i2c_client* %13, i32 %14, i32 6)
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %18 = call i32 @mt9t112_reg_write(i32 %16, %struct.i2c_client* %17, i32 1556, i32 0)
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %21 = call i32 @VAR8(i32 1, i32 0)
  %22 = call i32 @mt9t112_mcu_write(i32 %19, %struct.i2c_client* %20, i32 %21, i32 5)
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %25 = call i32 @VAR8(i32 12, i32 2)
  %26 = call i32 @mt9t112_mcu_write(i32 %23, %struct.i2c_client* %24, i32 %25, i32 2)
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %29 = call i32 @VAR(i32 12, i32 3)
  %30 = call i32 @mt9t112_mcu_write(i32 %27, %struct.i2c_client* %28, i32 %29, i32 2)
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %33 = call i32 @VAR(i32 17, i32 3)
  %34 = call i32 @mt9t112_mcu_write(i32 %31, %struct.i2c_client* %32, i32 %33, i32 32769)
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %37 = call i32 @VAR(i32 17, i32 11)
  %38 = call i32 @mt9t112_mcu_write(i32 %35, %struct.i2c_client* %36, i32 %37, i32 37)
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %41 = call i32 @VAR(i32 17, i32 13)
  %42 = call i32 @mt9t112_mcu_write(i32 %39, %struct.i2c_client* %40, i32 %41, i32 403)
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %45 = call i32 @VAR8(i32 17, i32 33)
  %46 = call i32 @mt9t112_mcu_write(i32 %43, %struct.i2c_client* %44, i32 %45, i32 24)
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %49 = call i32 @VAR8(i32 1, i32 0)
  %50 = call i32 @mt9t112_mcu_write(i32 %47, %struct.i2c_client* %48, i32 %49, i32 5)
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @mt9t112_mcu_write(i32, %struct.i2c_client*, i32, i32) #1

declare dso_local i32 @VAR(i32, i32) #1

declare dso_local i32 @VAR8(i32, i32) #1

declare dso_local i32 @mt9t112_reg_write(i32, %struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
