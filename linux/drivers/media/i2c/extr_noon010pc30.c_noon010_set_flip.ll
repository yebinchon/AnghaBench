; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_noon010pc30.c_noon010_set_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_noon010pc30.c_noon010_set_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.noon010_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32)* @noon010_set_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noon010_set_flip(%struct.v4l2_subdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.noon010_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %12 = call %struct.noon010_info* @to_noon010(%struct.v4l2_subdev* %11)
  store %struct.noon010_info* %12, %struct.noon010_info** %8, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = call i32 @VDO_CTL_REG(i32 1)
  %15 = call i32 @cam_i2c_read(%struct.v4l2_subdev* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %51

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 124
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, 2
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %36 = call i32 @VDO_CTL_REG(i32 1)
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, 128
  %39 = call i32 @cam_i2c_write(%struct.v4l2_subdev* %35, i32 %36, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.noon010_info*, %struct.noon010_info** %8, align 8
  %45 = getelementptr inbounds %struct.noon010_info, %struct.noon010_info* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.noon010_info*, %struct.noon010_info** %8, align 8
  %48 = getelementptr inbounds %struct.noon010_info, %struct.noon010_info* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %42, %34
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %18
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.noon010_info* @to_noon010(%struct.v4l2_subdev*) #1

declare dso_local i32 @cam_i2c_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @VDO_CTL_REG(i32) #1

declare dso_local i32 @cam_i2c_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
