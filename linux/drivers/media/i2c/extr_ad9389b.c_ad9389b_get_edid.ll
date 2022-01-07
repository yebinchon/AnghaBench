; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ad9389b.c_ad9389b_get_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ad9389b.c_ad9389b_get_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_edid = type { i64, i32, i32, i32 }
%struct.ad9389b_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"EDID segment 0 not found\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_edid*)* @ad9389b_get_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad9389b_get_edid(%struct.v4l2_subdev* %0, %struct.v4l2_edid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_edid*, align 8
  %6 = alloca %struct.ad9389b_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_edid* %1, %struct.v4l2_edid** %5, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.ad9389b_state* @get_ad9389b_state(%struct.v4l2_subdev* %7)
  store %struct.ad9389b_state* %8, %struct.ad9389b_state** %6, align 8
  %9 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %99

16:                                               ; preds = %2
  %17 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 256
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %16
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %99

29:                                               ; preds = %21
  %30 = load %struct.ad9389b_state*, %struct.ad9389b_state** %6, align 8
  %31 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @debug, align 4
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %38 = call i32 @v4l2_dbg(i32 1, i32 %36, %struct.v4l2_subdev* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENODATA, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %99

41:                                               ; preds = %29
  %42 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ad9389b_state*, %struct.ad9389b_state** %6, align 8
  %46 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %48, 2
  %50 = icmp sge i32 %44, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* @E2BIG, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %99

54:                                               ; preds = %41
  %55 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %56 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %59 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = load %struct.ad9389b_state*, %struct.ad9389b_state** %6, align 8
  %63 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %65, 2
  %67 = icmp sge i32 %61, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %54
  %69 = load %struct.ad9389b_state*, %struct.ad9389b_state** %6, align 8
  %70 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = mul nsw i32 %72, 2
  %74 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %75 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %73, %76
  %78 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %79 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %68, %54
  %81 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %82 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.ad9389b_state*, %struct.ad9389b_state** %6, align 8
  %85 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %89 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %90, 128
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %87, i64 %92
  %94 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %95 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 128, %96
  %98 = call i32 @memcpy(i32 %83, i32* %93, i32 %97)
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %80, %51, %35, %26, %13
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.ad9389b_state* @get_ad9389b_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
