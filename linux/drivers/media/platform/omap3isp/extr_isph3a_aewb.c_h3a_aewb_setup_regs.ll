; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isph3a_aewb.c_h3a_aewb_setup_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isph3a_aewb.c_h3a_aewb_setup_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i64, i32, i64, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.omap3isp_h3a_aewb_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ISPSTAT_DISABLED = common dso_local global i64 0, align 8
@OMAP3_ISP_IOMEM_H3A = common dso_local global i32 0, align 4
@ISPH3A_AEWBUFST = common dso_local global i32 0, align 4
@ISPH3A_PCR_AEW_AVE2LMT_SHIFT = common dso_local global i32 0, align 4
@ISPH3A_PCR_AEW_ALAW_EN_SHIFT = common dso_local global i32 0, align 4
@ISPH3A_AEWWIN1_WINH_SHIFT = common dso_local global i32 0, align 4
@ISPH3A_AEWWIN1_WINW_SHIFT = common dso_local global i32 0, align 4
@ISPH3A_AEWWIN1_WINVC_SHIFT = common dso_local global i32 0, align 4
@ISPH3A_AEWWIN1_WINHC_SHIFT = common dso_local global i32 0, align 4
@ISPH3A_AEWINSTART_WINSH_SHIFT = common dso_local global i32 0, align 4
@ISPH3A_AEWINSTART_WINSV_SHIFT = common dso_local global i32 0, align 4
@ISPH3A_AEWINBLK_WINSV_SHIFT = common dso_local global i32 0, align 4
@ISPH3A_AEWINBLK_WINH_SHIFT = common dso_local global i32 0, align 4
@ISPH3A_AEWSUBWIN_AEWINCV_SHIFT = common dso_local global i32 0, align 4
@ISPH3A_AEWSUBWIN_AEWINCH_SHIFT = common dso_local global i32 0, align 4
@ISPH3A_AEWWIN1 = common dso_local global i32 0, align 4
@ISPH3A_AEWINSTART = common dso_local global i32 0, align 4
@ISPH3A_AEWINBLK = common dso_local global i32 0, align 4
@ISPH3A_AEWSUBWIN = common dso_local global i32 0, align 4
@ISPH3A_PCR = common dso_local global i32 0, align 4
@ISPH3A_PCR_AEW_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ispstat*, i8*)* @h3a_aewb_setup_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h3a_aewb_setup_regs(%struct.ispstat* %0, i8* %1) #0 {
  %3 = alloca %struct.ispstat*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.omap3isp_h3a_aewb_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ispstat* %0, %struct.ispstat** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.omap3isp_h3a_aewb_config*
  store %struct.omap3isp_h3a_aewb_config* %12, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %13 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %14 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ISPSTAT_DISABLED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %181

19:                                               ; preds = %2
  %20 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %21 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %24 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %23, i32 0, i32 6
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @OMAP3_ISP_IOMEM_H3A, align 4
  %29 = load i32, i32* @ISPH3A_AEWBUFST, align 4
  %30 = call i32 @isp_reg_writel(i32 %22, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %32 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %19
  br label %181

36:                                               ; preds = %19
  %37 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %38 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ISPH3A_PCR_AEW_AVE2LMT_SHIFT, align 4
  %41 = shl i32 %39, %40
  store i32 %41, i32* %6, align 4
  %42 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %43 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %42, i32 0, i32 12
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* @ISPH3A_PCR_AEW_ALAW_EN_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %54 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 1
  %57 = sub nsw i32 %56, 1
  %58 = load i32, i32* @ISPH3A_AEWWIN1_WINH_SHIFT, align 4
  %59 = shl i32 %57, %58
  store i32 %59, i32* %7, align 4
  %60 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %61 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 1
  %64 = sub nsw i32 %63, 1
  %65 = load i32, i32* @ISPH3A_AEWWIN1_WINW_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %70 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* @ISPH3A_AEWWIN1_WINVC_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %78 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = load i32, i32* @ISPH3A_AEWWIN1_WINHC_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  %85 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %86 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ISPH3A_AEWINSTART_WINSH_SHIFT, align 4
  %89 = shl i32 %87, %88
  store i32 %89, i32* %8, align 4
  %90 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %91 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ISPH3A_AEWINSTART_WINSV_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  %97 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %98 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ISPH3A_AEWINBLK_WINSV_SHIFT, align 4
  %101 = shl i32 %99, %100
  store i32 %101, i32* %9, align 4
  %102 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %103 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 4
  %105 = ashr i32 %104, 1
  %106 = sub nsw i32 %105, 1
  %107 = load i32, i32* @ISPH3A_AEWINBLK_WINH_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = load i32, i32* %9, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %9, align 4
  %111 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %112 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %111, i32 0, i32 9
  %113 = load i32, i32* %112, align 4
  %114 = ashr i32 %113, 1
  %115 = sub nsw i32 %114, 1
  %116 = load i32, i32* @ISPH3A_AEWSUBWIN_AEWINCV_SHIFT, align 4
  %117 = shl i32 %115, %116
  store i32 %117, i32* %10, align 4
  %118 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %119 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %118, i32 0, i32 10
  %120 = load i32, i32* %119, align 4
  %121 = ashr i32 %120, 1
  %122 = sub nsw i32 %121, 1
  %123 = load i32, i32* @ISPH3A_AEWSUBWIN_AEWINCH_SHIFT, align 4
  %124 = shl i32 %122, %123
  %125 = load i32, i32* %10, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %10, align 4
  %127 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %128 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @OMAP3_ISP_IOMEM_H3A, align 4
  %132 = load i32, i32* @ISPH3A_AEWWIN1, align 4
  %133 = call i32 @isp_reg_writel(i32 %129, i32 %130, i32 %131, i32 %132)
  %134 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %135 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @OMAP3_ISP_IOMEM_H3A, align 4
  %139 = load i32, i32* @ISPH3A_AEWINSTART, align 4
  %140 = call i32 @isp_reg_writel(i32 %136, i32 %137, i32 %138, i32 %139)
  %141 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %142 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @OMAP3_ISP_IOMEM_H3A, align 4
  %146 = load i32, i32* @ISPH3A_AEWINBLK, align 4
  %147 = call i32 @isp_reg_writel(i32 %143, i32 %144, i32 %145, i32 %146)
  %148 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %149 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* @OMAP3_ISP_IOMEM_H3A, align 4
  %153 = load i32, i32* @ISPH3A_AEWSUBWIN, align 4
  %154 = call i32 @isp_reg_writel(i32 %150, i32 %151, i32 %152, i32 %153)
  %155 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %156 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @OMAP3_ISP_IOMEM_H3A, align 4
  %159 = load i32, i32* @ISPH3A_PCR, align 4
  %160 = load i32, i32* @ISPH3A_PCR_AEW_MASK, align 4
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @isp_reg_clr_set(i32 %157, i32 %158, i32 %159, i32 %160, i32 %161)
  %163 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %164 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %163, i32 0, i32 4
  store i64 0, i64* %164, align 8
  %165 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %166 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %169 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %171, %167
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %169, align 8
  %174 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %175 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %174, i32 0, i32 2
  store i64 0, i64* %175, align 8
  %176 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %177 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %176, i32 0, i32 11
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %180 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %36, %35, %18
  ret void
}

declare dso_local i32 @isp_reg_writel(i32, i32, i32, i32) #1

declare dso_local i32 @isp_reg_clr_set(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
