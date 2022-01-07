; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc.c_s5p_mfc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc.c_s5p_mfc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i64, i8*, i32, i32, i32, i32, %struct.s5p_mfc_ctx**, i32 }
%struct.s5p_mfc_ctx = type { i32, i32, i32, i32, i32, i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.s5p_mfc_ctx*)* }

@get_int_reason = common dso_local global i32 0, align 4
@get_int_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Int reason: %d (err: %08x)\0A\00", align 1
@MFCINST_RUNNING = common dso_local global i32 0, align 4
@err_dec = common dso_local global i32 0, align 4
@S5P_FIMV_ERR_NO_VALID_SEQ_HDR = common dso_local global i32 0, align 4
@S5P_FIMV_ERR_INCOMPLETE_FRAME = common dso_local global i32 0, align 4
@S5P_FIMV_ERR_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"post_frame_start() failed\0A\00", align 1
@MFCINST_FINISHING = common dso_local global i32 0, align 4
@clear_int_flags = common dso_local global i32 0, align 4
@try_run = common dso_local global i32 0, align 4
@get_inst_no = common dso_local global i32 0, align 4
@MFCINST_GOT_INST = common dso_local global i32 0, align 4
@MFC_NO_INSTANCE_SET = common dso_local global i8* null, align 8
@MFCINST_FREE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Unknown int reason\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Failed to unlock hw\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Exit via irq_cleanup_hw\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @s5p_mfc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.s5p_mfc_dev*, align 8
  %7 = alloca %struct.s5p_mfc_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.s5p_mfc_dev*
  store %struct.s5p_mfc_dev* %11, %struct.s5p_mfc_dev** %6, align 8
  %12 = call i32 (...) @mfc_debug_enter()
  %13 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %14 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %13, i32 0, i32 7
  %15 = call i32 @atomic_set(i32* %14, i32 0)
  %16 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %17 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %16, i32 0, i32 2
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %20 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %19, i32 0, i32 6
  %21 = load %struct.s5p_mfc_ctx**, %struct.s5p_mfc_ctx*** %20, align 8
  %22 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %23 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %21, i64 %24
  %26 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %25, align 8
  store %struct.s5p_mfc_ctx* %26, %struct.s5p_mfc_ctx** %7, align 8
  %27 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %28 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @get_int_reason, align 4
  %31 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %32 = call i8* (i32, i32, ...) @s5p_mfc_hw_call(i32 %29, i32 %30, %struct.s5p_mfc_dev* %31)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %35 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @get_int_err, align 4
  %38 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %39 = call i8* (i32, i32, ...) @s5p_mfc_hw_call(i32 %36, i32 %37, %struct.s5p_mfc_dev* %38)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 (i32, i8*, ...) @mfc_debug(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  switch i32 %44, label %228 [
    i32 138, label %45
    i32 130, label %89
    i32 137, label %89
    i32 136, label %89
    i32 132, label %157
    i32 133, label %162
    i32 141, label %174
    i32 129, label %181
    i32 135, label %181
    i32 131, label %181
    i32 128, label %181
    i32 134, label %204
    i32 140, label %209
    i32 139, label %224
  ]

45:                                               ; preds = %2
  %46 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %47 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @MFCINST_RUNNING, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %79

51:                                               ; preds = %45
  %52 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %53 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @err_dec, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i8* (i32, i32, ...) @s5p_mfc_hw_call(i32 %54, i32 %55, i32 %56)
  %58 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %59 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = icmp uge i8* %57, %60
  br i1 %61, label %74, label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @S5P_FIMV_ERR_NO_VALID_SEQ_HDR, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @S5P_FIMV_ERR_INCOMPLETE_FRAME, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @S5P_FIMV_ERR_TIMEOUT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70, %66, %62, %51
  %75 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @s5p_mfc_handle_frame(%struct.s5p_mfc_ctx* %75, i32 %76, i32 %77)
  br label %85

79:                                               ; preds = %70, %45
  %80 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %81 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @s5p_mfc_handle_error(%struct.s5p_mfc_dev* %80, %struct.s5p_mfc_ctx* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %79, %74
  %86 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %87 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %86, i32 0, i32 5
  %88 = call i32 @clear_bit(i32 0, i32* %87)
  br label %236

89:                                               ; preds = %2, %2, %2
  %90 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %91 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %90, i32 0, i32 7
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32 (%struct.s5p_mfc_ctx*)*, i32 (%struct.s5p_mfc_ctx*)** %93, align 8
  %95 = icmp ne i32 (%struct.s5p_mfc_ctx*)* %94, null
  br i1 %95, label %96, label %151

96:                                               ; preds = %89
  %97 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %98 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %97, i32 0, i32 7
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32 (%struct.s5p_mfc_ctx*)*, i32 (%struct.s5p_mfc_ctx*)** %100, align 8
  %102 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %103 = call i32 %101(%struct.s5p_mfc_ctx* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = call i32 @mfc_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %96
  %108 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %109 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @MFCINST_FINISHING, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %107
  %114 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %115 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %114, i32 0, i32 6
  %116 = call i32 @list_empty(i32* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %113
  %119 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %120 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @clear_int_flags, align 4
  %123 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %124 = call i8* (i32, i32, ...) @s5p_mfc_hw_call(i32 %121, i32 %122, %struct.s5p_mfc_dev* %123)
  %125 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %126 = call i32 @s5p_mfc_handle_stream_complete(%struct.s5p_mfc_ctx* %125)
  br label %236

127:                                              ; preds = %113, %107
  %128 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %129 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @clear_int_flags, align 4
  %132 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %133 = call i8* (i32, i32, ...) @s5p_mfc_hw_call(i32 %130, i32 %131, %struct.s5p_mfc_dev* %132)
  %134 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %135 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %134, i32 0, i32 4
  %136 = call i64 @test_and_clear_bit(i32 0, i32* %135)
  %137 = icmp eq i64 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i32 @WARN_ON(i32 %138)
  %140 = call i32 (...) @s5p_mfc_clock_off()
  %141 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @wake_up_ctx(%struct.s5p_mfc_ctx* %141, i32 %142, i32 %143)
  %145 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %146 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @try_run, align 4
  %149 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %150 = call i8* (i32, i32, ...) @s5p_mfc_hw_call(i32 %147, i32 %148, %struct.s5p_mfc_dev* %149)
  br label %156

151:                                              ; preds = %89
  %152 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @s5p_mfc_handle_frame(%struct.s5p_mfc_ctx* %152, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %151, %127
  br label %236

157:                                              ; preds = %2
  %158 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @s5p_mfc_handle_seq_done(%struct.s5p_mfc_ctx* %158, i32 %159, i32 %160)
  br label %236

162:                                              ; preds = %2
  %163 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %164 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @get_inst_no, align 4
  %167 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %168 = call i8* (i32, i32, ...) @s5p_mfc_hw_call(i32 %165, i32 %166, %struct.s5p_mfc_dev* %167)
  %169 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %170 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %169, i32 0, i32 5
  store i8* %168, i8** %170, align 8
  %171 = load i32, i32* @MFCINST_GOT_INST, align 4
  %172 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %173 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 8
  br label %242

174:                                              ; preds = %2
  %175 = load i8*, i8** @MFC_NO_INSTANCE_SET, align 8
  %176 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %177 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %176, i32 0, i32 5
  store i8* %175, i8** %177, align 8
  %178 = load i32, i32* @MFCINST_FREE, align 4
  %179 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %180 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 8
  br label %242

181:                                              ; preds = %2, %2, %2, %2
  %182 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %183 = icmp ne %struct.s5p_mfc_ctx* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %186 = call i32 @clear_work_bit(%struct.s5p_mfc_ctx* %185)
  br label %187

187:                                              ; preds = %184, %181
  %188 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %189 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @clear_int_flags, align 4
  %192 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %193 = call i8* (i32, i32, ...) @s5p_mfc_hw_call(i32 %190, i32 %191, %struct.s5p_mfc_dev* %192)
  %194 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %195 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %194, i32 0, i32 4
  %196 = call i32 @clear_bit(i32 0, i32* %195)
  %197 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %198 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %197, i32 0, i32 5
  %199 = call i32 @clear_bit(i32 0, i32* %198)
  %200 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @wake_up_dev(%struct.s5p_mfc_dev* %200, i32 %201, i32 %202)
  br label %236

204:                                              ; preds = %2
  %205 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* %9, align 4
  %208 = call i32 @s5p_mfc_handle_init_buffers(%struct.s5p_mfc_ctx* %205, i32 %206, i32 %207)
  br label %236

209:                                              ; preds = %2
  %210 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %211 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @clear_int_flags, align 4
  %214 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %215 = call i8* (i32, i32, ...) @s5p_mfc_hw_call(i32 %212, i32 %213, %struct.s5p_mfc_dev* %214)
  %216 = load i32, i32* %8, align 4
  %217 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %218 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 8
  %219 = load i32, i32* %9, align 4
  %220 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %221 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 4
  %222 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %223 = call i32 @s5p_mfc_handle_stream_complete(%struct.s5p_mfc_ctx* %222)
  br label %236

224:                                              ; preds = %2
  %225 = load i32, i32* @MFCINST_RUNNING, align 4
  %226 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %227 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %226, i32 0, i32 4
  store i32 %225, i32* %227, align 8
  br label %242

228:                                              ; preds = %2
  %229 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %230 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %231 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @clear_int_flags, align 4
  %234 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %235 = call i8* (i32, i32, ...) @s5p_mfc_hw_call(i32 %232, i32 %233, %struct.s5p_mfc_dev* %234)
  br label %236

236:                                              ; preds = %228, %209, %204, %187, %157, %156, %118, %85
  %237 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %238 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %237, i32 0, i32 2
  %239 = call i32 @spin_unlock(i32* %238)
  %240 = call i32 (...) @mfc_debug_leave()
  %241 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %241, i32* %3, align 4
  br label %281

242:                                              ; preds = %224, %174, %162
  %243 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %244 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @clear_int_flags, align 4
  %247 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %248 = call i8* (i32, i32, ...) @s5p_mfc_hw_call(i32 %245, i32 %246, %struct.s5p_mfc_dev* %247)
  %249 = load i32, i32* %8, align 4
  %250 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %251 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 8
  %252 = load i32, i32* %9, align 4
  %253 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %254 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %253, i32 0, i32 1
  store i32 %252, i32* %254, align 4
  %255 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %256 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %255, i32 0, i32 2
  store i32 1, i32* %256, align 8
  %257 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %258 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %257, i32 0, i32 4
  %259 = call i64 @test_and_clear_bit(i32 0, i32* %258)
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %242
  %262 = call i32 @mfc_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %263

263:                                              ; preds = %261, %242
  %264 = call i32 (...) @s5p_mfc_clock_off()
  %265 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %266 = call i32 @clear_work_bit(%struct.s5p_mfc_ctx* %265)
  %267 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %268 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %267, i32 0, i32 3
  %269 = call i32 @wake_up(i32* %268)
  %270 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %271 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @try_run, align 4
  %274 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %275 = call i8* (i32, i32, ...) @s5p_mfc_hw_call(i32 %272, i32 %273, %struct.s5p_mfc_dev* %274)
  %276 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %277 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %276, i32 0, i32 2
  %278 = call i32 @spin_unlock(i32* %277)
  %279 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %280 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %280, i32* %3, align 4
  br label %281

281:                                              ; preds = %263, %236
  %282 = load i32, i32* %3, align 4
  ret i32 %282
}

declare dso_local i32 @mfc_debug_enter(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @s5p_mfc_hw_call(i32, i32, ...) #1

declare dso_local i32 @mfc_debug(i32, i8*, ...) #1

declare dso_local i32 @s5p_mfc_handle_frame(%struct.s5p_mfc_ctx*, i32, i32) #1

declare dso_local i32 @s5p_mfc_handle_error(%struct.s5p_mfc_dev*, %struct.s5p_mfc_ctx*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @s5p_mfc_handle_stream_complete(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @s5p_mfc_clock_off(...) #1

declare dso_local i32 @wake_up_ctx(%struct.s5p_mfc_ctx*, i32, i32) #1

declare dso_local i32 @s5p_mfc_handle_seq_done(%struct.s5p_mfc_ctx*, i32, i32) #1

declare dso_local i32 @clear_work_bit(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @wake_up_dev(%struct.s5p_mfc_dev*, i32, i32) #1

declare dso_local i32 @s5p_mfc_handle_init_buffers(%struct.s5p_mfc_ctx*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mfc_debug_leave(...) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
