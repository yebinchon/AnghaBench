; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_bt819.c_bt819_s_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_bt819.c_bt819_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.bt819 = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"set input %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no notify found!\0A\00", align 1
@BT819_FIFO_RESET_LOW = common dso_local global i32 0, align 4
@BT819_FIFO_RESET_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32)* @bt819_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt819_s_routing(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bt819*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %12 = call %struct.bt819* @to_bt819(%struct.v4l2_subdev* %11)
  store %struct.bt819* %12, %struct.bt819** %10, align 8
  %13 = load i32, i32* @debug, align 4
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @v4l2_dbg(i32 1, i32 %13, %struct.v4l2_subdev* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 7
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %69

22:                                               ; preds = %4
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %24 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp eq %struct.TYPE_2__* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %27, %22
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %36 = call i32 @v4l2_err(%struct.v4l2_subdev* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %27
  %38 = load %struct.bt819*, %struct.bt819** %10, align 8
  %39 = getelementptr inbounds %struct.bt819, %struct.bt819* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %37
  %44 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %45 = load i32, i32* @BT819_FIFO_RESET_LOW, align 4
  %46 = call i32 @v4l2_subdev_notify(%struct.v4l2_subdev* %44, i32 %45, i32* null)
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.bt819*, %struct.bt819** %10, align 8
  %49 = getelementptr inbounds %struct.bt819, %struct.bt819* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.bt819*, %struct.bt819** %10, align 8
  %51 = getelementptr inbounds %struct.bt819, %struct.bt819* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %43
  %55 = load %struct.bt819*, %struct.bt819** %10, align 8
  %56 = call i32 @bt819_setbit(%struct.bt819* %55, i32 11, i32 6, i32 0)
  %57 = load %struct.bt819*, %struct.bt819** %10, align 8
  %58 = call i32 @bt819_setbit(%struct.bt819* %57, i32 26, i32 1, i32 1)
  br label %64

59:                                               ; preds = %43
  %60 = load %struct.bt819*, %struct.bt819** %10, align 8
  %61 = call i32 @bt819_setbit(%struct.bt819* %60, i32 11, i32 6, i32 1)
  %62 = load %struct.bt819*, %struct.bt819** %10, align 8
  %63 = call i32 @bt819_setbit(%struct.bt819* %62, i32 26, i32 1, i32 0)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %66 = load i32, i32* @BT819_FIFO_RESET_HIGH, align 4
  %67 = call i32 @v4l2_subdev_notify(%struct.v4l2_subdev* %65, i32 %66, i32* null)
  br label %68

68:                                               ; preds = %64, %37
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %19
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.bt819* @to_bt819(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @v4l2_subdev_notify(%struct.v4l2_subdev*, i32, i32*) #1

declare dso_local i32 @bt819_setbit(%struct.bt819*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
