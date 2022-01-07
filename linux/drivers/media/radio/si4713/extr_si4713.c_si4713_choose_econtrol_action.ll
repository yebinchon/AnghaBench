; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_si4713.c_si4713_choose_econtrol_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_si4713.c_si4713_choose_econtrol_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si4713_device = type { i32 }

@SI4713_TX_RDS_PI = common dso_local global i32 0, align 4
@SI4713_TX_ACOMP_THRESHOLD = common dso_local global i32 0, align 4
@SI4713_TX_ACOMP_GAIN = common dso_local global i32 0, align 4
@SI4713_TX_PILOT_FREQUENCY = common dso_local global i32 0, align 4
@SI4713_TX_ACOMP_ATTACK_TIME = common dso_local global i32 0, align 4
@ATTACK_TIME_UNIT = common dso_local global i32 0, align 4
@SI4713_TX_PILOT_DEVIATION = common dso_local global i32 0, align 4
@SI4713_TX_AUDIO_DEVIATION = common dso_local global i32 0, align 4
@SI4713_TX_RDS_DEVIATION = common dso_local global i32 0, align 4
@SI4713_TX_RDS_PS_MISC = common dso_local global i32 0, align 4
@SI4713_TX_ACOMP_ENABLE = common dso_local global i32 0, align 4
@SI4713_TX_COMPONENT_ENABLE = common dso_local global i32 0, align 4
@SI4713_TX_LIMITER_RELEASE_TIME = common dso_local global i32 0, align 4
@limiter_times = common dso_local global i64* null, align 8
@SI4713_TX_ACOMP_RELEASE_TIME = common dso_local global i32 0, align 4
@acomp_rtimes = common dso_local global i64* null, align 8
@SI4713_TX_PREEMPHASIS = common dso_local global i32 0, align 4
@preemphasis_values = common dso_local global i64* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si4713_device*, i32, i32*, i32*, i32*, i32*, i64**, i32*)* @si4713_choose_econtrol_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_choose_econtrol_action(%struct.si4713_device* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i64** %6, i32* %7) #0 {
  %9 = alloca %struct.si4713_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.si4713_device* %0, %struct.si4713_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64** %6, i64*** %15, align 8
  store i32* %7, i32** %16, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %131 [
    i32 132, label %19
    i32 145, label %23
    i32 147, label %27
    i32 139, label %31
    i32 149, label %35
    i32 141, label %40
    i32 144, label %44
    i32 136, label %48
    i32 131, label %52
    i32 135, label %57
    i32 137, label %62
    i32 138, label %67
    i32 134, label %72
    i32 129, label %77
    i32 130, label %82
    i32 133, label %87
    i32 143, label %92
    i32 148, label %97
    i32 140, label %102
    i32 142, label %107
    i32 146, label %115
    i32 128, label %123
  ]

19:                                               ; preds = %8
  %20 = load i32, i32* @SI4713_TX_RDS_PI, align 4
  %21 = load i32*, i32** %13, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %14, align 8
  store i32 1, i32* %22, align 4
  br label %134

23:                                               ; preds = %8
  %24 = load i32, i32* @SI4713_TX_ACOMP_THRESHOLD, align 4
  %25 = load i32*, i32** %13, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %14, align 8
  store i32 1, i32* %26, align 4
  br label %134

27:                                               ; preds = %8
  %28 = load i32, i32* @SI4713_TX_ACOMP_GAIN, align 4
  %29 = load i32*, i32** %13, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %14, align 8
  store i32 1, i32* %30, align 4
  br label %134

31:                                               ; preds = %8
  %32 = load i32, i32* @SI4713_TX_PILOT_FREQUENCY, align 4
  %33 = load i32*, i32** %13, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %14, align 8
  store i32 1, i32* %34, align 4
  br label %134

35:                                               ; preds = %8
  %36 = load i32, i32* @SI4713_TX_ACOMP_ATTACK_TIME, align 4
  %37 = load i32*, i32** %13, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @ATTACK_TIME_UNIT, align 4
  %39 = load i32*, i32** %14, align 8
  store i32 %38, i32* %39, align 4
  br label %134

40:                                               ; preds = %8
  %41 = load i32, i32* @SI4713_TX_PILOT_DEVIATION, align 4
  %42 = load i32*, i32** %13, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %14, align 8
  store i32 10, i32* %43, align 4
  br label %134

44:                                               ; preds = %8
  %45 = load i32, i32* @SI4713_TX_AUDIO_DEVIATION, align 4
  %46 = load i32*, i32** %13, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %14, align 8
  store i32 10, i32* %47, align 4
  br label %134

48:                                               ; preds = %8
  %49 = load i32, i32* @SI4713_TX_RDS_DEVIATION, align 4
  %50 = load i32*, i32** %13, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %14, align 8
  store i32 1, i32* %51, align 4
  br label %134

52:                                               ; preds = %8
  %53 = load i32, i32* @SI4713_TX_RDS_PS_MISC, align 4
  %54 = load i32*, i32** %13, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %11, align 8
  store i32 5, i32* %55, align 4
  %56 = load i32*, i32** %12, align 8
  store i32 992, i32* %56, align 4
  br label %134

57:                                               ; preds = %8
  %58 = load i32, i32* @SI4713_TX_RDS_PS_MISC, align 4
  %59 = load i32*, i32** %13, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** %11, align 8
  store i32 15, i32* %60, align 4
  %61 = load i32*, i32** %12, align 8
  store i32 32768, i32* %61, align 4
  br label %134

