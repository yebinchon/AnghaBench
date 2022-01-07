; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7343.c_adv7343_setstd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7343.c_adv7343_setstd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7343_state = type { i32, i32 }
%struct.adv7343_std_info = type { i32, i32, i32 }

@stdinfo = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Invalid std or std is not supported: %llx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SD_STD_MASK = common dso_local global i32 0, align 4
@ADV7343_SD_MODE_REG1 = common dso_local global i32 0, align 4
@INPUT_MODE_MASK = common dso_local global i64 0, align 8
@SD_INPUT_MODE = common dso_local global i32 0, align 4
@ADV7343_MODE_SELECT_REG = common dso_local global i32 0, align 4
@ADV7343_FSC_REG0 = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_443 = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Error setting std, write failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @adv7343_setstd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7343_setstd(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adv7343_state*, align 8
  %7 = alloca %struct.adv7343_std_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %15 = call %struct.adv7343_state* @to_state(%struct.v4l2_subdev* %14)
  store %struct.adv7343_state* %15, %struct.adv7343_state** %6, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load i64, i64* @stdinfo, align 8
  %17 = inttoptr i64 %16 to %struct.adv7343_std_info*
  store %struct.adv7343_std_info* %17, %struct.adv7343_std_info** %7, align 8
  %18 = load i64, i64* @stdinfo, align 8
  %19 = call i32 @ARRAY_SIZE(i64 %18)
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %36, %2
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load %struct.adv7343_std_info*, %struct.adv7343_std_info** %7, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.adv7343_std_info, %struct.adv7343_std_info* %25, i64 %27
  %29 = getelementptr inbounds %struct.adv7343_std_info, %struct.adv7343_std_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %39

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %13, align 4
  br label %20

39:                                               ; preds = %34, %20
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* @debug, align 4
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = call i32 @v4l2_dbg(i32 1, i32 %44, %struct.v4l2_subdev* %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %169

51:                                               ; preds = %39
  %52 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %53 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SD_STD_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  store i32 %57, i32* %11, align 4
  %58 = load %struct.adv7343_std_info*, %struct.adv7343_std_info** %7, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.adv7343_std_info, %struct.adv7343_std_info* %58, i64 %60
  %62 = getelementptr inbounds %struct.adv7343_std_info, %struct.adv7343_std_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %67 = load i32, i32* @ADV7343_SD_MODE_REG1, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @adv7343_write(%struct.v4l2_subdev* %66, i32 %67, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %51
  br label %161

73:                                               ; preds = %51
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %76 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %78 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* @INPUT_MODE_MASK, align 8
  %81 = trunc i64 %80 to i32
  %82 = xor i32 %81, -1
  %83 = and i32 %79, %82
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* @SD_INPUT_MODE, align 4
  %85 = load i32, i32* %11, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %11, align 4
  %87 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %88 = load i32, i32* @ADV7343_MODE_SELECT_REG, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @adv7343_write(%struct.v4l2_subdev* %87, i32 %88, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %73
  br label %161

94:                                               ; preds = %73
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %97 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.adv7343_std_info*, %struct.adv7343_std_info** %7, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.adv7343_std_info, %struct.adv7343_std_info* %98, i64 %100
  %102 = getelementptr inbounds %struct.adv7343_std_info, %struct.adv7343_std_info* %101, i32 0, i32 2
  %103 = bitcast i32* %102 to i8*
  store i8* %103, i8** %9, align 8
  %104 = load i32, i32* @ADV7343_FSC_REG0, align 4
  store i32 %104, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %105

105:                                              ; preds = %119, %94
  %106 = load i32, i32* %13, align 4
  %107 = icmp slt i32 %106, 4
  br i1 %107, label %108, label %126

108:                                              ; preds = %105
  %109 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i8*, i8** %9, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = call i32 @adv7343_write(%struct.v4l2_subdev* %109, i32 %110, i32 %113)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  br label %161

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  %124 = load i8*, i8** %9, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %9, align 8
  br label %105

126:                                              ; preds = %105
  %127 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %128 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @V4L2_STD_NTSC, align 4
  %132 = load i32, i32* @V4L2_STD_NTSC_443, align 4
  %133 = or i32 %131, %132
  %134 = and i32 %130, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %126
  %137 = load i32, i32* %11, align 4
  %138 = and i32 %137, 3
  store i32 %138, i32* %11, align 4
  br label %149

139:                                              ; preds = %126
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @V4L2_STD_SECAM, align 4
  %142 = xor i32 %141, -1
  %143 = and i32 %140, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load i32, i32* %11, align 4
  %147 = or i32 %146, 4
  store i32 %147, i32* %11, align 4
  br label %148

148:                                              ; preds = %145, %139
  br label %149

149:                                              ; preds = %148, %136
  %150 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %151 = load i32, i32* @ADV7343_SD_MODE_REG1, align 4
  %152 = load i32, i32* %11, align 4
  %153 = call i32 @adv7343_write(%struct.v4l2_subdev* %150, i32 %151, i32 %152)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  br label %161

157:                                              ; preds = %149
  %158 = load i32, i32* %11, align 4
  %159 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %160 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %157, %156, %117, %93, %72
  %162 = load i32, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %166 = call i32 @v4l2_err(%struct.v4l2_subdev* %165, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i32, i32* %12, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %167, %43
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local %struct.adv7343_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @ARRAY_SIZE(i64) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i64) #1

declare dso_local i32 @adv7343_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
