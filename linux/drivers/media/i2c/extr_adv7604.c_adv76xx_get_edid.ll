; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_get_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_get_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_edid = type { i32, i64, i64, i32, i32 }
%struct.adv76xx_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_edid*)* @adv76xx_get_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv76xx_get_edid(%struct.v4l2_subdev* %0, %struct.v4l2_edid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_edid*, align 8
  %6 = alloca %struct.adv76xx_state*, align 8
  %7 = alloca i32*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_edid* %1, %struct.v4l2_edid** %5, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.adv76xx_state* @to_state(%struct.v4l2_subdev* %8)
  store %struct.adv76xx_state* %9, %struct.adv76xx_state** %6, align 8
  store i32* null, i32** %7, align 8
  %10 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memset(i32 %12, i32 0, i32 4)
  %14 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %34 [
    i32 128, label %17
    i32 131, label %17
    i32 130, label %17
    i32 129, label %17
  ]

17:                                               ; preds = %2, %2, %2, %2
  %18 = load %struct.adv76xx_state*, %struct.adv76xx_state** %6, align 8
  %19 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = shl i32 1, %24
  %26 = and i32 %21, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.adv76xx_state*, %struct.adv76xx_state** %6, align 8
  %30 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %7, align 8
  br label %33

33:                                               ; preds = %28, %17
  br label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %118

37:                                               ; preds = %33
  %38 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load i32*, i32** %7, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.adv76xx_state*, %struct.adv76xx_state** %6, align 8
  %52 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  br label %56

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %50
  %57 = phi i64 [ %54, %50 ], [ 0, %55 ]
  %58 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %59 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  store i32 0, i32* %3, align 4
  br label %118

60:                                               ; preds = %42, %37
  %61 = load i32*, i32** %7, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @ENODATA, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %118

66:                                               ; preds = %60
  %67 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %68 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.adv76xx_state*, %struct.adv76xx_state** %6, align 8
  %71 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp sge i64 %69, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %118

78:                                               ; preds = %66
  %79 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %80 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %83 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = load %struct.adv76xx_state*, %struct.adv76xx_state** %6, align 8
  %87 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %85, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %78
  %92 = load %struct.adv76xx_state*, %struct.adv76xx_state** %6, align 8
  %93 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %97 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %95, %98
  %100 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %101 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %91, %78
  %103 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %104 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %108 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = mul nsw i64 %109, 128
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  %112 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %113 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = mul nsw i64 %114, 128
  %116 = trunc i64 %115 to i32
  %117 = call i32 @memcpy(i32 %105, i32* %111, i32 %116)
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %102, %75, %63, %56, %34
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.adv76xx_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
