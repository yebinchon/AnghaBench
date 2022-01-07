; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7511-v4l2.c_adv7511_get_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7511-v4l2.c_adv7511_get_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_edid = type { i64, i32, i32, i32, i32 }
%struct.adv7511_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_edid*)* @adv7511_get_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7511_get_edid(%struct.v4l2_subdev* %0, %struct.v4l2_edid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_edid*, align 8
  %6 = alloca %struct.adv7511_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_edid* %1, %struct.v4l2_edid** %5, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.adv7511_state* @get_adv7511_state(%struct.v4l2_subdev* %7)
  store %struct.adv7511_state* %8, %struct.adv7511_state** %6, align 8
  %9 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @memset(i32 %11, i32 0, i32 4)
  %13 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %105

20:                                               ; preds = %2
  %21 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.adv7511_state*, %struct.adv7511_state** %6, align 8
  %32 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %34, 2
  %36 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %105

38:                                               ; preds = %25, %20
  %39 = load %struct.adv7511_state*, %struct.adv7511_state** %6, align 8
  %40 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @ENODATA, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %105

47:                                               ; preds = %38
  %48 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.adv7511_state*, %struct.adv7511_state** %6, align 8
  %52 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %54, 2
  %56 = icmp sge i32 %50, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %105

60:                                               ; preds = %47
  %61 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %62 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %65 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %63, %66
  %68 = load %struct.adv7511_state*, %struct.adv7511_state** %6, align 8
  %69 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 %71, 2
  %73 = icmp sgt i32 %67, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %60
  %75 = load %struct.adv7511_state*, %struct.adv7511_state** %6, align 8
  %76 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 %78, 2
  %80 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %81 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %79, %82
  %84 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %85 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %74, %60
  %87 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %88 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.adv7511_state*, %struct.adv7511_state** %6, align 8
  %91 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %95 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 %96, 128
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %93, i64 %98
  %100 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %101 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 128, %102
  %104 = call i32 @memcpy(i32 %89, i32* %99, i32 %103)
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %86, %57, %44, %30, %17
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.adv7511_state* @get_adv7511_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
