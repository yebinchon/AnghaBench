; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp514x.c_tvp514x_querystd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp514x.c_tvp514x_querystd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tvp514x_decoder = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@LOCK_RETRY_DELAY = common dso_local global i32 0, align 4
@STD_INVALID = common dso_local global i32 0, align 4
@V4L2_STD_UNKNOWN = common dso_local global i32 0, align 4
@STATUS_CLR_SUBCAR_LOCK_BIT = common dso_local global i32 0, align 4
@STATUS_HORZ_SYNC_LOCK_BIT = common dso_local global i32 0, align 4
@STATUS_VIRT_SYNC_LOCK_BIT = common dso_local global i32 0, align 4
@REG_STATUS1 = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Current STD: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32*)* @tvp514x_querystd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp514x_querystd(%struct.v4l2_subdev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tvp514x_decoder*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev* %11)
  store %struct.tvp514x_decoder* %12, %struct.tvp514x_decoder** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %92

18:                                               ; preds = %2
  %19 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %20 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %25 = call i32 @tvp514x_s_stream(%struct.v4l2_subdev* %24, i32 1)
  %26 = load i32, i32* @LOCK_RETRY_DELAY, align 4
  %27 = call i32 @msleep(i32 %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %30 = call i32 @tvp514x_query_current_std(%struct.v4l2_subdev* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @STD_INVALID, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @V4L2_STD_UNKNOWN, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %3, align 4
  br label %92

37:                                               ; preds = %28
  %38 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %39 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  switch i32 %41, label %52 [
    i32 149, label %42
    i32 148, label %42
    i32 147, label %42
    i32 146, label %42
    i32 145, label %42
    i32 144, label %42
    i32 143, label %42
    i32 142, label %42
    i32 141, label %42
    i32 140, label %42
    i32 139, label %48
    i32 137, label %48
    i32 135, label %48
    i32 138, label %48
    i32 136, label %48
    i32 134, label %48
    i32 133, label %48
    i32 132, label %48
    i32 131, label %48
    i32 130, label %48
    i32 129, label %48
    i32 128, label %48
  ]

42:                                               ; preds = %37, %37, %37, %37, %37, %37, %37, %37, %37, %37
  %43 = load i32, i32* @STATUS_CLR_SUBCAR_LOCK_BIT, align 4
  %44 = load i32, i32* @STATUS_HORZ_SYNC_LOCK_BIT, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @STATUS_VIRT_SYNC_LOCK_BIT, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %10, align 4
  br label %55

48:                                               ; preds = %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37
  %49 = load i32, i32* @STATUS_HORZ_SYNC_LOCK_BIT, align 4
  %50 = load i32, i32* @STATUS_VIRT_SYNC_LOCK_BIT, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %10, align 4
  br label %55

52:                                               ; preds = %37
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %92

55:                                               ; preds = %48, %42
  %56 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %57 = load i32, i32* @REG_STATUS1, align 4
  %58 = call i32 @tvp514x_read_reg(%struct.v4l2_subdev* %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i32, i32* @V4L2_STD_UNKNOWN, align 4
  %66 = load i32*, i32** %5, align 8
  store i32 %65, i32* %66, align 4
  store i32 0, i32* %3, align 4
  br label %92

67:                                               ; preds = %55
  %68 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %69 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %76
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* @debug, align 4
  %81 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %82 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %83 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @v4l2_dbg(i32 1, i32 %80, %struct.v4l2_subdev* %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %67, %64, %52, %34, %15
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev*) #1

declare dso_local i32 @tvp514x_s_stream(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @tvp514x_query_current_std(%struct.v4l2_subdev*) #1

declare dso_local i32 @tvp514x_read_reg(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
