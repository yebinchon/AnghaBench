; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp7002.c_tvp7002_query_dv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp7002.c_tvp7002_query_dv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tvp7002_timings_definition = type { i32, i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }

@tvp7002_timings = common dso_local global %struct.tvp7002_timings_definition* null, align 8
@NUM_TIMINGS = common dso_local global i32 0, align 4
@TVP7002_L_FRAME_STAT_LSBS = common dso_local global i32 0, align 4
@TVP7002_L_FRAME_STAT_MSBS = common dso_local global i32 0, align 4
@TVP7002_CLK_L_STAT_LSBS = common dso_local global i32 0, align 4
@TVP7002_CLK_L_STAT_MSBS = common dso_local global i32 0, align 4
@TVP7002_CL_MASK = common dso_local global i32 0, align 4
@TVP7002_CL_SHIFT = common dso_local global i32 0, align 4
@TVP7002_INPR_MASK = common dso_local global i32 0, align 4
@TVP7002_IP_SHIFT = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"detection failed: lpf = %x, cpl = %x\0A\00", align 1
@ENOLINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"detected timings: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32*)* @tvp7002_query_dv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp7002_query_dv(%struct.v4l2_subdev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tvp7002_timings_definition*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.tvp7002_timings_definition*, %struct.tvp7002_timings_definition** @tvp7002_timings, align 8
  store %struct.tvp7002_timings_definition* %15, %struct.tvp7002_timings_definition** %6, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* @NUM_TIMINGS, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %19 = load i32, i32* @TVP7002_L_FRAME_STAT_LSBS, align 4
  %20 = call i32 @tvp7002_read_err(%struct.v4l2_subdev* %18, i32 %19, i32* %11, i32* %10)
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %22 = load i32, i32* @TVP7002_L_FRAME_STAT_MSBS, align 4
  %23 = call i32 @tvp7002_read_err(%struct.v4l2_subdev* %21, i32 %22, i32* %12, i32* %10)
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %3, align 4
  br label %123

28:                                               ; preds = %2
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %30 = load i32, i32* @TVP7002_CLK_L_STAT_LSBS, align 4
  %31 = call i32 @tvp7002_read_err(%struct.v4l2_subdev* %29, i32 %30, i32* %13, i32* %10)
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %33 = load i32, i32* @TVP7002_CLK_L_STAT_MSBS, align 4
  %34 = call i32 @tvp7002_read_err(%struct.v4l2_subdev* %32, i32 %33, i32* %14, i32* %10)
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %3, align 4
  br label %123

39:                                               ; preds = %28
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @TVP7002_CL_MASK, align 4
  %42 = load i32, i32* %12, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @TVP7002_CL_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = or i32 %40, %45
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @TVP7002_CL_MASK, align 4
  %49 = load i32, i32* %14, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @TVP7002_CL_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = or i32 %47, %52
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @TVP7002_INPR_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @TVP7002_IP_SHIFT, align 4
  %58 = ashr i32 %56, %57
  store i32 %58, i32* %7, align 4
  %59 = load i32*, i32** %5, align 8
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %98, %39
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NUM_TIMINGS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %104

65:                                               ; preds = %60
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.tvp7002_timings_definition*, %struct.tvp7002_timings_definition** %6, align 8
  %68 = getelementptr inbounds %struct.tvp7002_timings_definition, %struct.tvp7002_timings_definition* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %65
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.tvp7002_timings_definition*, %struct.tvp7002_timings_definition** %6, align 8
  %74 = getelementptr inbounds %struct.tvp7002_timings_definition, %struct.tvp7002_timings_definition* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %71
  %78 = load %struct.tvp7002_timings_definition*, %struct.tvp7002_timings_definition** %6, align 8
  %79 = getelementptr inbounds %struct.tvp7002_timings_definition, %struct.tvp7002_timings_definition* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 65535
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %104

83:                                               ; preds = %77
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.tvp7002_timings_definition*, %struct.tvp7002_timings_definition** %6, align 8
  %86 = getelementptr inbounds %struct.tvp7002_timings_definition, %struct.tvp7002_timings_definition* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp sge i32 %84, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.tvp7002_timings_definition*, %struct.tvp7002_timings_definition** %6, align 8
  %92 = getelementptr inbounds %struct.tvp7002_timings_definition, %struct.tvp7002_timings_definition* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = icmp sle i32 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %104

96:                                               ; preds = %89, %83
  br label %97

97:                                               ; preds = %96, %71, %65
  br label %98

98:                                               ; preds = %97
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.tvp7002_timings_definition*, %struct.tvp7002_timings_definition** %6, align 8
  %103 = getelementptr inbounds %struct.tvp7002_timings_definition, %struct.tvp7002_timings_definition* %102, i32 1
  store %struct.tvp7002_timings_definition* %103, %struct.tvp7002_timings_definition** %6, align 8
  br label %60

104:                                              ; preds = %95, %82, %60
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @NUM_TIMINGS, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load i32, i32* @debug, align 4
  %111 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, i32, ...) @v4l2_dbg(i32 1, i32 %110, %struct.v4l2_subdev* %111, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %112, i32 %113)
  %115 = load i32, i32* @ENOLINK, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %123

117:                                              ; preds = %104
  %118 = load i32, i32* @debug, align 4
  %119 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, i32, ...) @v4l2_dbg(i32 1, i32 %118, %struct.v4l2_subdev* %119, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %117, %109, %37, %26
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @tvp7002_read_err(%struct.v4l2_subdev*, i32, i32*, i32*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
