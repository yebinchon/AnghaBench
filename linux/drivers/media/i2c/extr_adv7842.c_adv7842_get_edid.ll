; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_get_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_get_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_edid = type { i32, i32, i32, i32, i32 }
%struct.adv7842_state = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_edid*)* @adv7842_get_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7842_get_edid(%struct.v4l2_subdev* %0, %struct.v4l2_edid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_edid*, align 8
  %6 = alloca %struct.adv7842_state*, align 8
  %7 = alloca i32*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_edid* %1, %struct.v4l2_edid** %5, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.adv7842_state* @to_state(%struct.v4l2_subdev* %8)
  store %struct.adv7842_state* %9, %struct.adv7842_state** %6, align 8
  store i32* null, i32** %7, align 8
  %10 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memset(i32 %12, i32 0, i32 4)
  %14 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %46 [
    i32 130, label %17
    i32 129, label %17
    i32 128, label %34
  ]

17:                                               ; preds = %2, %2
  %18 = load %struct.adv7842_state*, %struct.adv7842_state** %6, align 8
  %19 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 4, %24
  %26 = and i32 %21, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.adv7842_state*, %struct.adv7842_state** %6, align 8
  %30 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %7, align 8
  br label %33

33:                                               ; preds = %28, %17
  br label %49

34:                                               ; preds = %2
  %35 = load %struct.adv7842_state*, %struct.adv7842_state** %6, align 8
  %36 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.adv7842_state*, %struct.adv7842_state** %6, align 8
  %42 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %7, align 8
  br label %45

45:                                               ; preds = %40, %34
  br label %49

46:                                               ; preds = %2
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %112

49:                                               ; preds = %45, %33
  %50 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %51 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %56 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i32*, i32** %7, align 8
  %61 = icmp ne i32* %60, null
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 2, i32 0
  %64 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %65 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  store i32 0, i32* %3, align 4
  br label %112

66:                                               ; preds = %54, %49
  %67 = load i32*, i32** %7, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @ENODATA, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %112

72:                                               ; preds = %66
  %73 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %74 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp sge i32 %75, 2
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %112

80:                                               ; preds = %72
  %81 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %82 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %85 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %83, %86
  %88 = icmp sgt i32 %87, 2
  br i1 %88, label %89, label %96

89:                                               ; preds = %80
  %90 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %91 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 2, %92
  %94 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %95 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %89, %80
  %97 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %98 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %102 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %103, 128
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %100, i64 %105
  %107 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %108 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %109, 128
  %111 = call i32 @memcpy(i32 %99, i32* %106, i32 %110)
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %96, %77, %69, %59, %46
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.adv7842_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
