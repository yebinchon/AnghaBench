; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_init_decode_v6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_init_decode_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i32, i32, i64, i32, i32, %struct.TYPE_2__*, i64, %struct.s5p_mfc_dev* }
%struct.TYPE_2__ = type { i64 }
%struct.s5p_mfc_dev = type { i32, %struct.s5p_mfc_regs* }
%struct.s5p_mfc_regs = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"InstNo: %d/%d\0A\00", align 1
@S5P_FIMV_CH_SEQ_HEADER_V6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"BUFs: %08x %08x %08x\0A\00", align 1
@S5P_FIMV_D_OPT_FMO_ASO_CTRL_MASK_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_D_OPT_DDELAY_EN_SHIFT_V6 = common dso_local global i32 0, align 4
@S5P_MFC_CODEC_MPEG4_DEC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Set loop filter to: %d\0A\00", align 1
@S5P_FIMV_D_OPT_LF_CTRL_SHIFT_V6 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV12MT_16X16 = common dso_local global i64 0, align 8
@S5P_FIMV_D_OPT_TILE_MODE_SHIFT_V6 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV21M = common dso_local global i64 0, align 8
@cmd_host2risc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_init_decode_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_init_decode_v6(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca %struct.s5p_mfc_ctx*, align 8
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca %struct.s5p_mfc_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %2, align 8
  %7 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %7, i32 0, i32 7
  %9 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  store %struct.s5p_mfc_dev* %9, %struct.s5p_mfc_dev** %3, align 8
  %10 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %11 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %10, i32 0, i32 1
  %12 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %11, align 8
  store %struct.s5p_mfc_regs* %12, %struct.s5p_mfc_regs** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = call i32 (...) @mfc_debug_enter()
  %14 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @S5P_FIMV_CH_SEQ_HEADER_V6, align 4
  %18 = call i32 (i32, i8*, i32, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %20 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @readl(i32 %21)
  %23 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %24 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @readl(i32 %25)
  %27 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %28 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @readl(i32 %29)
  %31 = call i32 (i32, i8*, i32, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %26, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @S5P_FIMV_D_OPT_FMO_ASO_CTRL_MASK_V6, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %1
  %42 = load i32, i32* @S5P_FIMV_D_OPT_DDELAY_EN_SHIFT_V6, align 4
  %43 = shl i32 1, %42
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %47 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %50 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @writel(i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %41, %1
  %54 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %55 = call i64 @IS_MFCV7_PLUS(%struct.s5p_mfc_dev* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %59 = call i64 @IS_MFCV6_V2(%struct.s5p_mfc_dev* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57, %53
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %64 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @writel(i32 %62, i32 %65)
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %61, %57
  %68 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %69 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @S5P_MFC_CODEC_MPEG4_DEC, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %67
  %74 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %75 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i32, i8*, i32, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %79 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @S5P_FIMV_D_OPT_LF_CTRL_SHIFT_V6, align 4
  %82 = shl i32 %80, %81
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %73, %67
  %86 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %87 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %86, i32 0, i32 5
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @V4L2_PIX_FMT_NV12MT_16X16, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load i32, i32* @S5P_FIMV_D_OPT_TILE_MODE_SHIFT_V6, align 4
  %95 = shl i32 1, %94
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %93, %85
  %99 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %100 = call i64 @IS_MFCV7_PLUS(%struct.s5p_mfc_dev* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %104 = call i64 @IS_MFCV6_V2(%struct.s5p_mfc_dev* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %102, %98
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %109 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @writel(i32 %107, i32 %110)
  br label %118

112:                                              ; preds = %102
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %115 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @writel(i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %112, %106
  %119 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %120 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %119, i32 0, i32 5
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @V4L2_PIX_FMT_NV21M, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %118
  %127 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %128 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @writel(i32 1, i32 %129)
  br label %136

131:                                              ; preds = %118
  %132 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %133 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @writel(i32 0, i32 %134)
  br label %136

136:                                              ; preds = %131, %126
  %137 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %138 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, 1
  %141 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %142 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @writel(i32 %140, i32 %143)
  %145 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %146 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %149 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @writel(i32 %147, i32 %150)
  %152 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %153 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @cmd_host2risc, align 4
  %156 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %157 = load i32, i32* @S5P_FIMV_CH_SEQ_HEADER_V6, align 4
  %158 = call i32 @s5p_mfc_hw_call(i32 %154, i32 %155, %struct.s5p_mfc_dev* %156, i32 %157, i32* null)
  %159 = call i32 (...) @mfc_debug_leave()
  ret i32 0
}

declare dso_local i32 @mfc_debug_enter(...) #1

declare dso_local i32 @mfc_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i64 @IS_MFCV7_PLUS(%struct.s5p_mfc_dev*) #1

declare dso_local i64 @IS_MFCV6_V2(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @s5p_mfc_hw_call(i32, i32, %struct.s5p_mfc_dev*, i32, i32*) #1

declare dso_local i32 @mfc_debug_leave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
