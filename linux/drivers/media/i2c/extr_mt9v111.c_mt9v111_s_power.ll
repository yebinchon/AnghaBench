; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c_mt9v111_s_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c_mt9v111_s_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.mt9v111_dev = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @mt9v111_s_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v111_s_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt9v111_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.mt9v111_dev* @sd_to_mt9v111(%struct.v4l2_subdev* %9)
  store %struct.mt9v111_dev* %10, %struct.mt9v111_dev** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %12 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %15 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 -1
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = icmp eq i32 %23, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %35 = call i32 @__mt9v111_power_on(%struct.v4l2_subdev* %34)
  br label %39

36:                                               ; preds = %30
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %38 = call i32 @__mt9v111_power_off(%struct.v4l2_subdev* %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i32 [ %35, %33 ], [ %38, %36 ]
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %46 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %49 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %48, i32 0, i32 1
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %69

52:                                               ; preds = %2
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = icmp sgt i32 %56, 1
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi i1 [ true, %52 ], [ %57, %55 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @WARN_ON(i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %64 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %66 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %58, %47
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.mt9v111_dev* @sd_to_mt9v111(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__mt9v111_power_on(%struct.v4l2_subdev*) #1

declare dso_local i32 @__mt9v111_power_off(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
