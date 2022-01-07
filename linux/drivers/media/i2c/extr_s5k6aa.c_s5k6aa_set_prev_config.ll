; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_set_prev_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_set_prev_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k6aa = type { i64, i64, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.s5k6aa_preset = type { i32, i64 }
%struct.i2c_client = type { i32 }

@S5K6AA_MAX_HIGHRES_FR_TIME = common dso_local global i64 0, align 8
@FR_RATE_Q_BEST_FRRATE = common dso_local global i64 0, align 8
@FR_RATE_Q_BEST_QUALITY = common dso_local global i64 0, align 8
@FR_RATE_DYNAMIC = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Frame interval: %d +/- 3.3ms. (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k6aa*, %struct.s5k6aa_preset*)* @s5k6aa_set_prev_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6aa_set_prev_config(%struct.s5k6aa* %0, %struct.s5k6aa_preset* %1) #0 {
  %3 = alloca %struct.s5k6aa*, align 8
  %4 = alloca %struct.s5k6aa_preset*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.s5k6aa* %0, %struct.s5k6aa** %3, align 8
  store %struct.s5k6aa_preset* %1, %struct.s5k6aa_preset** %4, align 8
  %9 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %10 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %9, i32 0, i32 4
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %5, align 8
  %12 = load %struct.s5k6aa_preset*, %struct.s5k6aa_preset** %4, align 8
  %13 = getelementptr inbounds %struct.s5k6aa_preset, %struct.s5k6aa_preset* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %16 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @S5K6AA_MAX_HIGHRES_FR_TIME, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i64, i64* @FR_RATE_Q_BEST_FRRATE, align 8
  store i64 %23, i64* %7, align 8
  br label %26

24:                                               ; preds = %2
  %25 = load i64, i64* @FR_RATE_Q_BEST_QUALITY, align 8
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %28 = load %struct.s5k6aa_preset*, %struct.s5k6aa_preset** %4, align 8
  %29 = call i32 @s5k6aa_set_output_framefmt(%struct.s5k6aa* %27, %struct.s5k6aa_preset* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %26
  %33 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @REG_P_MAX_OUT_RATE(i32 %34)
  %36 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %37 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @s5k6aa_write(%struct.i2c_client* %33, i32 %35, i64 %38)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %32, %26
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @REG_P_MIN_OUT_RATE(i32 %45)
  %47 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %48 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @s5k6aa_write(%struct.i2c_client* %44, i32 %46, i64 %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %43, %40
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @REG_P_CLK_INDEX(i32 %56)
  %58 = load %struct.s5k6aa_preset*, %struct.s5k6aa_preset** %4, align 8
  %59 = getelementptr inbounds %struct.s5k6aa_preset, %struct.s5k6aa_preset* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @s5k6aa_write(%struct.i2c_client* %55, i32 %57, i64 %60)
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %54, %51
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @REG_P_FR_RATE_TYPE(i32 %67)
  %69 = load i64, i64* @FR_RATE_DYNAMIC, align 8
  %70 = call i32 @s5k6aa_write(%struct.i2c_client* %66, i32 %68, i64 %69)
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %65, %62
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @REG_P_FR_RATE_Q_TYPE(i32 %76)
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @s5k6aa_write(%struct.i2c_client* %75, i32 %77, i64 %78)
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %74, %71
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %80
  %84 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @REG_P_MAX_FR_TIME(i32 %85)
  %87 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %88 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %87, i32 0, i32 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 33
  %93 = call i32 @s5k6aa_write(%struct.i2c_client* %84, i32 %86, i64 %92)
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %83, %80
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %94
  %98 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @REG_P_MIN_FR_TIME(i32 %99)
  %101 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %102 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %105, 33
  %107 = call i32 @s5k6aa_write(%struct.i2c_client* %98, i32 %100, i64 %106)
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %97, %94
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @s5k6aa_new_config_sync(%struct.i2c_client* %112, i32 250, i32 %113)
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %111, %108
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %120 = call i32 @s5k6aa_preview_config_status(%struct.i2c_client* %119)
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %126 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %125, i32 0, i32 3
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i32, i32* @debug, align 4
  %129 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %130 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %131 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %130, i32 0, i32 2
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @v4l2_dbg(i32 1, i32 %128, %struct.i2c_client* %129, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %134, i32 %135)
  %137 = load i32, i32* %8, align 4
  ret i32 %137
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @s5k6aa_set_output_framefmt(%struct.s5k6aa*, %struct.s5k6aa_preset*) #1

declare dso_local i32 @s5k6aa_write(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @REG_P_MAX_OUT_RATE(i32) #1

declare dso_local i32 @REG_P_MIN_OUT_RATE(i32) #1

declare dso_local i32 @REG_P_CLK_INDEX(i32) #1

declare dso_local i32 @REG_P_FR_RATE_TYPE(i32) #1

declare dso_local i32 @REG_P_FR_RATE_Q_TYPE(i32) #1

declare dso_local i32 @REG_P_MAX_FR_TIME(i32) #1

declare dso_local i32 @REG_P_MIN_FR_TIME(i32) #1

declare dso_local i32 @s5k6aa_new_config_sync(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @s5k6aa_preview_config_status(%struct.i2c_client*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.i2c_client*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
