; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_cmd_v6.c_s5p_mfc_open_inst_cmd_v6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_cmd_v6.c_s5p_mfc_open_inst_cmd_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i32, %struct.TYPE_2__, i32, %struct.s5p_mfc_dev* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.s5p_mfc_dev = type { i32 }
%struct.s5p_mfc_cmd_args = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Requested codec mode: %d\0A\00", align 1
@S5P_FIMV_CODEC_H264_DEC_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_CODEC_H264_MVC_DEC_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_CODEC_VC1_DEC_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_CODEC_MPEG4_DEC_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_CODEC_MPEG2_DEC_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_CODEC_H263_DEC_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_CODEC_VC1RCV_DEC_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_CODEC_VP8_DEC_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_CODEC_HEVC_DEC = common dso_local global i32 0, align 4
@S5P_FIMV_CODEC_VP9_DEC = common dso_local global i32 0, align 4
@S5P_FIMV_CODEC_H264_ENC_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_CODEC_H264_MVC_ENC_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_CODEC_MPEG4_ENC_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_CODEC_H263_ENC_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_CODEC_VP8_ENC_V7 = common dso_local global i32 0, align 4
@S5P_FIMV_CODEC_HEVC_ENC = common dso_local global i32 0, align 4
@S5P_FIMV_CODEC_NONE_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_CODEC_TYPE_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_CONTEXT_MEM_ADDR_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_CONTEXT_MEM_SIZE_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_D_CRC_CTRL_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_H2R_CMD_OPEN_INSTANCE_V6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_open_inst_cmd_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_open_inst_cmd_v6(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca %struct.s5p_mfc_ctx*, align 8
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca %struct.s5p_mfc_cmd_args, align 4
  %5 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %2, align 8
  %6 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %6, i32 0, i32 3
  %8 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %7, align 8
  store %struct.s5p_mfc_dev* %8, %struct.s5p_mfc_dev** %3, align 8
  %9 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %17 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %53 [
    i32 141, label %21
    i32 139, label %23
    i32 131, label %25
    i32 134, label %27
    i32 135, label %29
    i32 143, label %31
    i32 132, label %33
    i32 130, label %35
    i32 137, label %37
    i32 128, label %39
    i32 140, label %41
    i32 138, label %43
    i32 133, label %45
    i32 142, label %47
    i32 129, label %49
    i32 136, label %51
  ]

21:                                               ; preds = %1
  %22 = load i32, i32* @S5P_FIMV_CODEC_H264_DEC_V6, align 4
  store i32 %22, i32* %5, align 4
  br label %55

23:                                               ; preds = %1
  %24 = load i32, i32* @S5P_FIMV_CODEC_H264_MVC_DEC_V6, align 4
  store i32 %24, i32* %5, align 4
  br label %55

25:                                               ; preds = %1
  %26 = load i32, i32* @S5P_FIMV_CODEC_VC1_DEC_V6, align 4
  store i32 %26, i32* %5, align 4
  br label %55

27:                                               ; preds = %1
  %28 = load i32, i32* @S5P_FIMV_CODEC_MPEG4_DEC_V6, align 4
  store i32 %28, i32* %5, align 4
  br label %55

29:                                               ; preds = %1
  %30 = load i32, i32* @S5P_FIMV_CODEC_MPEG2_DEC_V6, align 4
  store i32 %30, i32* %5, align 4
  br label %55

31:                                               ; preds = %1
  %32 = load i32, i32* @S5P_FIMV_CODEC_H263_DEC_V6, align 4
  store i32 %32, i32* %5, align 4
  br label %55

33:                                               ; preds = %1
  %34 = load i32, i32* @S5P_FIMV_CODEC_VC1RCV_DEC_V6, align 4
  store i32 %34, i32* %5, align 4
  br label %55

35:                                               ; preds = %1
  %36 = load i32, i32* @S5P_FIMV_CODEC_VP8_DEC_V6, align 4
  store i32 %36, i32* %5, align 4
  br label %55

37:                                               ; preds = %1
  %38 = load i32, i32* @S5P_FIMV_CODEC_HEVC_DEC, align 4
  store i32 %38, i32* %5, align 4
  br label %55

39:                                               ; preds = %1
  %40 = load i32, i32* @S5P_FIMV_CODEC_VP9_DEC, align 4
  store i32 %40, i32* %5, align 4
  br label %55

41:                                               ; preds = %1
  %42 = load i32, i32* @S5P_FIMV_CODEC_H264_ENC_V6, align 4
  store i32 %42, i32* %5, align 4
  br label %55

43:                                               ; preds = %1
  %44 = load i32, i32* @S5P_FIMV_CODEC_H264_MVC_ENC_V6, align 4
  store i32 %44, i32* %5, align 4
  br label %55

45:                                               ; preds = %1
  %46 = load i32, i32* @S5P_FIMV_CODEC_MPEG4_ENC_V6, align 4
  store i32 %46, i32* %5, align 4
  br label %55

47:                                               ; preds = %1
  %48 = load i32, i32* @S5P_FIMV_CODEC_H263_ENC_V6, align 4
  store i32 %48, i32* %5, align 4
  br label %55

49:                                               ; preds = %1
  %50 = load i32, i32* @S5P_FIMV_CODEC_VP8_ENC_V7, align 4
  store i32 %50, i32* %5, align 4
  br label %55

51:                                               ; preds = %1
  %52 = load i32, i32* @S5P_FIMV_CODEC_HEVC_ENC, align 4
  store i32 %52, i32* %5, align 4
  br label %55

53:                                               ; preds = %1
  %54 = load i32, i32* @S5P_FIMV_CODEC_NONE_V6, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21
  %56 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @S5P_FIMV_CODEC_TYPE_V6, align 4
  %59 = call i32 @mfc_write(%struct.s5p_mfc_dev* %56, i32 %57, i32 %58)
  %60 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %61 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %62 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @S5P_FIMV_CONTEXT_MEM_ADDR_V6, align 4
  %66 = call i32 @mfc_write(%struct.s5p_mfc_dev* %60, i32 %64, i32 %65)
  %67 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %68 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %69 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @S5P_FIMV_CONTEXT_MEM_SIZE_V6, align 4
  %73 = call i32 @mfc_write(%struct.s5p_mfc_dev* %67, i32 %71, i32 %72)
  %74 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %75 = load i32, i32* @S5P_FIMV_D_CRC_CTRL_V6, align 4
  %76 = call i32 @mfc_write(%struct.s5p_mfc_dev* %74, i32 0, i32 %75)
  %77 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %78 = load i32, i32* @S5P_FIMV_H2R_CMD_OPEN_INSTANCE_V6, align 4
  %79 = call i32 @s5p_mfc_cmd_host2risc_v6(%struct.s5p_mfc_dev* %77, i32 %78, %struct.s5p_mfc_cmd_args* %4)
  ret i32 %79
}

declare dso_local i32 @mfc_debug(i32, i8*, i32) #1

declare dso_local i32 @mfc_write(%struct.s5p_mfc_dev*, i32, i32) #1

declare dso_local i32 @s5p_mfc_cmd_host2risc_v6(%struct.s5p_mfc_dev*, i32, %struct.s5p_mfc_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
