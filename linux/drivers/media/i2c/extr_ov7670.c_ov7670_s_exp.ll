; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_s_exp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_s_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@REG_COM1 = common dso_local global i32 0, align 4
@REG_COM8 = common dso_local global i32 0, align 4
@REG_AECHH = common dso_local global i32 0, align 4
@REG_AECH = common dso_local global i32 0, align 4
@COM8_AEC = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ov7670_s_exp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_s_exp(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = load i32, i32* @REG_COM1, align 4
  %13 = call i32 @ov7670_read(%struct.v4l2_subdev* %11, i32 %12, i8* %7)
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %15 = load i32, i32* @REG_COM8, align 4
  %16 = call i32 @ov7670_read(%struct.v4l2_subdev* %14, i32 %15, i8* %8)
  %17 = add nsw i32 %13, %16
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %19 = load i32, i32* @REG_AECHH, align 4
  %20 = call i32 @ov7670_read(%struct.v4l2_subdev* %18, i32 %19, i8* %10)
  %21 = add nsw i32 %17, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %75

26:                                               ; preds = %2
  %27 = load i8, i8* %7, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 252
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 3
  %32 = or i32 %29, %31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %7, align 1
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %34, 2
  %36 = and i32 %35, 255
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %9, align 1
  %38 = load i8, i8* %10, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 192
  %41 = load i32, i32* %5, align 4
  %42 = ashr i32 %41, 10
  %43 = and i32 %42, 63
  %44 = or i32 %40, %43
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %10, align 1
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %47 = load i32, i32* @REG_COM1, align 4
  %48 = load i8, i8* %7, align 1
  %49 = call i32 @ov7670_write(%struct.v4l2_subdev* %46, i32 %47, i8 zeroext %48)
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %51 = load i32, i32* @REG_AECH, align 4
  %52 = load i8, i8* %9, align 1
  %53 = call i32 @ov7670_write(%struct.v4l2_subdev* %50, i32 %51, i8 zeroext %52)
  %54 = add nsw i32 %49, %53
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %56 = load i32, i32* @REG_AECHH, align 4
  %57 = load i8, i8* %10, align 1
  %58 = call i32 @ov7670_write(%struct.v4l2_subdev* %55, i32 %56, i8 zeroext %57)
  %59 = add nsw i32 %54, %58
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %26
  %63 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %64 = load i32, i32* @REG_COM8, align 4
  %65 = load i8, i8* %8, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* @COM8_AEC, align 1
  %68 = zext i8 %67 to i32
  %69 = xor i32 %68, -1
  %70 = and i32 %66, %69
  %71 = trunc i32 %70 to i8
  %72 = call i32 @ov7670_write(%struct.v4l2_subdev* %63, i32 %64, i8 zeroext %71)
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %62, %26
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %24
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @ov7670_read(%struct.v4l2_subdev*, i32, i8*) #1

declare dso_local i32 @ov7670_write(%struct.v4l2_subdev*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
