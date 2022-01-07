; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-driver.c_msp_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-driver.c_msp_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.msp_state = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { i32 }

@msp_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"mute=%s scanning=%s volume=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @msp_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.msp_state*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %8 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %9 = call %struct.msp_state* @ctrl_to_state(%struct.v4l2_ctrl* %8)
  store %struct.msp_state* %9, %struct.msp_state** %4, align 8
  %10 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %11 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %10, i32 0, i32 5
  %12 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %5, align 8
  %13 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %14 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %17 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %169 [
    i32 128, label %19
    i32 131, label %98
    i32 129, label %116
    i32 130, label %134
    i32 132, label %151
  ]

19:                                               ; preds = %1
  %20 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %21 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %20, i32 0, i32 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %26 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %24, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  %33 = mul nsw i32 %32, 127
  %34 = sdiv i32 %33, 65535
  %35 = shl i32 %34, 8
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %31, %19
  %37 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i32, i32* @msp_debug, align 4
  %40 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %41 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %40, i32 0, i32 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %48 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %49 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %54 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %55 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_dbg_lvl(i32* %38, i32 1, i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %47, i8* %53, i32 %58)
  %60 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @msp_write_dsp(%struct.i2c_client* %60, i32 0, i32 %61)
  %63 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %36
  br label %70

67:                                               ; preds = %36
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, 1
  br label %70

70:                                               ; preds = %67, %66
  %71 = phi i32 [ 1, %66 ], [ %69, %67 ]
  %72 = call i32 @msp_write_dsp(%struct.i2c_client* %63, i32 7, i32 %71)
  %73 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %74 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %70
  %78 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %85

82:                                               ; preds = %77
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, 1
  br label %85

85:                                               ; preds = %82, %81
  %86 = phi i32 [ 1, %81 ], [ %84, %82 ]
  %87 = call i32 @msp_write_dsp(%struct.i2c_client* %78, i32 64, i32 %86)
  br label %88

88:                                               ; preds = %85, %70
  %89 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %90 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @msp_write_dsp(%struct.i2c_client* %94, i32 6, i32 %95)
  br label %97

97:                                               ; preds = %93, %88
  br label %172

98:                                               ; preds = %1
  %99 = load i32, i32* %6, align 4
  %100 = sub nsw i32 %99, 32768
  %101 = mul nsw i32 %100, 96
  %102 = sdiv i32 %101, 65535
  %103 = shl i32 %102, 8
  store i32 %103, i32* %6, align 4
  %104 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @msp_write_dsp(%struct.i2c_client* %104, i32 2, i32 %105)
  %107 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %108 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %98
  %112 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @msp_write_dsp(%struct.i2c_client* %112, i32 49, i32 %113)
  br label %115

115:                                              ; preds = %111, %98
  br label %172

116:                                              ; preds = %1
  %117 = load i32, i32* %6, align 4
  %118 = sub nsw i32 %117, 32768
  %119 = mul nsw i32 %118, 96
  %120 = sdiv i32 %119, 65535
  %121 = shl i32 %120, 8
  store i32 %121, i32* %6, align 4
  %122 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @msp_write_dsp(%struct.i2c_client* %122, i32 3, i32 %123)
  %125 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %126 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %116
  %130 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @msp_write_dsp(%struct.i2c_client* %130, i32 50, i32 %131)
  br label %133

133:                                              ; preds = %129, %116
  br label %172

134:                                              ; preds = %1
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32 5120, i32 0
  store i32 %138, i32* %6, align 4
  %139 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @msp_write_dsp(%struct.i2c_client* %139, i32 4, i32 %140)
  %142 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %143 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %134
  %147 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @msp_write_dsp(%struct.i2c_client* %147, i32 51, i32 %148)
  br label %150

150:                                              ; preds = %146, %134
  br label %172

151:                                              ; preds = %1
  %152 = load i32, i32* %6, align 4
  %153 = sdiv i32 %152, 256
  %154 = sub nsw i32 %153, 128
  store i32 %154, i32* %6, align 4
  %155 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %156 = load i32, i32* %6, align 4
  %157 = shl i32 %156, 8
  %158 = call i32 @msp_write_dsp(%struct.i2c_client* %155, i32 1, i32 %157)
  %159 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %160 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %151
  %164 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %165 = load i32, i32* %6, align 4
  %166 = shl i32 %165, 8
  %167 = call i32 @msp_write_dsp(%struct.i2c_client* %164, i32 48, i32 %166)
  br label %168

168:                                              ; preds = %163, %151
  br label %172

169:                                              ; preds = %1
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %2, align 4
  br label %173

172:                                              ; preds = %168, %150, %133, %115, %97
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %172, %169
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local %struct.msp_state* @ctrl_to_state(%struct.v4l2_ctrl*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @dev_dbg_lvl(i32*, i32, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @msp_write_dsp(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
