; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_write_platform_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_write_platform_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa711x_state = type { i64, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }
%struct.saa7115_platform_data = type { i32*, i32*, i32*, i32*, i64*, i64* }

@GM7113C = common dso_local global i64 0, align 8
@SAA7113 = common dso_local global i64 0, align 8
@R_08_SYNC_CNTL = common dso_local global i32 0, align 4
@SAA7113_R_08_HTC_MASK = common dso_local global i32 0, align 4
@SAA7113_R_08_HTC_OFFSET = common dso_local global i32 0, align 4
@R_10_CHROMA_CNTL_2 = common dso_local global i32 0, align 4
@SAA7113_R_10_VRLN_MASK = common dso_local global i32 0, align 4
@SAA7113_R_10_VRLN_OFFSET = common dso_local global i32 0, align 4
@SAA7113_R_10_OFTS_MASK = common dso_local global i32 0, align 4
@SAA7113_R_10_OFTS_OFFSET = common dso_local global i32 0, align 4
@R_12_RT_SIGNAL_CNTL = common dso_local global i32 0, align 4
@SAA7113_R_12_RTS0_MASK = common dso_local global i32 0, align 4
@SAA7113_R_12_RTS0_OFFSET = common dso_local global i32 0, align 4
@SAA7113_RTS_DOT_IN = common dso_local global i32 0, align 4
@SAA7113_R_12_RTS1_MASK = common dso_local global i32 0, align 4
@SAA7113_R_12_RTS1_OFFSET = common dso_local global i32 0, align 4
@R_13_RT_X_PORT_OUT_CNTL = common dso_local global i32 0, align 4
@SAA7113_R_13_ADLSB_MASK = common dso_local global i32 0, align 4
@SAA7113_R_13_ADLSB_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa711x_state*, %struct.saa7115_platform_data*)* @saa711x_write_platform_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saa711x_write_platform_data(%struct.saa711x_state* %0, %struct.saa7115_platform_data* %1) #0 {
  %3 = alloca %struct.saa711x_state*, align 8
  %4 = alloca %struct.saa7115_platform_data*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  store %struct.saa711x_state* %0, %struct.saa711x_state** %3, align 8
  store %struct.saa7115_platform_data* %1, %struct.saa7115_platform_data** %4, align 8
  %7 = load %struct.saa711x_state*, %struct.saa711x_state** %3, align 8
  %8 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %7, i32 0, i32 1
  store %struct.v4l2_subdev* %8, %struct.v4l2_subdev** %5, align 8
  %9 = load %struct.saa711x_state*, %struct.saa711x_state** %3, align 8
  %10 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @GM7113C, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.saa711x_state*, %struct.saa711x_state** %3, align 8
  %16 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SAA7113, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %185

