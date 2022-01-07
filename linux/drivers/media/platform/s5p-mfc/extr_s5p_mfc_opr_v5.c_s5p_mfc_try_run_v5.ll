; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_try_run_v5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_try_run_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i32, i32, %struct.s5p_mfc_ctx**, i32 }
%struct.s5p_mfc_ctx = type { i64, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Entering suspend so do not schedule any jobs\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Couldn't lock HW\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to unlock hardware\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"No ctx is scheduled to be run\0A\00", align 1
@MFCINST_DECODER = common dso_local global i64 0, align 8
@MFC_DEC_LAST_FRAME = common dso_local global i32 0, align 4
@MFC_DEC_FRAME = common dso_local global i32 0, align 4
@open_inst_cmd = common dso_local global i32 0, align 4
@close_inst_cmd = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"head parsed\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Finished remaining frames after resolution change\0A\00", align 1
@QUEUE_FREE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Will re-init the codec\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@MFCINST_ENCODER = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"Invalid context type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_mfc_dev*)* @s5p_mfc_try_run_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_mfc_try_run_v5(%struct.s5p_mfc_dev* %0) #0 {
  %2 = alloca %struct.s5p_mfc_dev*, align 8
  %3 = alloca %struct.s5p_mfc_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %7 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %6, i32 0, i32 3
  %8 = call i64 @test_bit(i32 0, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @mfc_debug(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %157

12:                                               ; preds = %1
  %13 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %14 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %13, i32 0, i32 0
  %15 = call i64 @test_and_set_bit(i32 0, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @mfc_debug(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %157

19:                                               ; preds = %12
  %20 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %21 = call i32 @s5p_mfc_get_new_ctx(%struct.s5p_mfc_dev* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %26 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %25, i32 0, i32 0
  %27 = call i64 @test_and_clear_bit(i32 0, i32* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %157

31:                                               ; preds = %24
  %32 = call i32 @mfc_debug(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %157

33:                                               ; preds = %19
  %34 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %35 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %34, i32 0, i32 2
  %36 = load %struct.s5p_mfc_ctx**, %struct.s5p_mfc_ctx*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %36, i64 %38
  %40 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %39, align 8
  store %struct.s5p_mfc_ctx* %40, %struct.s5p_mfc_ctx** %3, align 8
  %41 = call i32 (...) @s5p_mfc_clock_on()
  %42 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %43 = call i32 @s5p_mfc_clean_ctx_int_flags(%struct.s5p_mfc_ctx* %42)
  %44 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MFCINST_DECODER, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %103

49:                                               ; preds = %33
  %50 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %51 = call i32 @s5p_mfc_set_dec_desc_buffer(%struct.s5p_mfc_ctx* %50)
  %52 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %99 [
    i32 136, label %55
    i32 128, label %59
    i32 133, label %63
    i32 129, label %70
    i32 135, label %77
    i32 134, label %80
    i32 130, label %84
    i32 131, label %87
    i32 132, label %91
  ]

55:                                               ; preds = %49
  %56 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %57 = load i32, i32* @MFC_DEC_LAST_FRAME, align 4
  %58 = call i32 @s5p_mfc_run_dec_frame(%struct.s5p_mfc_ctx* %56, i32 %57)
  br label %102

59:                                               ; preds = %49
  %60 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %61 = load i32, i32* @MFC_DEC_FRAME, align 4
  %62 = call i32 @s5p_mfc_run_dec_frame(%struct.s5p_mfc_ctx* %60, i32 %61)
  store i32 %62, i32* %5, align 4
  br label %102

63:                                               ; preds = %49
  %64 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %65 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @open_inst_cmd, align 4
  %68 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %69 = call i32 @s5p_mfc_hw_call(i32 %66, i32 %67, %struct.s5p_mfc_ctx* %68)
  store i32 %69, i32* %5, align 4
  br label %102

70:                                               ; preds = %49
  %71 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %72 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @close_inst_cmd, align 4
  %75 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %76 = call i32 @s5p_mfc_hw_call(i32 %73, i32 %74, %struct.s5p_mfc_ctx* %75)
  store i32 %76, i32* %5, align 4
  br label %102

77:                                               ; preds = %49
  %78 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %79 = call i32 @s5p_mfc_run_init_dec(%struct.s5p_mfc_ctx* %78)
  br label %102

80:                                               ; preds = %49
  %81 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %82 = call i32 @s5p_mfc_run_init_dec_buffers(%struct.s5p_mfc_ctx* %81)
  store i32 %82, i32* %5, align 4
  %83 = call i32 @mfc_debug(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %102

84:                                               ; preds = %49
  %85 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %86 = call i32 @s5p_mfc_run_res_change(%struct.s5p_mfc_ctx* %85)
  br label %102

87:                                               ; preds = %49
  %88 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %89 = load i32, i32* @MFC_DEC_FRAME, align 4
  %90 = call i32 @s5p_mfc_run_dec_frame(%struct.s5p_mfc_ctx* %88, i32 %89)
  br label %102

91:                                               ; preds = %49
  %92 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %93 = load i32, i32* @QUEUE_FREE, align 4
  %94 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %95 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %97 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %98 = call i32 @s5p_mfc_run_init_dec(%struct.s5p_mfc_ctx* %97)
  br label %102

99:                                               ; preds = %49
  %100 = load i32, i32* @EAGAIN, align 4
  %101 = sub i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %99, %91, %87, %84, %80, %77, %70, %63, %59, %55
  br label %145

103:                                              ; preds = %33
  %104 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %105 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @MFCINST_ENCODER, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %137

109:                                              ; preds = %103
  %110 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %111 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  switch i32 %112, label %133 [
    i32 136, label %113
    i32 128, label %113
    i32 133, label %116
    i32 129, label %123
    i32 135, label %130
  ]

113:                                              ; preds = %109, %109
  %114 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %115 = call i32 @s5p_mfc_run_enc_frame(%struct.s5p_mfc_ctx* %114)
  store i32 %115, i32* %5, align 4
  br label %136

116:                                              ; preds = %109
  %117 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %118 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @open_inst_cmd, align 4
  %121 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %122 = call i32 @s5p_mfc_hw_call(i32 %119, i32 %120, %struct.s5p_mfc_ctx* %121)
  store i32 %122, i32* %5, align 4
  br label %136

123:                                              ; preds = %109
  %124 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %125 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @close_inst_cmd, align 4
  %128 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %129 = call i32 @s5p_mfc_hw_call(i32 %126, i32 %127, %struct.s5p_mfc_ctx* %128)
  store i32 %129, i32* %5, align 4
  br label %136

130:                                              ; preds = %109
  %131 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %132 = call i32 @s5p_mfc_run_init_enc(%struct.s5p_mfc_ctx* %131)
  br label %136

133:                                              ; preds = %109
  %134 = load i32, i32* @EAGAIN, align 4
  %135 = sub i32 0, %134
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %133, %130, %123, %116, %113
  br label %144

137:                                              ; preds = %103
  %138 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %139 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 %140)
  %142 = load i32, i32* @EAGAIN, align 4
  %143 = sub i32 0, %142
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %137, %136
  br label %145

145:                                              ; preds = %144, %102
  %146 = load i32, i32* %5, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %150 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %149, i32 0, i32 0
  %151 = call i64 @test_and_clear_bit(i32 0, i32* %150)
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %148
  %156 = call i32 (...) @s5p_mfc_clock_off()
  br label %157

157:                                              ; preds = %10, %17, %29, %31, %155, %145
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mfc_debug(i32, i8*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @s5p_mfc_get_new_ctx(%struct.s5p_mfc_dev*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @mfc_err(i8*, ...) #1

declare dso_local i32 @s5p_mfc_clock_on(...) #1

declare dso_local i32 @s5p_mfc_clean_ctx_int_flags(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_set_dec_desc_buffer(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_run_dec_frame(%struct.s5p_mfc_ctx*, i32) #1

declare dso_local i32 @s5p_mfc_hw_call(i32, i32, %struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_run_init_dec(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_run_init_dec_buffers(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_run_res_change(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_run_enc_frame(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_run_init_enc(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_clock_off(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
