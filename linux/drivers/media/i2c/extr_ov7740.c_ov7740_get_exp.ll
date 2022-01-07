; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7740.c_ov7740_get_exp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7740.c_ov7740_get_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov7740 = type { %struct.TYPE_2__*, %struct.regmap* }
%struct.TYPE_2__ = type { i32 }
%struct.regmap = type { i32 }
%struct.v4l2_ctrl = type { i64 }

@V4L2_EXPOSURE_MANUAL = common dso_local global i64 0, align 8
@REG_AEC = common dso_local global i32 0, align 4
@REG_HAEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov7740*, %struct.v4l2_ctrl*)* @ov7740_get_exp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7740_get_exp(%struct.ov7740* %0, %struct.v4l2_ctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov7740*, align 8
  %5 = alloca %struct.v4l2_ctrl*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ov7740* %0, %struct.ov7740** %4, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %5, align 8
  %10 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %11 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %10, i32 0, i32 1
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %6, align 8
  %13 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @V4L2_EXPOSURE_MANUAL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

19:                                               ; preds = %2
  %20 = load %struct.regmap*, %struct.regmap** %6, align 8
  %21 = load i32, i32* @REG_AEC, align 4
  %22 = call i32 @regmap_read(%struct.regmap* %20, i32 %21, i32* %7)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %45

27:                                               ; preds = %19
  %28 = load %struct.regmap*, %struct.regmap** %6, align 8
  %29 = load i32, i32* @REG_HAEC, align 4
  %30 = call i32 @regmap_read(%struct.regmap* %28, i32 %29, i32* %8)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %45

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 %36, 8
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 255
  %40 = or i32 %37, %39
  %41 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %42 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %35, %33, %25, %18
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
