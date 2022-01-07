; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_selmux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_selmux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tvp5150 = type { i32, i32, i32, i32, i32, i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Selecting video route: route input=%i, output=%i => tvp5150 input=%i, opmode=%i\0A\00", align 1
@TVP5150_OP_MODE_CTL = common dso_local global i32 0, align 4
@TVP5150_VD_IN_SRC_SEL_1 = common dso_local global i32 0, align 4
@TVP5150_MISC_CTL_GPCL = common dso_local global i32 0, align 4
@TVP5150_MISC_CTL_HVLK = common dso_local global i32 0, align 4
@TVP5150_MISC_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*)* @tvp5150_selmux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tvp5150_selmux(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tvp5150*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %9 = call %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev* %8)
  store %struct.tvp5150* %9, %struct.tvp5150** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %11 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 20816
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %16 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1024
  br i1 %18, label %29, label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %21 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 20817
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %26 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 256
  br i1 %28, label %29, label %36

29:                                               ; preds = %24, %14
  %30 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %31 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 8, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %29
  br label %36

36:                                               ; preds = %35, %24, %19
  %37 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %38 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %45 [
    i32 129, label %40
    i32 130, label %43
    i32 128, label %44
  ]

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, 2
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %36, %40
  br label %48

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %36, %44
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %45, %43
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %50 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @debug, align 4
  %53 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %54 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %57 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @dev_dbg_lvl(i32 %51, i32 1, i32 %52, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %63 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @TVP5150_OP_MODE_CTL, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @regmap_write(i32 %64, i32 %65, i32 %66)
  %68 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %69 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @TVP5150_VD_IN_SRC_SEL_1, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @regmap_write(i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* @TVP5150_MISC_CTL_GPCL, align 4
  %75 = load i32, i32* @TVP5150_MISC_CTL_HVLK, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* %5, align 4
  %77 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %78 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 128
  br i1 %80, label %81, label %83

81:                                               ; preds = %48
  %82 = load i32, i32* @TVP5150_MISC_CTL_HVLK, align 4
  store i32 %82, i32* %6, align 4
  br label %85

83:                                               ; preds = %48
  %84 = load i32, i32* @TVP5150_MISC_CTL_GPCL, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %87 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @TVP5150_MISC_CTL, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @regmap_update_bits(i32 %88, i32 %89, i32 %90, i32 %91)
  ret void
}

declare dso_local %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev*) #1

declare dso_local i32 @dev_dbg_lvl(i32, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
