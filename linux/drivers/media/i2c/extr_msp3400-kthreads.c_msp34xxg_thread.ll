; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-kthreads.c_msp34xxg_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-kthreads.c_msp34xxg_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.msp_state = type { i64, i32, i32, i32, i32, i64, i64, i64, i64 }

@msp_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"msp34xxg daemon started\0A\00", align 1
@V4L2_STD_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"msp34xxg thread: sleep\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"msp34xxg thread: wakeup\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"thread: restart scan\0A\00", align 1
@MSP_MODE_EXTERN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"thread: no carrier scan\0A\00", align 1
@msp_standard = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"started autodetect, waiting for result\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"detection still in progress\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"detection still in progress after 10 tries. giving up.\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"detected standard: %s (0x%04x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"thread: exit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msp34xxg_thread(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.msp_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.i2c_client*
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = call i32 @i2c_get_clientdata(%struct.i2c_client* %10)
  %12 = call %struct.msp_state* @to_state(i32 %11)
  store %struct.msp_state* %12, %struct.msp_state** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* @msp_debug, align 4
  %16 = call i32 (i32*, i32, i32, i8*, ...) @dev_dbg_lvl(i32* %14, i32 1, i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @V4L2_STD_ALL, align 4
  %18 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %19 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = call i32 (...) @set_freezable()
  br label %21

21:                                               ; preds = %192, %173, %127, %48, %1
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load i32, i32* @msp_debug, align 4
  %25 = call i32 (i32*, i32, i32, i8*, ...) @dev_dbg_lvl(i32* %23, i32 2, i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %27 = call i64 @msp_sleep(%struct.msp_state* %26, i32 -1)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* @msp_debug, align 4
  %31 = call i32 (i32*, i32, i32, i8*, ...) @dev_dbg_lvl(i32* %29, i32 2, i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %190, %104, %21
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load i32, i32* @msp_debug, align 4
  %36 = call i32 (i32*, i32, i32, i8*, ...) @dev_dbg_lvl(i32* %34, i32 1, i32 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %38 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %37, i32 0, i32 8
  store i64 0, i64* %38, align 8
  %39 = call i64 (...) @kthread_should_stop()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %193

42:                                               ; preds = %32
  %43 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %44 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MSP_MODE_EXTERN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = load i32, i32* @msp_debug, align 4
  %52 = call i32 (i32*, i32, i32, i8*, ...) @dev_dbg_lvl(i32* %50, i32 1, i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %53 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %54 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %53, i32 0, i32 7
  store i64 0, i64* %54, align 8
  %55 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %56 = call i32 @msp_update_volume(%struct.msp_state* %55)
  br label %21

57:                                               ; preds = %42
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = call i32 @msp34xxg_reset(%struct.i2c_client* %58)
  %60 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %61 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %78

65:                                               ; preds = %57
  %66 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %67 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @msp_standard, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %76

74:                                               ; preds = %70, %65
  %75 = load i32, i32* @msp_standard, align 4
  br label %76

76:                                               ; preds = %74, %73
  %77 = phi i32 [ 32, %73 ], [ %75, %74 ]
  br label %78

78:                                               ; preds = %76, %64
  %79 = phi i32 [ 64, %64 ], [ %77, %76 ]
  %80 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %81 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %84 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @msp_write_dem(%struct.i2c_client* %82, i32 32, i32 %85)
  %87 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %88 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  br label %133

92:                                               ; preds = %78
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = load i32, i32* @msp_debug, align 4
  %96 = call i32 (i32*, i32, i32, i8*, ...) @dev_dbg_lvl(i32* %94, i32 1, i32 %95, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %119, %92
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %98, 10
  br i1 %99, label %100, label %122

100:                                              ; preds = %97
  %101 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %102 = call i64 @msp_sleep(%struct.msp_state* %101, i32 100)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %32

105:                                              ; preds = %100
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = call i32 @msp_read_dem(%struct.i2c_client* %106, i32 126)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %108, 2047
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %113 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  br label %122

114:                                              ; preds = %105
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 0
  %117 = load i32, i32* @msp_debug, align 4
  %118 = call i32 (i32*, i32, i32, i8*, ...) @dev_dbg_lvl(i32* %116, i32 2, i32 %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %97

122:                                              ; preds = %110, %97
  %123 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %124 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %129 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %128, i32 0, i32 0
  %130 = load i32, i32* @msp_debug, align 4
  %131 = call i32 (i32*, i32, i32, i8*, ...) @dev_dbg_lvl(i32* %129, i32 1, i32 %130, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  br label %21

132:                                              ; preds = %122
  br label %133

133:                                              ; preds = %132, %91
  %134 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %135 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %134, i32 0, i32 0
  %136 = load i32, i32* @msp_debug, align 4
  %137 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %138 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @msp_standard_std_name(i32 %139)
  %141 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %142 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i32*, i32, i32, i8*, ...) @dev_dbg_lvl(i32* %135, i32 1, i32 %136, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %140, i32 %143)
  %145 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %146 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @msp_standard_std(i32 %147)
  %149 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %150 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 4
  %151 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %152 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 9
  br i1 %154, label %155, label %158

155:                                              ; preds = %133
  %156 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %157 = call i64 @msp_write_dsp(%struct.i2c_client* %156, i32 14, i32 31744)
  br label %158

158:                                              ; preds = %155, %133
  %159 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %160 = call i32 @msp_update_volume(%struct.msp_state* %159)
  %161 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %162 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %163 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @msp_write_dsp(%struct.i2c_client* %161, i32 19, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %158
  store i32 -1, i32* %2, align 4
  br label %198

168:                                              ; preds = %158
  %169 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %170 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 32
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %21

174:                                              ; preds = %168
  %175 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %176 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %175, i32 0, i32 3
  store i32 1, i32* %176, align 8
  %177 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %178 = call i32 @watch_stereo(%struct.i2c_client* %177)
  br label %179

179:                                              ; preds = %191, %174
  %180 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %181 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %179
  %185 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %186 = call i32 @watch_stereo(%struct.i2c_client* %185)
  %187 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %188 = call i64 @msp_sleep(%struct.msp_state* %187, i32 5000)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  br label %32

191:                                              ; preds = %184
  br label %179

192:                                              ; preds = %179
  br label %21

193:                                              ; preds = %41
  %194 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %195 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %194, i32 0, i32 0
  %196 = load i32, i32* @msp_debug, align 4
  %197 = call i32 (i32*, i32, i32, i8*, ...) @dev_dbg_lvl(i32* %195, i32 1, i32 %196, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %198

198:                                              ; preds = %193, %167
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local %struct.msp_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg_lvl(i32*, i32, i32, i8*, ...) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i64 @msp_sleep(%struct.msp_state*, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @msp_update_volume(%struct.msp_state*) #1

declare dso_local i32 @msp34xxg_reset(%struct.i2c_client*) #1

declare dso_local i32 @msp_write_dem(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msp_read_dem(%struct.i2c_client*, i32) #1

declare dso_local i32 @msp_standard_std_name(i32) #1

declare dso_local i32 @msp_standard_std(i32) #1

declare dso_local i64 @msp_write_dsp(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @watch_stereo(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