62:                                               ; preds = %8
  %63 = load i32, i32* @SI4713_TX_RDS_PS_MISC, align 4
  %64 = load i32*, i32** %13, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %11, align 8
  store i32 14, i32* %65, align 4
  %66 = load i32*, i32** %12, align 8
  store i32 16384, i32* %66, align 4
  br label %134

67:                                               ; preds = %8
  %68 = load i32, i32* @SI4713_TX_RDS_PS_MISC, align 4
  %69 = load i32*, i32** %13, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32*, i32** %11, align 8
  store i32 13, i32* %70, align 4
  %71 = load i32*, i32** %12, align 8
  store i32 8192, i32* %71, align 4
  br label %134

72:                                               ; preds = %8
  %73 = load i32, i32* @SI4713_TX_RDS_PS_MISC, align 4
  %74 = load i32*, i32** %13, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32*, i32** %11, align 8
  store i32 12, i32* %75, align 4
  %76 = load i32*, i32** %12, align 8
  store i32 4096, i32* %76, align 4
  br label %134

77:                                               ; preds = %8
  %78 = load i32, i32* @SI4713_TX_RDS_PS_MISC, align 4
  %79 = load i32*, i32** %13, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32*, i32** %11, align 8
  store i32 10, i32* %80, align 4
  %81 = load i32*, i32** %12, align 8
  store i32 1024, i32* %81, align 4
  br label %134

82:                                               ; preds = %8
  %83 = load i32, i32* @SI4713_TX_RDS_PS_MISC, align 4
  %84 = load i32*, i32** %13, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32*, i32** %11, align 8
  store i32 4, i32* %85, align 4
  %86 = load i32*, i32** %12, align 8
  store i32 16, i32* %86, align 4
  br label %134

87:                                               ; preds = %8
  %88 = load i32, i32* @SI4713_TX_RDS_PS_MISC, align 4
  %89 = load i32*, i32** %13, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32*, i32** %11, align 8
  store i32 3, i32* %90, align 4
  %91 = load i32*, i32** %12, align 8
  store i32 8, i32* %91, align 4
  br label %134

92:                                               ; preds = %8
  %93 = load i32, i32* @SI4713_TX_ACOMP_ENABLE, align 4
  %94 = load i32*, i32** %13, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32*, i32** %11, align 8
  store i32 1, i32* %95, align 4
  %96 = load i32*, i32** %12, align 8
  store i32 2, i32* %96, align 4
  br label %134

97:                                               ; preds = %8
  %98 = load i32, i32* @SI4713_TX_ACOMP_ENABLE, align 4
  %99 = load i32*, i32** %13, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i32*, i32** %11, align 8
  store i32 0, i32* %100, align 4
  %101 = load i32*, i32** %12, align 8
  store i32 1, i32* %101, align 4
  br label %134

102:                                              ; preds = %8
  %103 = load i32, i32* @SI4713_TX_COMPONENT_ENABLE, align 4
  %104 = load i32*, i32** %13, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i32*, i32** %11, align 8
  store i32 0, i32* %105, align 4
  %106 = load i32*, i32** %12, align 8
  store i32 1, i32* %106, align 4
  br label %134

107:                                              ; preds = %8
  %108 = load i32, i32* @SI4713_TX_LIMITER_RELEASE_TIME, align 4
  %109 = load i32*, i32** %13, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i64*, i64** @limiter_times, align 8
  %111 = load i64**, i64*** %15, align 8
  store i64* %110, i64** %111, align 8
  %112 = load i64*, i64** @limiter_times, align 8
  %113 = call i32 @ARRAY_SIZE(i64* %112)
  %114 = load i32*, i32** %16, align 8
  store i32 %113, i32* %114, align 4
  br label %134

115:                                              ; preds = %8
  %116 = load i32, i32* @SI4713_TX_ACOMP_RELEASE_TIME, align 4
  %117 = load i32*, i32** %13, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i64*, i64** @acomp_rtimes, align 8
  %119 = load i64**, i64*** %15, align 8
  store i64* %118, i64** %119, align 8
  %120 = load i64*, i64** @acomp_rtimes, align 8
  %121 = call i32 @ARRAY_SIZE(i64* %120)
  %122 = load i32*, i32** %16, align 8
  store i32 %121, i32* %122, align 4
  br label %134

123:                                              ; preds = %8
  %124 = load i32, i32* @SI4713_TX_PREEMPHASIS, align 4
  %125 = load i32*, i32** %13, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i64*, i64** @preemphasis_values, align 8
  %127 = load i64**, i64*** %15, align 8
  store i64* %126, i64** %127, align 8
  %128 = load i64*, i64** @preemphasis_values, align 8
  %129 = call i32 @ARRAY_SIZE(i64* %128)
  %130 = load i32*, i32** %16, align 8
  store i32 %129, i32* %130, align 4
  br label %134

131:                                              ; preds = %8
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %17, align 4
  br label %134

134:                                              ; preds = %131, %123, %115, %107, %102, %97, %92, %87, %82, %77, %72, %67, %62, %57, %52, %48, %44, %40, %35, %31, %27, %23, %19
  %135 = load i32, i32* %17, align 4
  ret i32 %135
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
