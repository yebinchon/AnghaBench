; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ad9389b.c_ad9389b_dbg_dump_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ad9389b.c_ad9389b_dbg_dump_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"edid segment %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"0x%02x, \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.v4l2_subdev*, i32, i32*)* @ad9389b_dbg_dump_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad9389b_dbg_dump_edid(i32 %0, i32 %1, %struct.v4l2_subdev* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [128 x i32], align 16
  %14 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.v4l2_subdev* %2, %struct.v4l2_subdev** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %68

19:                                               ; preds = %5
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 %20, i32 %21, %struct.v4l2_subdev* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %65, %19
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 256
  br i1 %27, label %28, label %68

28:                                               ; preds = %25
  %29 = getelementptr inbounds [128 x i32], [128 x i32]* %13, i64 0, i64 0
  store i32* %29, i32** %14, align 8
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %30, 128
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %36 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 %33, i32 %34, %struct.v4l2_subdev* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %32, %28
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %54, %37
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 16
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load i32*, i32** %14, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @sprintf(i32* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %14, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 6
  store i32* %53, i32** %14, align 8
  br label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %39

57:                                               ; preds = %39
  %58 = load i32*, i32** %14, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 0, i32* %59, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %63 = getelementptr inbounds [128 x i32], [128 x i32]* %13, i64 0, i64 0
  %64 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 %60, i32 %61, %struct.v4l2_subdev* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %63)
  br label %65

65:                                               ; preds = %57
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 16
  store i32 %67, i32* %11, align 4
  br label %25

68:                                               ; preds = %18, %25
  ret void
}

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i32 @sprintf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
