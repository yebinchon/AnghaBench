; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tda9874a_checkit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tda9874a_checkit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHIPSTATE = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@TDA9874A_DIC = common dso_local global i32 0, align 4
@TDA9874A_SIC = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"tda9874a_checkit(): DIC=0x%X, SIC=0x%X.\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"found tda9874%s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@tda9874a_dic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.CHIPSTATE*)* @tda9874a_checkit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9874a_checkit(%struct.CHIPSTATE* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.CHIPSTATE*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.CHIPSTATE* %0, %struct.CHIPSTATE** %3, align 8
  %7 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %8 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %7, i32 0, i32 0
  store %struct.v4l2_subdev* %8, %struct.v4l2_subdev** %4, align 8
  %9 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %10 = load i32, i32* @TDA9874A_DIC, align 4
  %11 = call i32 @chip_read2(%struct.CHIPSTATE* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

15:                                               ; preds = %1
  %16 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %17 = load i32, i32* @TDA9874A_SIC, align 4
  %18 = call i32 @chip_read2(%struct.CHIPSTATE* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %42

22:                                               ; preds = %15
  %23 = load i32, i32* @debug, align 4
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @v4l2_dbg(i32 1, i32 %23, %struct.v4l2_subdev* %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 17
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 7
  br i1 %32, label %33, label %41

33:                                               ; preds = %30, %22
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 17
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %39 = call i32 @v4l2_info(%struct.v4l2_subdev* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* @tda9874a_dic, align 4
  store i32 1, i32* %2, align 4
  br label %42

41:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %33, %21, %14
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @chip_read2(%struct.CHIPSTATE*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
