; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-encoder.c_saa7164_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-encoder.c_saa7164_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_input = type { i32, i32, i32, i32 }

@saa7164_enum_input.inputs = internal constant [7 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"tuner\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"composite\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"svideo\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"composite 2\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"svideo 2\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"aux 2\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_TUNER = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@saa7164_tvnorms = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7164_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %9 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %10 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sge i32 %11, 7
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %60

16:                                               ; preds = %3
  %17 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [7 x i8*], [7 x i8*]* @saa7164_enum_input.inputs, i64 0, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strscpy(i32 %19, i8* %25, i32 4)
  %27 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %16
  %32 = load i32, i32* @V4L2_INPUT_TYPE_TUNER, align 4
  %33 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  br label %39

35:                                               ; preds = %16
  %36 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %37 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %31
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %56, %39
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @saa7164_tvnorms, align 8
  %43 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %42)
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @saa7164_tvnorms, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %40

59:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %13
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
