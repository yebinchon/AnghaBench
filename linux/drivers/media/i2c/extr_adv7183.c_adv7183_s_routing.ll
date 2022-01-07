; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7183.c_adv7183_s_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7183.c_adv7183_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7183 = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ADV7183_IN_CTRL = common dso_local global i32 0, align 4
@ADV7183_OUT_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i64, i64, i64)* @adv7183_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7183_s_routing(%struct.v4l2_subdev* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adv7183*, align 8
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %13 = call %struct.adv7183* @to_adv7183(%struct.v4l2_subdev* %12)
  store %struct.adv7183* %13, %struct.adv7183** %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp sgt i64 %14, 141
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  %18 = icmp sgt i64 %17, 143
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %115

22:                                               ; preds = %16
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.adv7183*, %struct.adv7183** %10, align 8
  %25 = getelementptr inbounds %struct.adv7183, %struct.adv7183* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %88

28:                                               ; preds = %22
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.adv7183*, %struct.adv7183** %10, align 8
  %31 = getelementptr inbounds %struct.adv7183, %struct.adv7183* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %33 = load i32, i32* @ADV7183_IN_CTRL, align 4
  %34 = call i32 @adv7183_read(%struct.v4l2_subdev* %32, i32 %33)
  %35 = and i32 %34, 240
  store i32 %35, i32* %11, align 4
  %36 = load i64, i64* %7, align 8
  switch i64 %36, label %82 [
    i64 140, label %37
    i64 138, label %40
    i64 137, label %43
    i64 136, label %46
    i64 135, label %49
    i64 134, label %52
    i64 133, label %55
    i64 132, label %58
    i64 131, label %61
    i64 139, label %64
    i64 130, label %67
    i64 129, label %70
    i64 128, label %73
    i64 142, label %76
    i64 141, label %79
  ]

37:                                               ; preds = %28
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %83

40:                                               ; preds = %28
  %41 = load i32, i32* %11, align 4
  %42 = or i32 %41, 2
  store i32 %42, i32* %11, align 4
  br label %83

43:                                               ; preds = %28
  %44 = load i32, i32* %11, align 4
  %45 = or i32 %44, 3
  store i32 %45, i32* %11, align 4
  br label %83

46:                                               ; preds = %28
  %47 = load i32, i32* %11, align 4
  %48 = or i32 %47, 4
  store i32 %48, i32* %11, align 4
  br label %83

49:                                               ; preds = %28
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %50, 5
  store i32 %51, i32* %11, align 4
  br label %83

52:                                               ; preds = %28
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, 11
  store i32 %54, i32* %11, align 4
  br label %83

55:                                               ; preds = %28
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, 12
  store i32 %57, i32* %11, align 4
  br label %83

58:                                               ; preds = %28
  %59 = load i32, i32* %11, align 4
  %60 = or i32 %59, 13
  store i32 %60, i32* %11, align 4
  br label %83

61:                                               ; preds = %28
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, 14
  store i32 %63, i32* %11, align 4
  br label %83

64:                                               ; preds = %28
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %65, 15
  store i32 %66, i32* %11, align 4
  br label %83

67:                                               ; preds = %28
  %68 = load i32, i32* %11, align 4
  %69 = or i32 %68, 6
  store i32 %69, i32* %11, align 4
  br label %83

70:                                               ; preds = %28
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %71, 7
  store i32 %72, i32* %11, align 4
  br label %83

73:                                               ; preds = %28
  %74 = load i32, i32* %11, align 4
  %75 = or i32 %74, 8
  store i32 %75, i32* %11, align 4
  br label %83

76:                                               ; preds = %28
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %77, 9
  store i32 %78, i32* %11, align 4
  br label %83

79:                                               ; preds = %28
  %80 = load i32, i32* %11, align 4
  %81 = or i32 %80, 10
  store i32 %81, i32* %11, align 4
  br label %83

82:                                               ; preds = %28
  br label %83

83:                                               ; preds = %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37
  %84 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %85 = load i32, i32* @ADV7183_IN_CTRL, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @adv7183_write(%struct.v4l2_subdev* %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %22
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.adv7183*, %struct.adv7183** %10, align 8
  %91 = getelementptr inbounds %struct.adv7183, %struct.adv7183* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %88
  %95 = load i64, i64* %8, align 8
  %96 = load %struct.adv7183*, %struct.adv7183** %10, align 8
  %97 = getelementptr inbounds %struct.adv7183, %struct.adv7183* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  %98 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %99 = load i32, i32* @ADV7183_OUT_CTRL, align 4
  %100 = call i32 @adv7183_read(%struct.v4l2_subdev* %98, i32 %99)
  %101 = and i32 %100, 192
  store i32 %101, i32* %11, align 4
  %102 = load i64, i64* %8, align 8
  switch i64 %102, label %106 [
    i64 143, label %103
  ]

103:                                              ; preds = %94
  %104 = load i32, i32* %11, align 4
  %105 = or i32 %104, 9
  store i32 %105, i32* %11, align 4
  br label %109

106:                                              ; preds = %94
  %107 = load i32, i32* %11, align 4
  %108 = or i32 %107, 12
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %106, %103
  %110 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %111 = load i32, i32* @ADV7183_OUT_CTRL, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @adv7183_write(%struct.v4l2_subdev* %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %109, %88
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %114, %19
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local %struct.adv7183* @to_adv7183(%struct.v4l2_subdev*) #1

declare dso_local i32 @adv7183_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @adv7183_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
