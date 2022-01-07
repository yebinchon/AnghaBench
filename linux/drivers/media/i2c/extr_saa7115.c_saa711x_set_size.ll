; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_set_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_set_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa711x_state = type { i32, i32, i32, i32 }

@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"decoder set size to %ix%i\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@R_D0_B_HORIZ_PRESCALING = common dso_local global i32 0, align 4
@R_CC_B_HORIZ_OUTPUT_WINDOW_LENGTH = common dso_local global i32 0, align 4
@R_CD_B_HORIZ_OUTPUT_WINDOW_LENGTH_MSB = common dso_local global i32 0, align 4
@VRES_60HZ = common dso_local global i32 0, align 4
@R_CE_B_VERT_OUTPUT_WINDOW_LENGTH = common dso_local global i32 0, align 4
@R_CF_B_VERT_OUTPUT_WINDOW_LENGTH_MSB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Hpsc: 0x%05x, Hfsc: 0x%05x\0A\00", align 1
@R_D8_B_HORIZ_LUMA_SCALING_INC = common dso_local global i32 0, align 4
@R_D9_B_HORIZ_LUMA_SCALING_INC_MSB = common dso_local global i32 0, align 4
@R_DC_B_HORIZ_CHROMA_SCALING = common dso_local global i32 0, align 4
@R_DD_B_HORIZ_CHROMA_SCALING_MSB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Vsrc: %d, Vscy: 0x%05x\0A\00", align 1
@R_D5_B_LUMA_CONTRAST_CNTL = common dso_local global i32 0, align 4
@R_D6_B_CHROMA_SATURATION_CNTL = common dso_local global i32 0, align 4
@R_E0_B_VERT_LUMA_SCALING_INC = common dso_local global i32 0, align 4
@R_E1_B_VERT_LUMA_SCALING_INC_MSB = common dso_local global i32 0, align 4
@R_E2_B_VERT_CHROMA_SCALING_INC = common dso_local global i32 0, align 4
@R_E3_B_VERT_CHROMA_SCALING_INC_MSB = common dso_local global i32 0, align 4
@saa7115_cfg_reset_scaler = common dso_local global i32 0, align 4
@R_80_GLOBAL_CNTL_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32)* @saa711x_set_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa711x_set_size(%struct.v4l2_subdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.saa711x_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %16 = call %struct.saa711x_state* @to_state(%struct.v4l2_subdev* %15)
  store %struct.saa711x_state* %16, %struct.saa711x_state** %8, align 8
  %17 = load %struct.saa711x_state*, %struct.saa711x_state** %8, align 8
  %18 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @V4L2_STD_625_50, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 576, i32 480
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* @debug, align 4
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @v4l2_dbg(i32 1, i32 %26, %struct.v4l2_subdev* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %34, 1440
  br i1 %35, label %36, label %39

36:                                               ; preds = %33, %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %215

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %39
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %215

49:                                               ; preds = %42
  %50 = load %struct.saa711x_state*, %struct.saa711x_state** %8, align 8
  %51 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @R_D0_B_HORIZ_PRESCALING, align 4
  %54 = call i32 @saa711x_has_reg(i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 720
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %215

62:                                               ; preds = %56
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %215

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %49
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.saa711x_state*, %struct.saa711x_state** %8, align 8
  %73 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.saa711x_state*, %struct.saa711x_state** %8, align 8
  %76 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.saa711x_state*, %struct.saa711x_state** %8, align 8
  %78 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @R_CC_B_HORIZ_OUTPUT_WINDOW_LENGTH, align 4
  %81 = call i32 @saa711x_has_reg(i32 %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %215

84:                                               ; preds = %70
  %85 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %86 = load i32, i32* @R_CC_B_HORIZ_OUTPUT_WINDOW_LENGTH, align 4
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, 255
  %89 = call i32 @saa711x_write(%struct.v4l2_subdev* %85, i32 %86, i32 %88)
  %90 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %91 = load i32, i32* @R_CD_B_HORIZ_OUTPUT_WINDOW_LENGTH_MSB, align 4
  %92 = load i32, i32* %6, align 4
  %93 = ashr i32 %92, 8
  %94 = and i32 %93, 255
  %95 = call i32 @saa711x_write(%struct.v4l2_subdev* %90, i32 %91, i32 %94)
  %96 = load i32, i32* %7, align 4
  %97 = sdiv i32 %96, 2
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %84
  %101 = load i32, i32* @VRES_60HZ, align 4
  %102 = sub nsw i32 %101, 480
  %103 = ashr i32 %102, 1
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %100, %84
  %107 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %108 = load i32, i32* @R_CE_B_VERT_OUTPUT_WINDOW_LENGTH, align 4
  %109 = load i32, i32* %12, align 4
  %110 = and i32 %109, 255
  %111 = call i32 @saa711x_write(%struct.v4l2_subdev* %107, i32 %108, i32 %110)
  %112 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %113 = load i32, i32* @R_CF_B_VERT_OUTPUT_WINDOW_LENGTH_MSB, align 4
  %114 = load i32, i32* %12, align 4
  %115 = ashr i32 %114, 8
  %116 = and i32 %115, 255
  %117 = call i32 @saa711x_write(%struct.v4l2_subdev* %112, i32 %113, i32 %116)
  %118 = load i32, i32* %6, align 4
  %119 = sdiv i32 720, %118
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %106
  %123 = load i32, i32* %9, align 4
  br label %125

124:                                              ; preds = %106
  br label %125

125:                                              ; preds = %124, %122
  %126 = phi i32 [ %123, %122 ], [ 1, %124 ]
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %6, align 4
  %129 = mul nsw i32 %127, %128
  %130 = sdiv i32 737280, %129
  store i32 %130, i32* %10, align 4
  %131 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %132 = load i32, i32* @R_D0_B_HORIZ_PRESCALING, align 4
  %133 = load i32, i32* %9, align 4
  %134 = and i32 %133, 63
  %135 = call i32 @saa711x_write(%struct.v4l2_subdev* %131, i32 %132, i32 %134)
  %136 = load i32, i32* @debug, align 4
  %137 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @v4l2_dbg(i32 1, i32 %136, %struct.v4l2_subdev* %137, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 %139)
  %141 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %142 = load i32, i32* @R_D8_B_HORIZ_LUMA_SCALING_INC, align 4
  %143 = load i32, i32* %10, align 4
  %144 = and i32 %143, 255
  %145 = call i32 @saa711x_write(%struct.v4l2_subdev* %141, i32 %142, i32 %144)
  %146 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %147 = load i32, i32* @R_D9_B_HORIZ_LUMA_SCALING_INC_MSB, align 4
  %148 = load i32, i32* %10, align 4
  %149 = ashr i32 %148, 8
  %150 = and i32 %149, 255
  %151 = call i32 @saa711x_write(%struct.v4l2_subdev* %146, i32 %147, i32 %150)
  %152 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %153 = load i32, i32* @R_DC_B_HORIZ_CHROMA_SCALING, align 4
  %154 = load i32, i32* %10, align 4
  %155 = ashr i32 %154, 1
  %156 = and i32 %155, 255
  %157 = call i32 @saa711x_write(%struct.v4l2_subdev* %152, i32 %153, i32 %156)
  %158 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %159 = load i32, i32* @R_DD_B_HORIZ_CHROMA_SCALING_MSB, align 4
  %160 = load i32, i32* %10, align 4
  %161 = ashr i32 %160, 9
  %162 = and i32 %161, 255
  %163 = call i32 @saa711x_write(%struct.v4l2_subdev* %158, i32 %159, i32 %162)
  %164 = load i32, i32* %14, align 4
  %165 = mul nsw i32 1024, %164
  %166 = load i32, i32* %7, align 4
  %167 = sdiv i32 %165, %166
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* @debug, align 4
  %169 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @v4l2_dbg(i32 1, i32 %168, %struct.v4l2_subdev* %169, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %170, i32 %171)
  %173 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %174 = load i32, i32* @R_D5_B_LUMA_CONTRAST_CNTL, align 4
  %175 = load i32, i32* %11, align 4
  %176 = sdiv i32 65536, %175
  %177 = call i32 @saa711x_write(%struct.v4l2_subdev* %173, i32 %174, i32 %176)
  %178 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %179 = load i32, i32* @R_D6_B_CHROMA_SATURATION_CNTL, align 4
  %180 = load i32, i32* %11, align 4
  %181 = sdiv i32 65536, %180
  %182 = call i32 @saa711x_write(%struct.v4l2_subdev* %178, i32 %179, i32 %181)
  %183 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %184 = load i32, i32* @R_E0_B_VERT_LUMA_SCALING_INC, align 4
  %185 = load i32, i32* %11, align 4
  %186 = and i32 %185, 255
  %187 = call i32 @saa711x_write(%struct.v4l2_subdev* %183, i32 %184, i32 %186)
  %188 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %189 = load i32, i32* @R_E1_B_VERT_LUMA_SCALING_INC_MSB, align 4
  %190 = load i32, i32* %11, align 4
  %191 = ashr i32 %190, 8
  %192 = and i32 %191, 255
  %193 = call i32 @saa711x_write(%struct.v4l2_subdev* %188, i32 %189, i32 %192)
  %194 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %195 = load i32, i32* @R_E2_B_VERT_CHROMA_SCALING_INC, align 4
  %196 = load i32, i32* %11, align 4
  %197 = and i32 %196, 255
  %198 = call i32 @saa711x_write(%struct.v4l2_subdev* %194, i32 %195, i32 %197)
  %199 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %200 = load i32, i32* @R_E3_B_VERT_CHROMA_SCALING_INC_MSB, align 4
  %201 = load i32, i32* %11, align 4
  %202 = ashr i32 %201, 8
  %203 = and i32 %202, 255
  %204 = call i32 @saa711x_write(%struct.v4l2_subdev* %199, i32 %200, i32 %203)
  %205 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %206 = load i32, i32* @saa7115_cfg_reset_scaler, align 4
  %207 = call i32 @saa711x_writeregs(%struct.v4l2_subdev* %205, i32 %206)
  %208 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %209 = load i32, i32* @R_80_GLOBAL_CNTL_1, align 4
  %210 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %211 = load i32, i32* @R_80_GLOBAL_CNTL_1, align 4
  %212 = call i32 @saa711x_read(%struct.v4l2_subdev* %210, i32 %211)
  %213 = or i32 %212, 32
  %214 = call i32 @saa711x_write(%struct.v4l2_subdev* %208, i32 %209, i32 %213)
  store i32 0, i32* %4, align 4
  br label %215

215:                                              ; preds = %125, %83, %66, %59, %46, %36
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local %struct.saa711x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32) #1

declare dso_local i32 @saa711x_has_reg(i32, i32) #1

declare dso_local i32 @saa711x_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @saa711x_writeregs(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @saa711x_read(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
