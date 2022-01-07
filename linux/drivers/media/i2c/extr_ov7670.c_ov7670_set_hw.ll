; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_set_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_set_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@REG_HSTART = common dso_local global i32 0, align 4
@REG_HSTOP = common dso_local global i32 0, align 4
@REG_HREF = common dso_local global i32 0, align 4
@REG_VSTART = common dso_local global i32 0, align 4
@REG_VSTOP = common dso_local global i32 0, align 4
@REG_VREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32, i32)* @ov7670_set_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_set_hw(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %14 = load i32, i32* @REG_HSTART, align 4
  %15 = load i32, i32* %7, align 4
  %16 = ashr i32 %15, 3
  %17 = and i32 %16, 255
  %18 = trunc i32 %17 to i8
  %19 = call i32 @ov7670_write(%struct.v4l2_subdev* %13, i32 %14, i8 zeroext %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %21 = load i32, i32* @REG_HSTOP, align 4
  %22 = load i32, i32* %8, align 4
  %23 = ashr i32 %22, 3
  %24 = and i32 %23, 255
  %25 = trunc i32 %24 to i8
  %26 = call i32 @ov7670_write(%struct.v4l2_subdev* %20, i32 %21, i8 zeroext %25)
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %11, align 4
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %30 = load i32, i32* @REG_HREF, align 4
  %31 = call i64 @ov7670_read(%struct.v4l2_subdev* %29, i32 %30, i8* %12)
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %11, align 4
  %36 = load i8, i8* %12, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 192
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 7
  %41 = shl i32 %40, 3
  %42 = or i32 %38, %41
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 7
  %45 = or i32 %42, %44
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %12, align 1
  %47 = call i32 @msleep(i32 10)
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %49 = load i32, i32* @REG_HREF, align 4
  %50 = load i8, i8* %12, align 1
  %51 = call i32 @ov7670_write(%struct.v4l2_subdev* %48, i32 %49, i8 zeroext %50)
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %11, align 4
  %54 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %55 = load i32, i32* @REG_VSTART, align 4
  %56 = load i32, i32* %9, align 4
  %57 = ashr i32 %56, 2
  %58 = and i32 %57, 255
  %59 = trunc i32 %58 to i8
  %60 = call i32 @ov7670_write(%struct.v4l2_subdev* %54, i32 %55, i8 zeroext %59)
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %11, align 4
  %63 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %64 = load i32, i32* @REG_VSTOP, align 4
  %65 = load i32, i32* %10, align 4
  %66 = ashr i32 %65, 2
  %67 = and i32 %66, 255
  %68 = trunc i32 %67 to i8
  %69 = call i32 @ov7670_write(%struct.v4l2_subdev* %63, i32 %64, i8 zeroext %68)
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %11, align 4
  %72 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %73 = load i32, i32* @REG_VREF, align 4
  %74 = call i64 @ov7670_read(%struct.v4l2_subdev* %72, i32 %73, i8* %12)
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %11, align 4
  %79 = load i8, i8* %12, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %80, 240
  %82 = load i32, i32* %10, align 4
  %83 = and i32 %82, 3
  %84 = shl i32 %83, 2
  %85 = or i32 %81, %84
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, 3
  %88 = or i32 %85, %87
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %12, align 1
  %90 = call i32 @msleep(i32 10)
  %91 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %92 = load i32, i32* @REG_VREF, align 4
  %93 = load i8, i8* %12, align 1
  %94 = call i32 @ov7670_write(%struct.v4l2_subdev* %91, i32 %92, i8 zeroext %93)
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  ret i32 %97
}

declare dso_local i32 @ov7670_write(%struct.v4l2_subdev*, i32, i8 zeroext) #1

declare dso_local i64 @ov7670_read(%struct.v4l2_subdev*, i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
