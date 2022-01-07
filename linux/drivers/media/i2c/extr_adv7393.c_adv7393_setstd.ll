; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7393.c_adv7393_setstd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7393.c_adv7393_setstd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7393_std_info = type { i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.adv7393_state = type { i32, i32, i32 }

@stdinfo = common dso_local global %struct.adv7393_std_info* null, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Invalid std or std is not supported: %llx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SD_STD_MASK = common dso_local global i32 0, align 4
@ADV7393_SD_MODE_REG1 = common dso_local global i64 0, align 8
@INPUT_MODE_MASK = common dso_local global i32 0, align 4
@SD_INPUT_MODE = common dso_local global i32 0, align 4
@ADV7393_MODE_SELECT_REG = common dso_local global i64 0, align 8
@ADV7393_FSC_REG0 = common dso_local global i64 0, align 8
@ADV7393_FSC_REG3 = common dso_local global i64 0, align 8
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_443 = common dso_local global i32 0, align 4
@SD_PEDESTAL_EN = common dso_local global i32 0, align 4
@SD_PEDESTAL_DI = common dso_local global i32 0, align 4
@ADV7393_SD_MODE_REG2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Error setting std, write failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @adv7393_setstd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7393_setstd(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adv7393_state*, align 8
  %7 = alloca %struct.adv7393_std_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = call %struct.adv7393_state* @to_state(%struct.v4l2_subdev* %13)
  store %struct.adv7393_state* %14, %struct.adv7393_state** %6, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.adv7393_std_info*, %struct.adv7393_std_info** @stdinfo, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.adv7393_std_info* %15)
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %33, %2
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load %struct.adv7393_std_info*, %struct.adv7393_std_info** @stdinfo, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.adv7393_std_info, %struct.adv7393_std_info* %22, i64 %24
  %26 = getelementptr inbounds %struct.adv7393_std_info, %struct.adv7393_std_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %36

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %12, align 4
  br label %17

36:                                               ; preds = %31, %17
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32, i32* @debug, align 4
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = call i32 @v4l2_dbg(i32 1, i32 %41, %struct.v4l2_subdev* %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %155

48:                                               ; preds = %36
  %49 = load %struct.adv7393_std_info*, %struct.adv7393_std_info** @stdinfo, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.adv7393_std_info, %struct.adv7393_std_info* %49, i64 %51
  store %struct.adv7393_std_info* %52, %struct.adv7393_std_info** %7, align 8
  %53 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %54 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SD_STD_MASK, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  store i32 %58, i32* %10, align 4
  %59 = load %struct.adv7393_std_info*, %struct.adv7393_std_info** %7, align 8
  %60 = getelementptr inbounds %struct.adv7393_std_info, %struct.adv7393_std_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %65 = load i64, i64* @ADV7393_SD_MODE_REG1, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @adv7393_write(%struct.v4l2_subdev* %64, i64 %65, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %48
  br label %147

71:                                               ; preds = %48
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %74 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %76 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @INPUT_MODE_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* @SD_INPUT_MODE, align 4
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %10, align 4
  %84 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %85 = load i64, i64* @ADV7393_MODE_SELECT_REG, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @adv7393_write(%struct.v4l2_subdev* %84, i64 %85, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %71
  br label %147

91:                                               ; preds = %71
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %94 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.adv7393_std_info*, %struct.adv7393_std_info** %7, align 8
  %96 = getelementptr inbounds %struct.adv7393_std_info, %struct.adv7393_std_info* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %10, align 4
  %98 = load i64, i64* @ADV7393_FSC_REG0, align 8
  store i64 %98, i64* %9, align 8
  br label %99

99:                                               ; preds = %114, %91
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* @ADV7393_FSC_REG3, align 8
  %102 = icmp sle i64 %100, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %99
  %104 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @adv7393_write(%struct.v4l2_subdev* %104, i64 %105, i32 %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %147

111:                                              ; preds = %103
  %112 = load i32, i32* %10, align 4
  %113 = ashr i32 %112, 8
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %111
  %115 = load i64, i64* %9, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %9, align 8
  br label %99

117:                                              ; preds = %99
  %118 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %119 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @V4L2_STD_NTSC, align 4
  %123 = load i32, i32* @V4L2_STD_NTSC_443, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %121, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %117
  %128 = load i32, i32* @SD_PEDESTAL_EN, align 4
  %129 = load i32, i32* %10, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %10, align 4
  br label %135

131:                                              ; preds = %117
  %132 = load i32, i32* @SD_PEDESTAL_DI, align 4
  %133 = load i32, i32* %10, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %131, %127
  %136 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %137 = load i64, i64* @ADV7393_SD_MODE_REG2, align 8
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @adv7393_write(%struct.v4l2_subdev* %136, i64 %137, i32 %138)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  br label %147

143:                                              ; preds = %135
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %146 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %143, %142, %110, %90, %70
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %152 = call i32 @v4l2_err(%struct.v4l2_subdev* %151, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %153

153:                                              ; preds = %150, %147
  %154 = load i32, i32* %11, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %153, %40
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.adv7393_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.adv7393_std_info*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i64) #1

declare dso_local i32 @adv7393_write(%struct.v4l2_subdev*, i64, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
