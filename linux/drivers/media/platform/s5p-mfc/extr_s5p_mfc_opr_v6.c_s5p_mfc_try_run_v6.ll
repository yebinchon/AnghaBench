; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_try_run_v6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_try_run_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i32, i32, %struct.s5p_mfc_ctx** }
%struct.s5p_mfc_ctx = type { i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Try run dev: %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Couldn't lock HW.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to unlock hardware.\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"No ctx is scheduled to be run.\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"New context: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Setting new context to %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"ctx->dst_queue_cnt=%d ctx->dpb_count=%d ctx->src_queue_cnt=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"ctx->state=%d\0A\00", align 1
@MFCINST_DECODER = common dso_local global i64 0, align 8
@open_inst_cmd = common dso_local global i32 0, align 4
@close_inst_cmd = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [52 x i8] c"Finished remaining frames after resolution change.\0A\00", align 1
@QUEUE_FREE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"Will re-init the codec`.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@MFCINST_ENCODER = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"invalid context type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_mfc_dev*)* @s5p_mfc_try_run_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_mfc_try_run_v6(%struct.s5p_mfc_dev* %0) #0 {
  %2 = alloca %struct.s5p_mfc_dev*, align 8
  %3 = alloca %struct.s5p_mfc_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %7 = call i32 (i32, i8*, ...) @mfc_debug(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.s5p_mfc_dev* %6)
  %8 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %9 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %8, i32 0, i32 0
  %10 = call i64 @test_and_set_bit(i32 0, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 (i32, i8*, ...) @mfc_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %173

14:                                               ; preds = %1
  %15 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %16 = call i32 @s5p_mfc_get_new_ctx(%struct.s5p_mfc_dev* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %21 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %20, i32 0, i32 0
  %22 = call i64 @test_and_clear_bit(i32 0, i32* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %173

26:                                               ; preds = %19
  %27 = call i32 (i32, i8*, ...) @mfc_debug(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %173

28:                                               ; preds = %14
  %29 = load i32, i32* %4, align 4
  %30 = call i32 (i32, i8*, ...) @mfc_debug(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %29)
  %31 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %32 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %31, i32 0, i32 2
  %33 = load %struct.s5p_mfc_ctx**, %struct.s5p_mfc_ctx*** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %33, i64 %35
  %37 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %36, align 8
  store %struct.s5p_mfc_ctx* %37, %struct.s5p_mfc_ctx** %3, align 8
  %38 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %39 = call i32 (i32, i8*, ...) @mfc_debug(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), %struct.s5p_mfc_ctx* %38)
  %40 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @mfc_debug(i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 %42, i32 %45, i32 %48)
  %50 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %51 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i32, i8*, ...) @mfc_debug(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %52)
  %54 = call i32 (...) @s5p_mfc_clock_on()
  %55 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %56 = call i32 @s5p_mfc_clean_ctx_int_flags(%struct.s5p_mfc_ctx* %55)
  %57 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %58 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MFCINST_DECODER, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %116

62:                                               ; preds = %28
  %63 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %64 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %112 [
    i32 138, label %66
    i32 128, label %69
    i32 133, label %72
    i32 129, label %79
    i32 136, label %86
    i32 135, label %89
    i32 137, label %92
    i32 130, label %98
    i32 131, label %101
    i32 132, label %104
  ]

66:                                               ; preds = %62
  %67 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %68 = call i32 @s5p_mfc_run_dec_last_frames(%struct.s5p_mfc_ctx* %67)
  br label %115

69:                                               ; preds = %62
  %70 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %71 = call i32 @s5p_mfc_run_dec_frame(%struct.s5p_mfc_ctx* %70)
  store i32 %71, i32* %5, align 4
  br label %115

72:                                               ; preds = %62
  %73 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %74 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @open_inst_cmd, align 4
  %77 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %78 = call i32 @s5p_mfc_hw_call(i32 %75, i32 %76, %struct.s5p_mfc_ctx* %77)
  store i32 %78, i32* %5, align 4
  br label %115

79:                                               ; preds = %62
  %80 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %81 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @close_inst_cmd, align 4
  %84 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %85 = call i32 @s5p_mfc_hw_call(i32 %82, i32 %83, %struct.s5p_mfc_ctx* %84)
  store i32 %85, i32* %5, align 4
  br label %115

86:                                               ; preds = %62
  %87 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %88 = call i32 @s5p_mfc_run_init_dec(%struct.s5p_mfc_ctx* %87)
  br label %115

89:                                               ; preds = %62
  %90 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %91 = call i32 @s5p_mfc_run_init_dec_buffers(%struct.s5p_mfc_ctx* %90)
  store i32 %91, i32* %5, align 4
  br label %115

92:                                               ; preds = %62
  %93 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %94 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %95 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @s5p_mfc_set_flush(%struct.s5p_mfc_ctx* %93, i32 %96)
  br label %115

98:                                               ; preds = %62
  %99 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %100 = call i32 @s5p_mfc_run_dec_last_frames(%struct.s5p_mfc_ctx* %99)
  br label %115

101:                                              ; preds = %62
  %102 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %103 = call i32 @s5p_mfc_run_dec_last_frames(%struct.s5p_mfc_ctx* %102)
  br label %115

104:                                              ; preds = %62
  %105 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0))
  %106 = load i32, i32* @QUEUE_FREE, align 4
  %107 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %108 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %110 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %111 = call i32 @s5p_mfc_run_init_dec(%struct.s5p_mfc_ctx* %110)
  br label %115