21:                                               ; preds = %14, %2
  %22 = load %struct.saa7115_platform_data*, %struct.saa7115_platform_data** %4, align 8
  %23 = getelementptr inbounds %struct.saa7115_platform_data, %struct.saa7115_platform_data* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %28 = load i32, i32* @R_08_SYNC_CNTL, align 4
  %29 = call i32 @saa711x_read(%struct.v4l2_subdev* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @SAA7113_R_08_HTC_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load %struct.saa7115_platform_data*, %struct.saa7115_platform_data** %4, align 8
  %35 = getelementptr inbounds %struct.saa7115_platform_data, %struct.saa7115_platform_data* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SAA7113_R_08_HTC_OFFSET, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %43 = load i32, i32* @R_08_SYNC_CNTL, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @saa711x_write(%struct.v4l2_subdev* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %26, %21
  %47 = load %struct.saa7115_platform_data*, %struct.saa7115_platform_data** %4, align 8
  %48 = getelementptr inbounds %struct.saa7115_platform_data, %struct.saa7115_platform_data* %47, i32 0, i32 5
  %49 = load i64*, i64** %48, align 8
  %50 = icmp ne i64* %49, null
  br i1 %50, label %51, label %74

51:                                               ; preds = %46
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %53 = load i32, i32* @R_10_CHROMA_CNTL_2, align 4
  %54 = call i32 @saa711x_read(%struct.v4l2_subdev* %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* @SAA7113_R_10_VRLN_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load %struct.saa7115_platform_data*, %struct.saa7115_platform_data** %4, align 8
  %60 = getelementptr inbounds %struct.saa7115_platform_data, %struct.saa7115_platform_data* %59, i32 0, i32 5
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %51
  %65 = load i32, i32* @SAA7113_R_10_VRLN_OFFSET, align 4
  %66 = shl i32 1, %65
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %64, %51
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %71 = load i32, i32* @R_10_CHROMA_CNTL_2, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @saa711x_write(%struct.v4l2_subdev* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %46
  %75 = load %struct.saa7115_platform_data*, %struct.saa7115_platform_data** %4, align 8
  %76 = getelementptr inbounds %struct.saa7115_platform_data, %struct.saa7115_platform_data* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %99

79:                                               ; preds = %74
  %80 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %81 = load i32, i32* @R_10_CHROMA_CNTL_2, align 4
  %82 = call i32 @saa711x_read(%struct.v4l2_subdev* %80, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* @SAA7113_R_10_OFTS_MASK, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = load %struct.saa7115_platform_data*, %struct.saa7115_platform_data** %4, align 8
  %88 = getelementptr inbounds %struct.saa7115_platform_data, %struct.saa7115_platform_data* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SAA7113_R_10_OFTS_OFFSET, align 4
  %92 = shl i32 %90, %91
  %93 = load i32, i32* %6, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %6, align 4
  %95 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %96 = load i32, i32* @R_10_CHROMA_CNTL_2, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @saa711x_write(%struct.v4l2_subdev* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %79, %74
  %100 = load %struct.saa7115_platform_data*, %struct.saa7115_platform_data** %4, align 8
  %101 = getelementptr inbounds %struct.saa7115_platform_data, %struct.saa7115_platform_data* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %132

104:                                              ; preds = %99
  %105 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %106 = load i32, i32* @R_12_RT_SIGNAL_CNTL, align 4
  %107 = call i32 @saa711x_read(%struct.v4l2_subdev* %105, i32 %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* @SAA7113_R_12_RTS0_MASK, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %6, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %6, align 4
  %112 = load %struct.saa7115_platform_data*, %struct.saa7115_platform_data** %4, align 8
  %113 = getelementptr inbounds %struct.saa7115_platform_data, %struct.saa7115_platform_data* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @SAA7113_R_12_RTS0_OFFSET, align 4
  %117 = shl i32 %115, %116
  %118 = load i32, i32* %6, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %6, align 4
  %120 = load %struct.saa7115_platform_data*, %struct.saa7115_platform_data** %4, align 8
  %121 = getelementptr inbounds %struct.saa7115_platform_data, %struct.saa7115_platform_data* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @SAA7113_RTS_DOT_IN, align 4
  %125 = icmp eq i32 %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @WARN_ON(i32 %126)
  %128 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %129 = load i32, i32* @R_12_RT_SIGNAL_CNTL, align 4
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @saa711x_write(%struct.v4l2_subdev* %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %104, %99
  %133 = load %struct.saa7115_platform_data*, %struct.saa7115_platform_data** %4, align 8
  %134 = getelementptr inbounds %struct.saa7115_platform_data, %struct.saa7115_platform_data* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %157

137:                                              ; preds = %132
  %138 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %139 = load i32, i32* @R_12_RT_SIGNAL_CNTL, align 4
  %140 = call i32 @saa711x_read(%struct.v4l2_subdev* %138, i32 %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* @SAA7113_R_12_RTS1_MASK, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %6, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %6, align 4
  %145 = load %struct.saa7115_platform_data*, %struct.saa7115_platform_data** %4, align 8
  %146 = getelementptr inbounds %struct.saa7115_platform_data, %struct.saa7115_platform_data* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @SAA7113_R_12_RTS1_OFFSET, align 4
  %150 = shl i32 %148, %149
  %151 = load i32, i32* %6, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %6, align 4
  %153 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %154 = load i32, i32* @R_12_RT_SIGNAL_CNTL, align 4
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @saa711x_write(%struct.v4l2_subdev* %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %137, %132
  %158 = load %struct.saa7115_platform_data*, %struct.saa7115_platform_data** %4, align 8
  %159 = getelementptr inbounds %struct.saa7115_platform_data, %struct.saa7115_platform_data* %158, i32 0, i32 4
  %160 = load i64*, i64** %159, align 8
  %161 = icmp ne i64* %160, null
  br i1 %161, label %162, label %185

162:                                              ; preds = %157
  %163 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %164 = load i32, i32* @R_13_RT_X_PORT_OUT_CNTL, align 4
  %165 = call i32 @saa711x_read(%struct.v4l2_subdev* %163, i32 %164)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* @SAA7113_R_13_ADLSB_MASK, align 4
  %167 = xor i32 %166, -1
  %168 = load i32, i32* %6, align 4
  %169 = and i32 %168, %167
  store i32 %169, i32* %6, align 4
  %170 = load %struct.saa7115_platform_data*, %struct.saa7115_platform_data** %4, align 8
  %171 = getelementptr inbounds %struct.saa7115_platform_data, %struct.saa7115_platform_data* %170, i32 0, i32 4
  %172 = load i64*, i64** %171, align 8
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %162
  %176 = load i32, i32* @SAA7113_R_13_ADLSB_OFFSET, align 4
  %177 = shl i32 1, %176
  %178 = load i32, i32* %6, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %175, %162
  %181 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %182 = load i32, i32* @R_13_RT_X_PORT_OUT_CNTL, align 4
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @saa711x_write(%struct.v4l2_subdev* %181, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %20, %180, %157
  ret void
}

declare dso_local i32 @saa711x_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @saa711x_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
