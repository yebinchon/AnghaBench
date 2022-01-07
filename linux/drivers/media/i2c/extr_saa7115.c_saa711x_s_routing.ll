; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_s_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa711x_state = type { i64, i64, i64 }

@SAA7111A = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"decoder set input %d output %d\0A\00", align 1
@SAA7113 = common dso_local global i64 0, align 8
@GM7113C = common dso_local global i64 0, align 8
@SAA7115_COMPOSITE4 = common dso_local global i64 0, align 8
@SAA7115_COMPOSITE5 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SAA7115_SVIDEO3 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"now setting %s input %s output\0A\00", align 1
@SAA7115_SVIDEO0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"S-Video\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Composite\00", align 1
@SAA7115_IPORT_ON = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"iport on\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"iport off\00", align 1
@R_10_CHROMA_CNTL_2 = common dso_local global i32 0, align 4
@R_13_RT_X_PORT_OUT_CNTL = common dso_local global i32 0, align 4
@R_02_INPUT_CNTL_1 = common dso_local global i32 0, align 4
@R_09_LUMA_CNTL = common dso_local global i32 0, align 4
@SAA7114 = common dso_local global i64 0, align 8
@SAA7115 = common dso_local global i64 0, align 8
@R_83_X_PORT_I_O_ENA_AND_OUT_CLK = common dso_local global i32 0, align 4
@SAA7115_IDQ_IS_DEFAULT = common dso_local global i64 0, align 8
@R_85_I_PORT_SIGNAL_POLAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i64, i64, i64)* @saa711x_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa711x_s_routing(%struct.v4l2_subdev* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.saa711x_state*, align 8
  %11 = alloca i64, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %13 = call %struct.saa711x_state* @to_state(%struct.v4l2_subdev* %12)
  store %struct.saa711x_state* %13, %struct.saa711x_state** %10, align 8
  %14 = load %struct.saa711x_state*, %struct.saa711x_state** %10, align 8
  %15 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SAA7111A, align 8
  %18 = icmp sle i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 248, i32 240
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %11, align 8
  %22 = load i32, i32* @debug, align 4
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load i64, i64* %8, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @v4l2_dbg(i32 1, i32 %22, %struct.v4l2_subdev* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %27)
  %29 = load %struct.saa711x_state*, %struct.saa711x_state** %10, align 8
  %30 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SAA7113, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %4
  %35 = load %struct.saa711x_state*, %struct.saa711x_state** %10, align 8
  %36 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GM7113C, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34, %4
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @SAA7115_COMPOSITE4, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @SAA7115_COMPOSITE5, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44, %40
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %205

51:                                               ; preds = %44, %34
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @SAA7115_SVIDEO3, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %205

58:                                               ; preds = %51
  %59 = load %struct.saa711x_state*, %struct.saa711x_state** %10, align 8
  %60 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load %struct.saa711x_state*, %struct.saa711x_state** %10, align 8
  %66 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %205

71:                                               ; preds = %64, %58
  %72 = load i32, i32* @debug, align 4
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* @SAA7115_SVIDEO0, align 8
  %76 = icmp sge i64 %74, %75
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @SAA7115_IPORT_ON, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %84 = call i32 @v4l2_dbg(i32 1, i32 %72, %struct.v4l2_subdev* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %78, i8* %83)
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.saa711x_state*, %struct.saa711x_state** %10, align 8
  %87 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.saa711x_state*, %struct.saa711x_state** %10, align 8
  %89 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SAA7111A, align 8
  %92 = icmp sle i64 %90, %91
  br i1 %92, label %93, label %127

93:                                               ; preds = %71
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* @SAA7115_COMPOSITE4, align 8
  %96 = icmp sge i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i64, i64* %7, align 8
  %99 = sub nsw i64 %98, 2
  store i64 %99, i64* %7, align 8
  br label %100

100:                                              ; preds = %97, %93
  %101 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %102 = load i32, i32* @R_10_CHROMA_CNTL_2, align 4
  %103 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %104 = load i32, i32* @R_10_CHROMA_CNTL_2, align 4
  %105 = call i32 @saa711x_read(%struct.v4l2_subdev* %103, i32 %104)
  %106 = and i32 %105, 63
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %8, align 8
  %109 = and i64 %108, 192
  %110 = xor i64 %109, 64
  %111 = or i64 %107, %110
  %112 = trunc i64 %111 to i32
  %113 = call i32 @saa711x_write(%struct.v4l2_subdev* %101, i32 %102, i32 %112)
  %114 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %115 = load i32, i32* @R_13_RT_X_PORT_OUT_CNTL, align 4
  %116 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %117 = load i32, i32* @R_13_RT_X_PORT_OUT_CNTL, align 4
  %118 = call i32 @saa711x_read(%struct.v4l2_subdev* %116, i32 %117)
  %119 = and i32 %118, 240
  %120 = load i64, i64* %8, align 8
  %121 = and i64 %120, 2
  %122 = icmp ne i64 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 10, i32 0
  %125 = or i32 %119, %124
  %126 = call i32 @saa711x_write(%struct.v4l2_subdev* %114, i32 %115, i32 %125)
  br label %127

127:                                              ; preds = %100, %71
  %128 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %129 = load i32, i32* @R_02_INPUT_CNTL_1, align 4
  %130 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %131 = load i32, i32* @R_02_INPUT_CNTL_1, align 4
  %132 = call i32 @saa711x_read(%struct.v4l2_subdev* %130, i32 %131)
  %133 = sext i32 %132 to i64
  %134 = load i64, i64* %11, align 8
  %135 = and i64 %133, %134
  %136 = load i64, i64* %7, align 8
  %137 = or i64 %135, %136
  %138 = trunc i64 %137 to i32
  %139 = call i32 @saa711x_write(%struct.v4l2_subdev* %128, i32 %129, i32 %138)
  %140 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %141 = load i32, i32* @R_09_LUMA_CNTL, align 4
  %142 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %143 = load i32, i32* @R_09_LUMA_CNTL, align 4
  %144 = call i32 @saa711x_read(%struct.v4l2_subdev* %142, i32 %143)
  %145 = and i32 %144, 127
  %146 = load %struct.saa711x_state*, %struct.saa711x_state** %10, align 8
  %147 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @SAA7115_SVIDEO0, align 8
  %150 = icmp sge i64 %148, %149
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 128, i32 0
  %153 = or i32 %145, %152
  %154 = call i32 @saa711x_write(%struct.v4l2_subdev* %140, i32 %141, i32 %153)
  %155 = load i64, i64* %8, align 8
  %156 = load %struct.saa711x_state*, %struct.saa711x_state** %10, align 8
  %157 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %156, i32 0, i32 2
  store i64 %155, i64* %157, align 8
  %158 = load %struct.saa711x_state*, %struct.saa711x_state** %10, align 8
  %159 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @SAA7114, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %169, label %163

163:                                              ; preds = %127
  %164 = load %struct.saa711x_state*, %struct.saa711x_state** %10, align 8
  %165 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @SAA7115, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %184

169:                                              ; preds = %163, %127
  %170 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %171 = load i32, i32* @R_83_X_PORT_I_O_ENA_AND_OUT_CLK, align 4
  %172 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %173 = load i32, i32* @R_83_X_PORT_I_O_ENA_AND_OUT_CLK, align 4
  %174 = call i32 @saa711x_read(%struct.v4l2_subdev* %172, i32 %173)
  %175 = and i32 %174, 254
  %176 = sext i32 %175 to i64
  %177 = load %struct.saa711x_state*, %struct.saa711x_state** %10, align 8
  %178 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = and i64 %179, 1
  %181 = or i64 %176, %180
  %182 = trunc i64 %181 to i32
  %183 = call i32 @saa711x_write(%struct.v4l2_subdev* %170, i32 %171, i32 %182)
  br label %184

184:                                              ; preds = %169, %163
  %185 = load %struct.saa711x_state*, %struct.saa711x_state** %10, align 8
  %186 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @SAA7111A, align 8
  %189 = icmp sgt i64 %187, %188
  br i1 %189, label %190, label %204

190:                                              ; preds = %184
  %191 = load i64, i64* %9, align 8
  %192 = load i64, i64* @SAA7115_IDQ_IS_DEFAULT, align 8
  %193 = and i64 %191, %192
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %190
  %196 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %197 = load i32, i32* @R_85_I_PORT_SIGNAL_POLAR, align 4
  %198 = call i32 @saa711x_write(%struct.v4l2_subdev* %196, i32 %197, i32 32)
  br label %203

199:                                              ; preds = %190
  %200 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %201 = load i32, i32* @R_85_I_PORT_SIGNAL_POLAR, align 4
  %202 = call i32 @saa711x_write(%struct.v4l2_subdev* %200, i32 %201, i32 33)
  br label %203

203:                                              ; preds = %199, %195
  br label %204

204:                                              ; preds = %203, %184
  store i32 0, i32* %5, align 4
  br label %205

205:                                              ; preds = %204, %70, %55, %48
  %206 = load i32, i32* %5, align 4
  ret i32 %206
}

declare dso_local %struct.saa711x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i8*, i8*) #1

declare dso_local i32 @saa711x_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @saa711x_read(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
