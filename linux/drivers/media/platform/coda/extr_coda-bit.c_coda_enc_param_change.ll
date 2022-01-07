; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_enc_param_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_enc_param_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { %struct.TYPE_2__, i64, %struct.coda_dev* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.coda_dev = type { i32 }

@CODA_PARAM_CHANGE_RC_GOP = common dso_local global i32 0, align 4
@CODA_CMD_ENC_PARAM_RC_GOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"parameter change: intra Qp %u\0A\00", align 1
@CODA_PARAM_CHANGE_RC_INTRA_QP = common dso_local global i32 0, align 4
@CODA_CMD_ENC_PARAM_RC_INTRA_QP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"parameter change: bitrate %u kbit/s\0A\00", align 1
@CODA_PARAM_CHANGE_RC_BITRATE = common dso_local global i32 0, align 4
@CODA_CMD_ENC_PARAM_RC_BITRATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"parameter change: frame rate %u/%u Hz\0A\00", align 1
@CODA_PARAM_CHANGE_RC_FRAME_RATE = common dso_local global i32 0, align 4
@CODA_CMD_ENC_PARAM_RC_FRAME_RATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"parameter change: intra refresh MBs %u\0A\00", align 1
@CODA_PARAM_CHANGE_INTRA_MB_NUM = common dso_local global i32 0, align 4
@CODA_CMD_ENC_PARAM_INTRA_MB_NUM = common dso_local global i32 0, align 4
@CODA_PARAM_CHANGE_SLICE_MODE = common dso_local global i32 0, align 4
@CODA_CMD_ENC_PARAM_SLICE_MODE = common dso_local global i32 0, align 4
@CODA_CMD_ENC_PARAM_CHANGE_ENABLE = common dso_local global i32 0, align 4
@CODA_COMMAND_RC_CHANGE_PARAMETER = common dso_local global i32 0, align 4
@CODA_RET_ENC_PARAM_CHANGE_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"parameter change failed: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coda_ctx*)* @coda_enc_param_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_enc_param_change(%struct.coda_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coda_ctx*, align 8
  %4 = alloca %struct.coda_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %3, align 8
  %8 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %8, i32 0, i32 2
  %10 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  store %struct.coda_dev* %10, %struct.coda_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %1
  %17 = load i32, i32* @CODA_PARAM_CHANGE_RC_GOP, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %21 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CODA_CMD_ENC_PARAM_RC_GOP, align 4
  %26 = call i32 @coda_write(%struct.coda_dev* %20, i32 %24, i32 %25)
  %27 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  br label %38

38:                                               ; preds = %16, %1
  %39 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %71

44:                                               ; preds = %38
  %45 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %46 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, %struct.coda_ctx*, i8*, i32, ...) @coda_dbg(i32 1, %struct.coda_ctx* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %44
  %57 = load i32, i32* @CODA_PARAM_CHANGE_RC_INTRA_QP, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %61 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CODA_CMD_ENC_PARAM_RC_INTRA_QP, align 4
  %66 = call i32 @coda_write(%struct.coda_dev* %60, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %56, %44
  %68 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %69 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  store i32 0, i32* %70, align 8
  br label %71

71:                                               ; preds = %67, %38
  %72 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %73 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %97

77:                                               ; preds = %71
  %78 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %79 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %80 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32, %struct.coda_ctx*, i8*, i32, ...) @coda_dbg(i32 1, %struct.coda_ctx* %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @CODA_PARAM_CHANGE_RC_BITRATE, align 4
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %88 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %89 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @CODA_CMD_ENC_PARAM_RC_BITRATE, align 4
  %93 = call i32 @coda_write(%struct.coda_dev* %87, i32 %91, i32 %92)
  %94 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %95 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 5
  store i32 0, i32* %96, align 4
  br label %97

97:                                               ; preds = %77, %71
  %98 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %99 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %130

103:                                              ; preds = %97
  %104 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %105 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %106 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 65535
  %110 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %111 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 4
  %114 = ashr i32 %113, 16
  %115 = add nsw i32 %114, 1
  %116 = call i32 (i32, %struct.coda_ctx*, i8*, i32, ...) @coda_dbg(i32 1, %struct.coda_ctx* %104, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %115)
  %117 = load i32, i32* @CODA_PARAM_CHANGE_RC_FRAME_RATE, align 4
  %118 = load i32, i32* %5, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %5, align 4
  %120 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %121 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %122 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @CODA_CMD_ENC_PARAM_RC_FRAME_RATE, align 4
  %126 = call i32 @coda_write(%struct.coda_dev* %120, i32 %124, i32 %125)
  %127 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %128 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 6
  store i32 0, i32* %129, align 8
  br label %130

130:                                              ; preds = %103, %97
  %131 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %132 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %156

136:                                              ; preds = %130
  %137 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %138 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %139 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 9
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i32, %struct.coda_ctx*, i8*, i32, ...) @coda_dbg(i32 1, %struct.coda_ctx* %137, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @CODA_PARAM_CHANGE_INTRA_MB_NUM, align 4
  %144 = load i32, i32* %5, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %5, align 4
  %146 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %147 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %148 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 9
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @CODA_CMD_ENC_PARAM_INTRA_MB_NUM, align 4
  %152 = call i32 @coda_write(%struct.coda_dev* %146, i32 %150, i32 %151)
  %153 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %154 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 8
  store i32 0, i32* %155, align 8
  br label %156

156:                                              ; preds = %136, %130
  %157 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %158 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 10
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %156
  %163 = load i32, i32* @CODA_PARAM_CHANGE_SLICE_MODE, align 4
  %164 = load i32, i32* %5, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %5, align 4
  %166 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %167 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %168 = call i32 @coda_slice_mode(%struct.coda_ctx* %167)
  %169 = load i32, i32* @CODA_CMD_ENC_PARAM_SLICE_MODE, align 4
  %170 = call i32 @coda_write(%struct.coda_dev* %166, i32 %168, i32 %169)
  %171 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %172 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 10
  store i32 0, i32* %173, align 8
  br label %174

174:                                              ; preds = %162, %156
  %175 = load i32, i32* %5, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %174
  store i32 0, i32* %2, align 4
  br label %201

178:                                              ; preds = %174
  %179 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %180 = load i32, i32* %5, align 4
  %181 = load i32, i32* @CODA_CMD_ENC_PARAM_CHANGE_ENABLE, align 4
  %182 = call i32 @coda_write(%struct.coda_dev* %179, i32 %180, i32 %181)
  %183 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %184 = load i32, i32* @CODA_COMMAND_RC_CHANGE_PARAMETER, align 4
  %185 = call i32 @coda_command_sync(%struct.coda_ctx* %183, i32 %184)
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %178
  %189 = load i32, i32* %7, align 4
  store i32 %189, i32* %2, align 4
  br label %201

190:                                              ; preds = %178
  %191 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %192 = load i32, i32* @CODA_RET_ENC_PARAM_CHANGE_SUCCESS, align 4
  %193 = call i32 @coda_read(%struct.coda_dev* %191, i32 %192)
  store i32 %193, i32* %6, align 4
  %194 = load i32, i32* %6, align 4
  %195 = icmp ne i32 %194, 1
  br i1 %195, label %196, label %200

196:                                              ; preds = %190
  %197 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %198 = load i32, i32* %6, align 4
  %199 = call i32 (i32, %struct.coda_ctx*, i8*, i32, ...) @coda_dbg(i32 1, %struct.coda_ctx* %197, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %198)
  br label %200

200:                                              ; preds = %196, %190
  store i32 0, i32* %2, align 4
  br label %201

201:                                              ; preds = %200, %188, %177
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local i32 @coda_write(%struct.coda_dev*, i32, i32) #1

declare dso_local i32 @coda_dbg(i32, %struct.coda_ctx*, i8*, i32, ...) #1

declare dso_local i32 @coda_slice_mode(%struct.coda_ctx*) #1

declare dso_local i32 @coda_command_sync(%struct.coda_ctx*, i32) #1

declare dso_local i32 @coda_read(%struct.coda_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
