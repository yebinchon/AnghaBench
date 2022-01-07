; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_pf_setup_global_output_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_pf_setup_global_output_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, %struct.TYPE_4__*, i64, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.octeon_cn23xx_pf = type { i32 }

@CN23XX_SLI_OQ_WMARK = common dso_local global i32 0, align 4
@CN23XX_PKT_OUTPUT_CTL_IPTR = common dso_local global i64 0, align 8
@CN23XX_PKT_OUTPUT_CTL_DPTR = common dso_local global i64 0, align 8
@CN23XX_PKT_OUTPUT_CTL_BMODE = common dso_local global i64 0, align 8
@CN23XX_PKT_OUTPUT_CTL_ROR_P = common dso_local global i64 0, align 8
@CN23XX_PKT_OUTPUT_CTL_NSR_P = common dso_local global i64 0, align 8
@CN23XX_PKT_OUTPUT_CTL_ES_P = common dso_local global i64 0, align 8
@CN23XX_PKT_OUTPUT_CTL_ROR = common dso_local global i64 0, align 8
@CN23XX_PKT_OUTPUT_CTL_NSR = common dso_local global i64 0, align 8
@CN23XX_PKT_OUTPUT_CTL_ES = common dso_local global i64 0, align 8
@OCTEON_CN23XX_REV_1_0 = common dso_local global i64 0, align 8
@OCTEON_CN23XX_REV_1_1 = common dso_local global i64 0, align 8
@CN23XX_SLI_GBL_CONTROL = common dso_local global i32 0, align 4
@CN23XX_SLI_OUT_BP_EN2_W1S = common dso_local global i32 0, align 4
@CN23XX_SLI_OUT_BP_EN_W1S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @cn23xx_pf_setup_global_output_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cn23xx_pf_setup_global_output_regs(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.octeon_cn23xx_pf*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %9 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.octeon_cn23xx_pf*
  store %struct.octeon_cn23xx_pf* %12, %struct.octeon_cn23xx_pf** %8, align 8
  %13 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %14 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %19 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %17, %21
  store i64 %22, i64* %5, align 8
  %23 = load %struct.octeon_cn23xx_pf*, %struct.octeon_cn23xx_pf** %8, align 8
  %24 = getelementptr inbounds %struct.octeon_cn23xx_pf, %struct.octeon_cn23xx_pf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @CFG_GET_IS_SLI_BP_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %30 = load i32, i32* @CN23XX_SLI_OQ_WMARK, align 4
  %31 = call i32 @octeon_write_csr64(%struct.octeon_device* %29, i32 %30, i32 32)
  br label %36

32:                                               ; preds = %1
  %33 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %34 = load i32, i32* @CN23XX_SLI_OQ_WMARK, align 4
  %35 = call i32 @octeon_write_csr64(%struct.octeon_device* %33, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i64, i64* %6, align 8
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %102, %36
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %105

42:                                               ; preds = %38
  %43 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @CN23XX_SLI_OQ_PKT_CONTROL(i64 %44)
  %46 = call i64 @octeon_read_csr(%struct.octeon_device* %43, i32 %45)
  store i64 %46, i64* %3, align 8
  %47 = load i64, i64* @CN23XX_PKT_OUTPUT_CTL_IPTR, align 8
  %48 = xor i64 %47, -1
  %49 = load i64, i64* %3, align 8
  %50 = and i64 %49, %48
  store i64 %50, i64* %3, align 8
  %51 = load i64, i64* @CN23XX_PKT_OUTPUT_CTL_DPTR, align 8
  %52 = load i64, i64* %3, align 8
  %53 = or i64 %52, %51
  store i64 %53, i64* %3, align 8
  %54 = load i64, i64* @CN23XX_PKT_OUTPUT_CTL_BMODE, align 8
  %55 = xor i64 %54, -1
  %56 = load i64, i64* %3, align 8
  %57 = and i64 %56, %55
  store i64 %57, i64* %3, align 8
  %58 = load i64, i64* @CN23XX_PKT_OUTPUT_CTL_ROR_P, align 8
  %59 = xor i64 %58, -1
  %60 = load i64, i64* %3, align 8
  %61 = and i64 %60, %59
  store i64 %61, i64* %3, align 8
  %62 = load i64, i64* @CN23XX_PKT_OUTPUT_CTL_NSR_P, align 8
  %63 = xor i64 %62, -1
  %64 = load i64, i64* %3, align 8
  %65 = and i64 %64, %63
  store i64 %65, i64* %3, align 8
  %66 = load i64, i64* @CN23XX_PKT_OUTPUT_CTL_ES_P, align 8
  %67 = load i64, i64* %3, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %3, align 8
  %69 = load i64, i64* @CN23XX_PKT_OUTPUT_CTL_ROR, align 8
  %70 = xor i64 %69, -1
  %71 = load i64, i64* %3, align 8
  %72 = and i64 %71, %70
  store i64 %72, i64* %3, align 8
  %73 = load i64, i64* @CN23XX_PKT_OUTPUT_CTL_NSR, align 8
  %74 = xor i64 %73, -1
  %75 = load i64, i64* %3, align 8
  %76 = and i64 %75, %74
  store i64 %76, i64* %3, align 8
  %77 = load i64, i64* @CN23XX_PKT_OUTPUT_CTL_ES, align 8
  %78 = load i64, i64* %3, align 8
  %79 = or i64 %78, %77
  store i64 %79, i64* %3, align 8
  %80 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %81 = load i64, i64* %4, align 8
  %82 = call i32 @CN23XX_SLI_OQ_PKT_CONTROL(i64 %81)
  %83 = load i64, i64* %3, align 8
  %84 = call i32 @octeon_write_csr(%struct.octeon_device* %80, i32 %82, i64 %83)
  %85 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %86 = load %struct.octeon_cn23xx_pf*, %struct.octeon_cn23xx_pf** %8, align 8
  %87 = getelementptr inbounds %struct.octeon_cn23xx_pf, %struct.octeon_cn23xx_pf* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @CFG_GET_OQ_INTR_TIME(i32 %88)
  %90 = call i32 @cn23xx_pf_get_oq_ticks(%struct.octeon_device* %85, i64 %89)
  store i32 %90, i32* %7, align 4
  %91 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @CN23XX_SLI_OQ_PKT_INT_LEVELS(i64 %92)
  %94 = load %struct.octeon_cn23xx_pf*, %struct.octeon_cn23xx_pf** %8, align 8
  %95 = getelementptr inbounds %struct.octeon_cn23xx_pf, %struct.octeon_cn23xx_pf* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @CFG_GET_OQ_INTR_PKT(i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = shl i32 %98, 32
  %100 = or i32 %97, %99
  %101 = call i32 @octeon_write_csr64(%struct.octeon_device* %91, i32 %93, i32 %100)
  br label %102

102:                                              ; preds = %42
  %103 = load i64, i64* %4, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %4, align 8
  br label %38

105:                                              ; preds = %38
  %106 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %107 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i32*
  %113 = load i32, i32* @CN23XX_SLI_OQ_WMARK, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = call i32 @writeq(i32 64, i32* %115)
  %117 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %118 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @OCTEON_CN23XX_REV_1_0, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %128, label %122

122:                                              ; preds = %105
  %123 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %124 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @OCTEON_CN23XX_REV_1_1, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %152

128:                                              ; preds = %122, %105
  %129 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %130 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %129, i32 0, i32 1
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to i32*
  %136 = load i32, i32* @CN23XX_SLI_GBL_CONTROL, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = call i32 @readq(i32* %138)
  %140 = or i32 %139, 2
  %141 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %142 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %141, i32 0, i32 1
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = inttoptr i64 %146 to i32*
  %148 = load i32, i32* @CN23XX_SLI_GBL_CONTROL, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = call i32 @writeq(i32 %140, i32* %150)
  br label %152

152:                                              ; preds = %128, %122
  %153 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %154 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %169

157:                                              ; preds = %152
  %158 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %159 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %158, i32 0, i32 1
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to i32*
  %165 = load i32, i32* @CN23XX_SLI_OUT_BP_EN2_W1S, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = call i32 @writeq(i32 -1, i32* %167)
  br label %181

169:                                              ; preds = %152
  %170 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %171 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %170, i32 0, i32 1
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i64 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = inttoptr i64 %175 to i32*
  %177 = load i32, i32* @CN23XX_SLI_OUT_BP_EN_W1S, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = call i32 @writeq(i32 -1, i32* %179)
  br label %181

181:                                              ; preds = %169, %157
  ret void
}

declare dso_local i64 @CFG_GET_IS_SLI_BP_ON(i32) #1

declare dso_local i32 @octeon_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i64 @octeon_read_csr(%struct.octeon_device*, i32) #1

declare dso_local i32 @CN23XX_SLI_OQ_PKT_CONTROL(i64) #1

declare dso_local i32 @octeon_write_csr(%struct.octeon_device*, i32, i64) #1

declare dso_local i32 @cn23xx_pf_get_oq_ticks(%struct.octeon_device*, i64) #1

declare dso_local i64 @CFG_GET_OQ_INTR_TIME(i32) #1

declare dso_local i32 @CN23XX_SLI_OQ_PKT_INT_LEVELS(i64) #1

declare dso_local i32 @CFG_GET_OQ_INTR_PKT(i32) #1

declare dso_local i32 @writeq(i32, i32*) #1

declare dso_local i32 @readq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
