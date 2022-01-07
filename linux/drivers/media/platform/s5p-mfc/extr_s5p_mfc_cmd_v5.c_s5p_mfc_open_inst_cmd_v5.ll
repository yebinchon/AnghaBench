; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_cmd_v5.c_s5p_mfc_open_inst_cmd_v5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_cmd_v5.c_s5p_mfc_open_inst_cmd_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i32, i32, %struct.TYPE_2__, i32, %struct.s5p_mfc_dev* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.s5p_mfc_dev = type { i32 }
%struct.s5p_mfc_cmd_args = type { i64* }

@.str = private unnamed_addr constant [37 x i8] c"Getting instance number (codec: %d)\0A\00", align 1
@S5P_FIMV_CODEC_H264_DEC = common dso_local global i64 0, align 8
@S5P_FIMV_CODEC_VC1_DEC = common dso_local global i64 0, align 8
@S5P_FIMV_CODEC_MPEG4_DEC = common dso_local global i64 0, align 8
@S5P_FIMV_CODEC_MPEG2_DEC = common dso_local global i64 0, align 8
@S5P_FIMV_CODEC_H263_DEC = common dso_local global i64 0, align 8
@S5P_FIMV_CODEC_VC1RCV_DEC = common dso_local global i64 0, align 8
@S5P_FIMV_CODEC_H264_ENC = common dso_local global i64 0, align 8
@S5P_FIMV_CODEC_MPEG4_ENC = common dso_local global i64 0, align 8
@S5P_FIMV_CODEC_H263_ENC = common dso_local global i64 0, align 8
@S5P_FIMV_CODEC_NONE = common dso_local global i64 0, align 8
@S5P_FIMV_H2R_CMD_OPEN_INSTANCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to create a new instance\0A\00", align 1
@MFCINST_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_open_inst_cmd_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_open_inst_cmd_v5(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca %struct.s5p_mfc_ctx*, align 8
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca %struct.s5p_mfc_cmd_args, align 8
  %5 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %2, align 8
  %6 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %6, i32 0, i32 4
  %8 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %7, align 8
  store %struct.s5p_mfc_dev* %8, %struct.s5p_mfc_dev** %3, align 8
  %9 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %17 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = call i32 @memset(%struct.s5p_mfc_cmd_args* %4, i32 0, i32 8)
  %19 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %67 [
    i32 134, label %22
    i32 128, label %27
    i32 131, label %32
    i32 132, label %37
    i32 136, label %42
    i32 129, label %47
    i32 133, label %52
    i32 130, label %57
    i32 135, label %62
  ]

22:                                               ; preds = %1
  %23 = load i64, i64* @S5P_FIMV_CODEC_H264_DEC, align 8
  %24 = getelementptr inbounds %struct.s5p_mfc_cmd_args, %struct.s5p_mfc_cmd_args* %4, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  store i64 %23, i64* %26, align 8
  br label %72

27:                                               ; preds = %1
  %28 = load i64, i64* @S5P_FIMV_CODEC_VC1_DEC, align 8
  %29 = getelementptr inbounds %struct.s5p_mfc_cmd_args, %struct.s5p_mfc_cmd_args* %4, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  store i64 %28, i64* %31, align 8
  br label %72

32:                                               ; preds = %1
  %33 = load i64, i64* @S5P_FIMV_CODEC_MPEG4_DEC, align 8
  %34 = getelementptr inbounds %struct.s5p_mfc_cmd_args, %struct.s5p_mfc_cmd_args* %4, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  store i64 %33, i64* %36, align 8
  br label %72

37:                                               ; preds = %1
  %38 = load i64, i64* @S5P_FIMV_CODEC_MPEG2_DEC, align 8
  %39 = getelementptr inbounds %struct.s5p_mfc_cmd_args, %struct.s5p_mfc_cmd_args* %4, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  store i64 %38, i64* %41, align 8
  br label %72

42:                                               ; preds = %1
  %43 = load i64, i64* @S5P_FIMV_CODEC_H263_DEC, align 8
  %44 = getelementptr inbounds %struct.s5p_mfc_cmd_args, %struct.s5p_mfc_cmd_args* %4, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  store i64 %43, i64* %46, align 8
  br label %72

47:                                               ; preds = %1
  %48 = load i64, i64* @S5P_FIMV_CODEC_VC1RCV_DEC, align 8
  %49 = getelementptr inbounds %struct.s5p_mfc_cmd_args, %struct.s5p_mfc_cmd_args* %4, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  store i64 %48, i64* %51, align 8
  br label %72

52:                                               ; preds = %1
  %53 = load i64, i64* @S5P_FIMV_CODEC_H264_ENC, align 8
  %54 = getelementptr inbounds %struct.s5p_mfc_cmd_args, %struct.s5p_mfc_cmd_args* %4, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  store i64 %53, i64* %56, align 8
  br label %72

57:                                               ; preds = %1
  %58 = load i64, i64* @S5P_FIMV_CODEC_MPEG4_ENC, align 8
  %59 = getelementptr inbounds %struct.s5p_mfc_cmd_args, %struct.s5p_mfc_cmd_args* %4, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  store i64 %58, i64* %61, align 8
  br label %72

62:                                               ; preds = %1
  %63 = load i64, i64* @S5P_FIMV_CODEC_H263_ENC, align 8
  %64 = getelementptr inbounds %struct.s5p_mfc_cmd_args, %struct.s5p_mfc_cmd_args* %4, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  store i64 %63, i64* %66, align 8
  br label %72

67:                                               ; preds = %1
  %68 = load i64, i64* @S5P_FIMV_CODEC_NONE, align 8
  %69 = getelementptr inbounds %struct.s5p_mfc_cmd_args, %struct.s5p_mfc_cmd_args* %4, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  store i64 %68, i64* %71, align 8
  br label %72

72:                                               ; preds = %67, %62, %57, %52, %47, %42, %37, %32, %27, %22
  %73 = getelementptr inbounds %struct.s5p_mfc_cmd_args, %struct.s5p_mfc_cmd_args* %4, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 1
  store i64 0, i64* %75, align 8
  %76 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %77 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.s5p_mfc_cmd_args, %struct.s5p_mfc_cmd_args* %4, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 2
  store i64 %79, i64* %82, align 8
  %83 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %84 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.s5p_mfc_cmd_args, %struct.s5p_mfc_cmd_args* %4, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 3
  store i64 %86, i64* %89, align 8
  %90 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %91 = load i32, i32* @S5P_FIMV_H2R_CMD_OPEN_INSTANCE, align 4
  %92 = call i32 @s5p_mfc_cmd_host2risc_v5(%struct.s5p_mfc_dev* %90, i32 %91, %struct.s5p_mfc_cmd_args* %4)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %72
  %96 = call i32 @mfc_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i32, i32* @MFCINST_ERROR, align 4
  %98 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %99 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %95, %72
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @mfc_debug(i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.s5p_mfc_cmd_args*, i32, i32) #1

declare dso_local i32 @s5p_mfc_cmd_host2risc_v5(%struct.s5p_mfc_dev*, i32, %struct.s5p_mfc_cmd_args*) #1

declare dso_local i32 @mfc_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
