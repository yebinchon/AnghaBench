; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ks0127.c_ks0127_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ks0127.c_ks0127_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@reg_defaults = common dso_local global i32* null, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"reset\0A\00", align 1
@KS_STAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"ks0122s found\0A\00", align 1
@KS_CMDE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"ks0127 found\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"ks0127B Revision A found\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"unknown revision\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*)* @ks0127_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks0127_init(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %5 = load i32*, i32** @reg_defaults, align 8
  store i32* %5, i32** %3, align 8
  %6 = load i32, i32* @debug, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %8 = call i32 @v4l2_dbg(i32 1, i32 %6, %struct.v4l2_subdev* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @msleep(i32 1)
  store i32 1, i32* %4, align 4
  br label %10

10:                                               ; preds = %22, %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 33
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ks0127_write(%struct.v4l2_subdev* %14, i32 %15, i32 %20)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %10

25:                                               ; preds = %10
  store i32 35, i32* %4, align 4
  br label %26

26:                                               ; preds = %38, %25
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 40
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ks0127_write(%struct.v4l2_subdev* %30, i32 %31, i32 %36)
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %26

41:                                               ; preds = %26
  store i32 41, i32* %4, align 4
  br label %42

42:                                               ; preds = %54, %41
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 56
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ks0127_write(%struct.v4l2_subdev* %46, i32 %47, i32 %52)
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %42

57:                                               ; preds = %42
  store i32 58, i32* %4, align 4
  br label %58

58:                                               ; preds = %70, %57
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 64
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ks0127_write(%struct.v4l2_subdev* %62, i32 %63, i32 %68)
  br label %70

70:                                               ; preds = %61
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %58

73:                                               ; preds = %58
  %74 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %75 = load i32, i32* @KS_STAT, align 4
  %76 = call i32 @ks0127_read(%struct.v4l2_subdev* %74, i32 %75)
  %77 = and i32 %76, 128
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32, i32* @debug, align 4
  %81 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %82 = call i32 @v4l2_dbg(i32 1, i32 %80, %struct.v4l2_subdev* %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %100

83:                                               ; preds = %73
  %84 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %85 = load i32, i32* @KS_CMDE, align 4
  %86 = call i32 @ks0127_read(%struct.v4l2_subdev* %84, i32 %85)
  %87 = and i32 %86, 15
  switch i32 %87, label %96 [
    i32 0, label %88
    i32 9, label %92
  ]

88:                                               ; preds = %83
  %89 = load i32, i32* @debug, align 4
  %90 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %91 = call i32 @v4l2_dbg(i32 1, i32 %89, %struct.v4l2_subdev* %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %100

92:                                               ; preds = %83
  %93 = load i32, i32* @debug, align 4
  %94 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %95 = call i32 @v4l2_dbg(i32 1, i32 %93, %struct.v4l2_subdev* %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %100

96:                                               ; preds = %83
  %97 = load i32, i32* @debug, align 4
  %98 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %99 = call i32 @v4l2_dbg(i32 1, i32 %97, %struct.v4l2_subdev* %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %100

100:                                              ; preds = %79, %96, %92, %88
  ret void
}

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ks0127_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @ks0127_read(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
