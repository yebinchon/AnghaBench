; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_vf_device.c_cn23xx_setup_vf_oq_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_vf_device.c_cn23xx_setup_vf_oq_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__*, %struct.octeon_droq** }
%struct.TYPE_2__ = type { i64 }
%struct.octeon_droq = type { i32*, i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i64)* @cn23xx_setup_vf_oq_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cn23xx_setup_vf_oq_regs(%struct.octeon_device* %0, i64 %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.octeon_droq*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %6, i32 0, i32 1
  %8 = load %struct.octeon_droq**, %struct.octeon_droq*** %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.octeon_droq*, %struct.octeon_droq** %8, i64 %9
  %11 = load %struct.octeon_droq*, %struct.octeon_droq** %10, align 8
  store %struct.octeon_droq* %11, %struct.octeon_droq** %5, align 8
  %12 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @CN23XX_VF_SLI_OQ_BASE_ADDR64(i64 %13)
  %15 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %16 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @octeon_write_csr64(%struct.octeon_device* %12, i32 %14, i32 %17)
  %19 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @CN23XX_VF_SLI_OQ_SIZE(i64 %20)
  %22 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %23 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @octeon_write_csr(%struct.octeon_device* %19, i32 %21, i32 %24)
  %26 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @CN23XX_VF_SLI_OQ_BUFF_INFO_SIZE(i64 %27)
  %29 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %30 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @octeon_write_csr(%struct.octeon_device* %26, i32 %28, i32 %31)
  %33 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %34 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @CN23XX_VF_SLI_OQ_PKTS_SENT(i64 %40)
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %45 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %47 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32*
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @CN23XX_VF_SLI_OQ_PKTS_CREDIT(i64 %53)
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %58 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %57, i32 0, i32 0
  store i32* %56, i32** %58, align 8
  ret void
}

declare dso_local i32 @octeon_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @CN23XX_VF_SLI_OQ_BASE_ADDR64(i64) #1

declare dso_local i32 @octeon_write_csr(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @CN23XX_VF_SLI_OQ_SIZE(i64) #1

declare dso_local i32 @CN23XX_VF_SLI_OQ_BUFF_INFO_SIZE(i64) #1

declare dso_local i32 @CN23XX_VF_SLI_OQ_PKTS_SENT(i64) #1

declare dso_local i32 @CN23XX_VF_SLI_OQ_PKTS_CREDIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
