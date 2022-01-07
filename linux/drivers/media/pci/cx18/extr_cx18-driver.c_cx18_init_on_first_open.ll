; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-driver.c_cx18_init_on_first_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-driver.c_cx18_init_on_first_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32, i32, i32, i32, i32 }
%struct.v4l2_frequency = type { i32, i32, i64 }
%struct.cx18_open_id = type { %struct.cx18* }

@CX18_F_I_FAILED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@CX18_F_I_INITED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Retry loading firmware\0A\00", align 1
@CX18_F_I_LOADED_FW = common dso_local global i32 0, align 4
@CX18_APU_START = common dso_local global i32 0, align 4
@CX18_APU_ENCODING_METHOD_MPEG = common dso_local global i32 0, align 4
@CX18_APU_RESETAI = common dso_local global i32 0, align 4
@CX18_APU_STOP = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@load_fw = common dso_local global i32 0, align 4
@V4L2_TUNER_ANALOG_TV = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M_JP = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M = common dso_local global i32 0, align 4
@V4L2_STD_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_init_on_first_open(%struct.cx18* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_frequency, align 8
  %7 = alloca %struct.cx18_open_id, align 8
  %8 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %3, align 8
  store i32 3, i32* %5, align 4
  %9 = load %struct.cx18*, %struct.cx18** %3, align 8
  %10 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %7, i32 0, i32 0
  store %struct.cx18* %9, %struct.cx18** %10, align 8
  %11 = load i32, i32* @CX18_F_I_FAILED, align 4
  %12 = load %struct.cx18*, %struct.cx18** %3, align 8
  %13 = getelementptr inbounds %struct.cx18, %struct.cx18* %12, i32 0, i32 4
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %164

19:                                               ; preds = %1
  %20 = load i32, i32* @CX18_F_I_INITED, align 4
  %21 = load %struct.cx18*, %struct.cx18** %3, align 8
  %22 = getelementptr inbounds %struct.cx18, %struct.cx18* %21, i32 0, i32 4
  %23 = call i64 @test_and_set_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %164

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %41, %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %5, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.cx18*, %struct.cx18** %3, align 8
  %33 = call i64 @cx18_firmware_init(%struct.cx18* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %42

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 @CX18_WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  br label %27

42:                                               ; preds = %35, %27
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32, i32* @CX18_F_I_FAILED, align 4
  %47 = load %struct.cx18*, %struct.cx18** %3, align 8
  %48 = getelementptr inbounds %struct.cx18, %struct.cx18* %47, i32 0, i32 4
  %49 = call i32 @set_bit(i32 %46, i32* %48)
  %50 = load i32, i32* @ENXIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %164

52:                                               ; preds = %42
  %53 = load i32, i32* @CX18_F_I_LOADED_FW, align 4
  %54 = load %struct.cx18*, %struct.cx18** %3, align 8
  %55 = getelementptr inbounds %struct.cx18, %struct.cx18* %54, i32 0, i32 4
  %56 = call i32 @set_bit(i32 %53, i32* %55)
  %57 = load %struct.cx18*, %struct.cx18** %3, align 8
  %58 = load i32, i32* @CX18_APU_START, align 4
  %59 = load i32, i32* @CX18_APU_ENCODING_METHOD_MPEG, align 4
  %60 = or i32 %59, 185
  %61 = call i32 (%struct.cx18*, i32, i32, ...) @cx18_vapi(%struct.cx18* %57, i32 %58, i32 2, i32 %60, i32 0)
  %62 = load %struct.cx18*, %struct.cx18** %3, align 8
  %63 = load i32, i32* @CX18_APU_RESETAI, align 4
  %64 = call i32 (%struct.cx18*, i32, i32, ...) @cx18_vapi(%struct.cx18* %62, i32 %63, i32 0)
  %65 = load %struct.cx18*, %struct.cx18** %3, align 8
  %66 = load i32, i32* @CX18_APU_STOP, align 4
  %67 = load i32, i32* @CX18_APU_ENCODING_METHOD_MPEG, align 4
  %68 = call i32 (%struct.cx18*, i32, i32, ...) @cx18_vapi(%struct.cx18* %65, i32 %66, i32 1, i32 %67)
  store i32 3, i32* %5, align 4
  br label %69

69:                                               ; preds = %83, %52
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %5, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = load %struct.cx18*, %struct.cx18** %3, align 8
  %75 = call i64 @cx18_firmware_init(%struct.cx18* %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %84

78:                                               ; preds = %73
  %79 = load i32, i32* %5, align 4
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = call i32 @CX18_WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %78
  br label %69

84:                                               ; preds = %77, %69
  %85 = load i32, i32* %5, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32, i32* @CX18_F_I_FAILED, align 4
  %89 = load %struct.cx18*, %struct.cx18** %3, align 8
  %90 = getelementptr inbounds %struct.cx18, %struct.cx18* %89, i32 0, i32 4
  %91 = call i32 @set_bit(i32 %88, i32* %90)
  %92 = load i32, i32* @ENXIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %164

94:                                               ; preds = %84
  %95 = load %struct.cx18*, %struct.cx18** %3, align 8
  %96 = load i32, i32* @CX18_APU_START, align 4
  %97 = load i32, i32* @CX18_APU_ENCODING_METHOD_MPEG, align 4
  %98 = or i32 %97, 185
  %99 = call i32 (%struct.cx18*, i32, i32, ...) @cx18_vapi(%struct.cx18* %95, i32 %96, i32 2, i32 %98, i32 0)
  %100 = load %struct.cx18*, %struct.cx18** %3, align 8
  %101 = load i32, i32* @CX18_APU_RESETAI, align 4
  %102 = call i32 (%struct.cx18*, i32, i32, ...) @cx18_vapi(%struct.cx18* %100, i32 %101, i32 0)
  %103 = load %struct.cx18*, %struct.cx18** %3, align 8
  %104 = load i32, i32* @CX18_APU_STOP, align 4
  %105 = load i32, i32* @CX18_APU_ENCODING_METHOD_MPEG, align 4
  %106 = call i32 (%struct.cx18*, i32, i32, ...) @cx18_vapi(%struct.cx18* %103, i32 %104, i32 1, i32 %105)
  %107 = load %struct.cx18*, %struct.cx18** %3, align 8
  %108 = getelementptr inbounds %struct.cx18, %struct.cx18* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @core, align 4
  %111 = load i32, i32* @load_fw, align 4
  %112 = call i32 @v4l2_subdev_call(i32 %109, i32 %110, i32 %111)
  %113 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %6, i32 0, i32 2
  store i64 0, i64* %113, align 8
  %114 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  %115 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %6, i32 0, i32 1
  store i32 %114, i32* %115, align 4
  %116 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %6, i32 0, i32 0
  store i32 6400, i32* %116, align 8
  %117 = load %struct.cx18*, %struct.cx18** %3, align 8
  %118 = getelementptr inbounds %struct.cx18, %struct.cx18* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @V4L2_STD_NTSC_M_JP, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %94
  %123 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %6, i32 0, i32 0
  store i32 1460, i32* %123, align 8
  br label %134

124:                                              ; preds = %94
  %125 = load %struct.cx18*, %struct.cx18** %3, align 8
  %126 = getelementptr inbounds %struct.cx18, %struct.cx18* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @V4L2_STD_NTSC_M, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %6, i32 0, i32 0
  store i32 1076, i32* %132, align 8
  br label %133

133:                                              ; preds = %131, %124
  br label %134

134:                                              ; preds = %133, %122
  %135 = load %struct.cx18*, %struct.cx18** %3, align 8
  %136 = getelementptr inbounds %struct.cx18, %struct.cx18* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %4, align 4
  %138 = load %struct.cx18*, %struct.cx18** %3, align 8
  %139 = getelementptr inbounds %struct.cx18, %struct.cx18* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @cx18_s_input(i32* null, %struct.cx18_open_id* %7, i32 %142)
  %144 = load %struct.cx18*, %struct.cx18** %3, align 8
  %145 = getelementptr inbounds %struct.cx18, %struct.cx18* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  %148 = load %struct.cx18*, %struct.cx18** %3, align 8
  %149 = getelementptr inbounds %struct.cx18, %struct.cx18* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @V4L2_STD_ALL, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %134
  %154 = load i32, i32* @V4L2_STD_NTSC_M, align 4
  br label %159

155:                                              ; preds = %134
  %156 = load %struct.cx18*, %struct.cx18** %3, align 8
  %157 = getelementptr inbounds %struct.cx18, %struct.cx18* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  br label %159

159:                                              ; preds = %155, %153
  %160 = phi i32 [ %154, %153 ], [ %158, %155 ]
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = call i32 @cx18_s_std(i32* null, %struct.cx18_open_id* %7, i32 %161)
  %163 = call i32 @cx18_s_frequency(i32* null, %struct.cx18_open_id* %7, %struct.v4l2_frequency* %6)
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %159, %87, %45, %25, %16
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @cx18_firmware_init(%struct.cx18*) #1

declare dso_local i32 @CX18_WARN(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cx18_vapi(%struct.cx18*, i32, i32, ...) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32) #1

declare dso_local i32 @cx18_s_input(i32*, %struct.cx18_open_id*, i32) #1

declare dso_local i32 @cx18_s_std(i32*, %struct.cx18_open_id*, i32) #1

declare dso_local i32 @cx18_s_frequency(i32*, %struct.cx18_open_id*, %struct.v4l2_frequency*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
