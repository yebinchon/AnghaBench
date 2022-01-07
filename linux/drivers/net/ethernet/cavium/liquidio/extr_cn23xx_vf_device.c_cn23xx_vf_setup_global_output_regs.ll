; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_vf_device.c_cn23xx_vf_setup_global_output_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_vf_device.c_cn23xx_vf_setup_global_output_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CN23XX_PKT_OUTPUT_CTL_IPTR = common dso_local global i64 0, align 8
@CN23XX_PKT_OUTPUT_CTL_DPTR = common dso_local global i64 0, align 8
@CN23XX_PKT_OUTPUT_CTL_BMODE = common dso_local global i64 0, align 8
@CN23XX_PKT_OUTPUT_CTL_ROR_P = common dso_local global i64 0, align 8
@CN23XX_PKT_OUTPUT_CTL_NSR_P = common dso_local global i64 0, align 8
@CN23XX_PKT_OUTPUT_CTL_ES_P = common dso_local global i64 0, align 8
@CN23XX_PKT_OUTPUT_CTL_ROR = common dso_local global i64 0, align 8
@CN23XX_PKT_OUTPUT_CTL_NSR = common dso_local global i64 0, align 8
@CN23XX_PKT_OUTPUT_CTL_ES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @cn23xx_vf_setup_global_output_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cn23xx_vf_setup_global_output_regs(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %65, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %8 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %6, %10
  br i1 %11, label %12, label %68

12:                                               ; preds = %5
  %13 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @CN23XX_VF_SLI_OQ_PKTS_CREDIT(i64 %14)
  %16 = call i32 @octeon_write_csr(%struct.octeon_device* %13, i32 %15, i64 4294967295)
  %17 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @CN23XX_VF_SLI_OQ_PKTS_SENT(i64 %18)
  %20 = call i64 @octeon_read_csr(%struct.octeon_device* %17, i32 %19)
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = and i64 %21, -1152921504606846977
  store i64 %22, i64* %3, align 8
  %23 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @CN23XX_VF_SLI_OQ_PKT_CONTROL(i64 %24)
  %26 = call i64 @octeon_read_csr(%struct.octeon_device* %23, i32 %25)
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* @CN23XX_PKT_OUTPUT_CTL_IPTR, align 8
  %28 = xor i64 %27, -1
  %29 = load i64, i64* %3, align 8
  %30 = and i64 %29, %28
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* @CN23XX_PKT_OUTPUT_CTL_DPTR, align 8
  %32 = load i64, i64* %3, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %3, align 8
  %34 = load i64, i64* @CN23XX_PKT_OUTPUT_CTL_BMODE, align 8
  %35 = xor i64 %34, -1
  %36 = load i64, i64* %3, align 8
  %37 = and i64 %36, %35
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* @CN23XX_PKT_OUTPUT_CTL_ROR_P, align 8
  %39 = xor i64 %38, -1
  %40 = load i64, i64* %3, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %3, align 8
  %42 = load i64, i64* @CN23XX_PKT_OUTPUT_CTL_NSR_P, align 8
  %43 = xor i64 %42, -1
  %44 = load i64, i64* %3, align 8
  %45 = and i64 %44, %43
  store i64 %45, i64* %3, align 8
  %46 = load i64, i64* @CN23XX_PKT_OUTPUT_CTL_ES_P, align 8
  %47 = load i64, i64* %3, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %3, align 8
  %49 = load i64, i64* @CN23XX_PKT_OUTPUT_CTL_ROR, align 8
  %50 = xor i64 %49, -1
  %51 = load i64, i64* %3, align 8
  %52 = and i64 %51, %50
  store i64 %52, i64* %3, align 8
  %53 = load i64, i64* @CN23XX_PKT_OUTPUT_CTL_NSR, align 8
  %54 = xor i64 %53, -1
  %55 = load i64, i64* %3, align 8
  %56 = and i64 %55, %54
  store i64 %56, i64* %3, align 8
  %57 = load i64, i64* @CN23XX_PKT_OUTPUT_CTL_ES, align 8
  %58 = load i64, i64* %3, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %3, align 8
  %60 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @CN23XX_VF_SLI_OQ_PKT_CONTROL(i64 %61)
  %63 = load i64, i64* %3, align 8
  %64 = call i32 @octeon_write_csr(%struct.octeon_device* %60, i32 %62, i64 %63)
  br label %65

65:                                               ; preds = %12
  %66 = load i64, i64* %4, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %4, align 8
  br label %5

68:                                               ; preds = %5
  ret void
}

declare dso_local i32 @octeon_write_csr(%struct.octeon_device*, i32, i64) #1

declare dso_local i32 @CN23XX_VF_SLI_OQ_PKTS_CREDIT(i64) #1

declare dso_local i64 @octeon_read_csr(%struct.octeon_device*, i32) #1

declare dso_local i32 @CN23XX_VF_SLI_OQ_PKTS_SENT(i64) #1

declare dso_local i32 @CN23XX_VF_SLI_OQ_PKT_CONTROL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
