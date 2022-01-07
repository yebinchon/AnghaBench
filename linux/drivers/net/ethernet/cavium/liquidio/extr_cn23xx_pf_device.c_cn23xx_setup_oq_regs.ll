; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_setup_oq_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_setup_oq_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i64, %struct.octeon_droq** }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.octeon_droq = type { i32, i64, i64, i32*, i32* }
%struct.octeon_cn23xx_pf = type { i32 }

@CN23XX_PKT_OUTPUT_CTL_TENB = common dso_local global i64 0, align 8
@CN23XX_PKT_OUTPUT_CTL_CENB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i64)* @cn23xx_setup_oq_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cn23xx_setup_oq_regs(%struct.octeon_device* %0, i64 %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.octeon_droq*, align 8
  %7 = alloca %struct.octeon_cn23xx_pf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %11 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %10, i32 0, i32 4
  %12 = load %struct.octeon_droq**, %struct.octeon_droq*** %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.octeon_droq*, %struct.octeon_droq** %12, i64 %13
  %15 = load %struct.octeon_droq*, %struct.octeon_droq** %14, align 8
  store %struct.octeon_droq* %15, %struct.octeon_droq** %6, align 8
  %16 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.octeon_cn23xx_pf*
  store %struct.octeon_cn23xx_pf* %19, %struct.octeon_cn23xx_pf** %7, align 8
  %20 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %4, align 8
  %26 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @CN23XX_SLI_OQ_BASE_ADDR64(i64 %27)
  %29 = load %struct.octeon_droq*, %struct.octeon_droq** %6, align 8
  %30 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @octeon_write_csr64(%struct.octeon_device* %26, i32 %28, i32 %31)
  %33 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @CN23XX_SLI_OQ_SIZE(i64 %34)
  %36 = load %struct.octeon_droq*, %struct.octeon_droq** %6, align 8
  %37 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @octeon_write_csr(%struct.octeon_device* %33, i32 %35, i64 %38)
  %40 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @CN23XX_SLI_OQ_BUFF_INFO_SIZE(i64 %41)
  %43 = load %struct.octeon_droq*, %struct.octeon_droq** %6, align 8
  %44 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @octeon_write_csr(%struct.octeon_device* %40, i32 %42, i64 %45)
  %47 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %48 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @CN23XX_SLI_OQ_PKTS_SENT(i64 %54)
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load %struct.octeon_droq*, %struct.octeon_droq** %6, align 8
  %59 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %58, i32 0, i32 4
  store i32* %57, i32** %59, align 8
  %60 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %61 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @CN23XX_SLI_OQ_PKTS_CREDIT(i64 %67)
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load %struct.octeon_droq*, %struct.octeon_droq** %6, align 8
  %72 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %71, i32 0, i32 3
  store i32* %70, i32** %72, align 8
  %73 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %74 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %102, label %77

77:                                               ; preds = %2
  %78 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @CN23XX_SLI_OQ_PKT_CONTROL(i64 %79)
  %81 = call i64 @octeon_read_csr(%struct.octeon_device* %78, i32 %80)
  store i64 %81, i64* %5, align 8
  %82 = load i64, i64* @CN23XX_PKT_OUTPUT_CTL_TENB, align 8
  %83 = load i64, i64* %5, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %5, align 8
  %85 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %86 = load i64, i64* %4, align 8
  %87 = call i32 @CN23XX_SLI_OQ_PKT_CONTROL(i64 %86)
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @octeon_write_csr(%struct.octeon_device* %85, i32 %87, i64 %88)
  %90 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %91 = load i64, i64* %4, align 8
  %92 = call i32 @CN23XX_SLI_OQ_PKT_CONTROL(i64 %91)
  %93 = call i64 @octeon_read_csr(%struct.octeon_device* %90, i32 %92)
  store i64 %93, i64* %5, align 8
  %94 = load i64, i64* @CN23XX_PKT_OUTPUT_CTL_CENB, align 8
  %95 = load i64, i64* %5, align 8
  %96 = or i64 %95, %94
  store i64 %96, i64* %5, align 8
  %97 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %98 = load i64, i64* %4, align 8
  %99 = call i32 @CN23XX_SLI_OQ_PKT_CONTROL(i64 %98)
  %100 = load i64, i64* %5, align 8
  %101 = call i32 @octeon_write_csr(%struct.octeon_device* %97, i32 %99, i64 %100)
  br label %122

102:                                              ; preds = %2
  %103 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %104 = load %struct.octeon_cn23xx_pf*, %struct.octeon_cn23xx_pf** %7, align 8
  %105 = getelementptr inbounds %struct.octeon_cn23xx_pf, %struct.octeon_cn23xx_pf* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @CFG_GET_OQ_INTR_TIME(i32 %106)
  %108 = call i32 @cn23xx_pf_get_oq_ticks(%struct.octeon_device* %103, i64 %107)
  store i32 %108, i32* %8, align 4
  %109 = load %struct.octeon_cn23xx_pf*, %struct.octeon_cn23xx_pf** %7, align 8
  %110 = getelementptr inbounds %struct.octeon_cn23xx_pf, %struct.octeon_cn23xx_pf* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @CFG_GET_OQ_INTR_PKT(i32 %111)
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %9, align 4
  %114 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %115 = load i64, i64* %4, align 8
  %116 = call i32 @CN23XX_SLI_OQ_PKT_INT_LEVELS(i64 %115)
  %117 = load i32, i32* %8, align 4
  %118 = shl i32 %117, 32
  %119 = load i32, i32* %9, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @octeon_write_csr64(%struct.octeon_device* %114, i32 %116, i32 %120)
  br label %122

122:                                              ; preds = %102, %77
  ret void
}

declare dso_local i32 @octeon_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @CN23XX_SLI_OQ_BASE_ADDR64(i64) #1

declare dso_local i32 @octeon_write_csr(%struct.octeon_device*, i32, i64) #1

declare dso_local i32 @CN23XX_SLI_OQ_SIZE(i64) #1

declare dso_local i32 @CN23XX_SLI_OQ_BUFF_INFO_SIZE(i64) #1

declare dso_local i32 @CN23XX_SLI_OQ_PKTS_SENT(i64) #1

declare dso_local i32 @CN23XX_SLI_OQ_PKTS_CREDIT(i64) #1

declare dso_local i64 @octeon_read_csr(%struct.octeon_device*, i32) #1

declare dso_local i32 @CN23XX_SLI_OQ_PKT_CONTROL(i64) #1

declare dso_local i32 @cn23xx_pf_get_oq_ticks(%struct.octeon_device*, i64) #1

declare dso_local i64 @CFG_GET_OQ_INTR_TIME(i32) #1

declare dso_local i64 @CFG_GET_OQ_INTR_PKT(i32) #1

declare dso_local i32 @CN23XX_SLI_OQ_PKT_INT_LEVELS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
