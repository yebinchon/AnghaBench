; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7127.c_saa7127_set_xds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7127.c_saa7127_set_xds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_sliced_vbi_data = type { i32*, i32, i32 }
%struct.saa7127_state = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Turn XDS %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@SAA7127_REG_CLOSED_CAPTION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"XDS data: %04x\0A\00", align 1
@SAA7127_REG_LINE_21_EVEN_0 = common dso_local global i32 0, align 4
@SAA7127_REG_LINE_21_EVEN_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_data*)* @saa7127_set_xds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7127_set_xds(%struct.v4l2_subdev* %0, %struct.v4l2_sliced_vbi_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_sliced_vbi_data*, align 8
  %6 = alloca %struct.saa7127_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_sliced_vbi_data* %1, %struct.v4l2_sliced_vbi_data** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.saa7127_state* @to_state(%struct.v4l2_subdev* %9)
  store %struct.saa7127_state* %10, %struct.saa7127_state** %6, align 8
  %11 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 8
  %17 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %16, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %2
  %31 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 21
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %30
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %93

43:                                               ; preds = %35, %2
  %44 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %45 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %43
  %50 = load i32, i32* @debug, align 4
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %56 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %50, %struct.v4l2_subdev* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %55)
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %58 = load i32, i32* @SAA7127_REG_CLOSED_CAPTION, align 4
  %59 = load i32, i32* %8, align 4
  %60 = shl i32 %59, 7
  %61 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %62 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 6
  %65 = or i32 %60, %64
  %66 = or i32 %65, 17
  %67 = call i32 @saa7127_write(%struct.v4l2_subdev* %57, i32 %58, i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %70 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %49, %43
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %93

75:                                               ; preds = %71
  %76 = load i32, i32* @debug, align 4
  %77 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 2, i32 %76, %struct.v4l2_subdev* %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %81 = load i32, i32* @SAA7127_REG_LINE_21_EVEN_0, align 4
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, 255
  %84 = call i32 @saa7127_write(%struct.v4l2_subdev* %80, i32 %81, i32 %83)
  %85 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %86 = load i32, i32* @SAA7127_REG_LINE_21_EVEN_1, align 4
  %87 = load i32, i32* %7, align 4
  %88 = ashr i32 %87, 8
  %89 = call i32 @saa7127_write(%struct.v4l2_subdev* %85, i32 %86, i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %92 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %75, %74, %40
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.saa7127_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i32 @saa7127_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
