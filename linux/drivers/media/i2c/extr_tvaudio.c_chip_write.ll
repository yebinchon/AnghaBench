; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_chip_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_chip_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHIPSTATE = type { %struct.TYPE_2__, %struct.v4l2_subdev }
%struct.TYPE_2__ = type { i32* }
%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"chip_write: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"I/O error (write 0x%x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Tried to access a non-existent register: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"chip_write: reg%d=0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"I/O error (write reg%d=0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.CHIPSTATE*, i32, i32)* @chip_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chip_write(%struct.CHIPSTATE* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.CHIPSTATE*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca [2 x i8], align 1
  %11 = alloca i32, align 4
  store %struct.CHIPSTATE* %0, %struct.CHIPSTATE** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %13 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %12, i32 0, i32 1
  store %struct.v4l2_subdev* %13, %struct.v4l2_subdev** %8, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %15 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load i32, i32* @debug, align 4
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, i32, ...) @v4l2_dbg(i32 1, i32 %19, %struct.v4l2_subdev* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %25 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %23, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %30, i8* %31, align 1
  %32 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %33 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %34 = call i32 @i2c_master_send(%struct.i2c_client* %32, i8* %33, i32 1)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %48

37:                                               ; preds = %18
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_warn(%struct.v4l2_subdev* %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %4, align 4
  br label %104

45:                                               ; preds = %37
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %104

48:                                               ; preds = %18
  br label %103

49:                                               ; preds = %3
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  %52 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %53 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @ARRAY_SIZE(i32* %55)
  %57 = icmp sge i32 %51, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %49
  %59 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @v4l2_info(%struct.v4l2_subdev* %59, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %104

64:                                               ; preds = %49
  %65 = load i32, i32* @debug, align 4
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, i32, ...) @v4l2_dbg(i32 1, i32 %65, %struct.v4l2_subdev* %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %72 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32 %70, i32* %78, align 4
  %79 = load i32, i32* %6, align 4
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %80, i8* %81, align 1
  %82 = load i32, i32* %7, align 4
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  store i8 %83, i8* %84, align 1
  %85 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %86 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %87 = call i32 @i2c_master_send(%struct.i2c_client* %85, i8* %86, i32 2)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 2
  br i1 %89, label %90, label %102

90:                                               ; preds = %64
  %91 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_warn(%struct.v4l2_subdev* %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %4, align 4
  br label %104

99:                                               ; preds = %90
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %104

102:                                              ; preds = %64
  br label %103

103:                                              ; preds = %102, %48
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %99, %97, %58, %45, %43
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, ...) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @v4l2_warn(%struct.v4l2_subdev*, i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
