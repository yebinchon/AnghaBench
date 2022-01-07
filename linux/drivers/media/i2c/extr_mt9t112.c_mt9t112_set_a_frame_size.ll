; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t112.c_mt9t112_set_a_frame_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t112.c_mt9t112_set_a_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@MAX_WIDTH = common dso_local global i32 0, align 4
@MAX_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @mt9t112_set_a_frame_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t112_set_a_frame_size(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @MAX_WIDTH, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 %10, %11
  %13 = sdiv i32 %12, 2
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @MAX_HEIGHT, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %14, %15
  %17 = sdiv i32 %16, 2
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = call i32 @VAR(i32 26, i32 0)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @mt9t112_mcu_write(i32 %18, %struct.i2c_client* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = call i32 @VAR(i32 26, i32 2)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @mt9t112_mcu_write(i32 %23, %struct.i2c_client* %24, i32 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = call i32 @VAR(i32 18, i32 43)
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 8, %31
  %33 = call i32 @mt9t112_mcu_write(i32 %28, %struct.i2c_client* %29, i32 %30, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = call i32 @VAR(i32 18, i32 45)
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 8, %37
  %39 = call i32 @mt9t112_mcu_write(i32 %34, %struct.i2c_client* %35, i32 %36, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = call i32 @VAR(i32 18, i32 2)
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 4, %43
  %45 = call i32 @mt9t112_mcu_write(i32 %40, %struct.i2c_client* %41, i32 %42, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = call i32 @VAR(i32 18, i32 4)
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 4, %49
  %51 = call i32 @mt9t112_mcu_write(i32 %46, %struct.i2c_client* %47, i32 %48, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = call i32 @VAR(i32 18, i32 6)
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 11, %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %56, %57
  %59 = call i32 @mt9t112_mcu_write(i32 %52, %struct.i2c_client* %53, i32 %54, i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = call i32 @VAR(i32 18, i32 8)
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 11, %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %64, %65
  %67 = call i32 @mt9t112_mcu_write(i32 %60, %struct.i2c_client* %61, i32 %62, i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = call i32 @VAR8(i32 1, i32 0)
  %71 = call i32 @mt9t112_mcu_write(i32 %68, %struct.i2c_client* %69, i32 %70, i32 6)
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @mt9t112_mcu_write(i32, %struct.i2c_client*, i32, i32) #1

declare dso_local i32 @VAR(i32, i32) #1

declare dso_local i32 @VAR8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