112:                                              ; preds = %62
  %113 = load i32, i32* @EAGAIN, align 4
  %114 = sub i32 0, %113
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %112, %104, %101, %98, %92, %89, %86, %79, %72, %69, %66
  br label %161

116:                                              ; preds = %28
  %117 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %118 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @MFCINST_ENCODER, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %153

122:                                              ; preds = %116
  %123 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %124 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  switch i32 %125, label %149 [
    i32 138, label %126
    i32 128, label %126
    i32 133, label %129
    i32 129, label %136
    i32 136, label %143
    i32 134, label %146
  ]

126:                                              ; preds = %122, %122
  %127 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %128 = call i32 @s5p_mfc_run_enc_frame(%struct.s5p_mfc_ctx* %127)
  store i32 %128, i32* %5, align 4
  br label %152

129:                                              ; preds = %122
  %130 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %131 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @open_inst_cmd, align 4
  %134 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %135 = call i32 @s5p_mfc_hw_call(i32 %132, i32 %133, %struct.s5p_mfc_ctx* %134)
  store i32 %135, i32* %5, align 4
  br label %152

136:                                              ; preds = %122
  %137 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %138 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @close_inst_cmd, align 4
  %141 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %142 = call i32 @s5p_mfc_hw_call(i32 %139, i32 %140, %struct.s5p_mfc_ctx* %141)
  store i32 %142, i32* %5, align 4
  br label %152

143:                                              ; preds = %122
  %144 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %145 = call i32 @s5p_mfc_run_init_enc(%struct.s5p_mfc_ctx* %144)
  br label %152

146:                                              ; preds = %122
  %147 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %148 = call i32 @s5p_mfc_run_init_enc_buffers(%struct.s5p_mfc_ctx* %147)
  store i32 %148, i32* %5, align 4
  br label %152

149:                                              ; preds = %122
  %150 = load i32, i32* @EAGAIN, align 4
  %151 = sub i32 0, %150
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %149, %146, %143, %136, %129, %126
  br label %160

153:                                              ; preds = %116
  %154 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %155 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i64 %156)
  %158 = load i32, i32* @EAGAIN, align 4
  %159 = sub i32 0, %158
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %153, %152
  br label %161

161:                                              ; preds = %160, %115
  %162 = load i32, i32* %5, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %161
  %165 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %166 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %165, i32 0, i32 0
  %167 = call i64 @test_and_clear_bit(i32 0, i32* %166)
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  %170 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %164
  %172 = call i32 (...) @s5p_mfc_clock_off()
  br label %173

173:                                              ; preds = %12, %24, %26, %171, %161
  ret void
}

declare dso_local i32 @mfc_debug(i32, i8*, ...) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @s5p_mfc_get_new_ctx(%struct.s5p_mfc_dev*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @mfc_err(i8*, ...) #1

declare dso_local i32 @s5p_mfc_clock_on(...) #1

declare dso_local i32 @s5p_mfc_clean_ctx_int_flags(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_run_dec_last_frames(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_run_dec_frame(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_hw_call(i32, i32, %struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_run_init_dec(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_run_init_dec_buffers(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_set_flush(%struct.s5p_mfc_ctx*, i32) #1

declare dso_local i32 @s5p_mfc_run_enc_frame(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_run_init_enc(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_run_init_enc_buffers(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_clock_off(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
