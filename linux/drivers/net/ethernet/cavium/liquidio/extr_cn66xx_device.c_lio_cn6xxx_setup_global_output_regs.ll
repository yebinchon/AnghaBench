; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn66xx_device.c_lio_cn6xxx_setup_global_output_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn66xx_device.c_lio_cn6xxx_setup_global_output_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, i64 }
%struct.octeon_cn6xxx = type { i32 }

@CN6XXX_SLI_PKT_PCIE_PORT64 = common dso_local global i32 0, align 4
@CN6XXX_SLI_OQ_WMARK = common dso_local global i32 0, align 4
@CN6XXX_SLI_PKT_OUT_BMODE = common dso_local global i32 0, align 4
@CN6XXX_SLI_PKT_DPADDR = common dso_local global i32 0, align 4
@CN6XXX_SLI_PKT_SLIST_ROR = common dso_local global i32 0, align 4
@CN6XXX_SLI_PKT_SLIST_NS = common dso_local global i32 0, align 4
@CN6XXX_SLI_PKT_SLIST_ES64 = common dso_local global i32 0, align 4
@CN6XXX_SLI_PKT_DATA_OUT_ROR = common dso_local global i32 0, align 4
@CN6XXX_SLI_PKT_DATA_OUT_NS = common dso_local global i32 0, align 4
@CN6XXX_SLI_PKT_DATA_OUT_ES64 = common dso_local global i32 0, align 4
@CN6XXX_SLI_OQ_INT_LEVEL_PKTS = common dso_local global i32 0, align 4
@CN6XXX_SLI_OQ_INT_LEVEL_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lio_cn6xxx_setup_global_output_regs(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_cn6xxx*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %5 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %6 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.octeon_cn6xxx*
  store %struct.octeon_cn6xxx* %8, %struct.octeon_cn6xxx** %4, align 8
  %9 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %10 = load i32, i32* @CN6XXX_SLI_PKT_PCIE_PORT64, align 4
  %11 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %12 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 6148914691236517205
  %16 = trunc i64 %15 to i32
  %17 = call i32 @octeon_write_csr64(%struct.octeon_device* %9, i32 %10, i32 %16)
  %18 = load %struct.octeon_cn6xxx*, %struct.octeon_cn6xxx** %4, align 8
  %19 = getelementptr inbounds %struct.octeon_cn6xxx, %struct.octeon_cn6xxx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @CFG_GET_IS_SLI_BP_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %25 = load i32, i32* @CN6XXX_SLI_OQ_WMARK, align 4
  %26 = call i32 @octeon_write_csr64(%struct.octeon_device* %24, i32 %25, i32 32)
  br label %31

27:                                               ; preds = %1
  %28 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %29 = load i32, i32* @CN6XXX_SLI_OQ_WMARK, align 4
  %30 = call i32 @octeon_write_csr64(%struct.octeon_device* %28, i32 %29, i32 0)
  br label %31

31:                                               ; preds = %27, %23
  %32 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %33 = load i32, i32* @CN6XXX_SLI_PKT_OUT_BMODE, align 4
  %34 = call i32 @octeon_write_csr(%struct.octeon_device* %32, i32 %33, i32 0)
  %35 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %36 = load i32, i32* @CN6XXX_SLI_PKT_DPADDR, align 4
  %37 = call i32 @octeon_write_csr(%struct.octeon_device* %35, i32 %36, i32 -1)
  %38 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %39 = load i32, i32* @CN6XXX_SLI_PKT_SLIST_ROR, align 4
  %40 = call i32 @octeon_write_csr(%struct.octeon_device* %38, i32 %39, i32 0)
  %41 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %42 = load i32, i32* @CN6XXX_SLI_PKT_SLIST_NS, align 4
  %43 = call i32 @octeon_write_csr(%struct.octeon_device* %41, i32 %42, i32 0)
  %44 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %45 = load i32, i32* @CN6XXX_SLI_PKT_SLIST_ES64, align 4
  %46 = call i32 @octeon_write_csr64(%struct.octeon_device* %44, i32 %45, i32 0)
  %47 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %48 = load i32, i32* @CN6XXX_SLI_PKT_DATA_OUT_ROR, align 4
  %49 = call i32 @octeon_write_csr(%struct.octeon_device* %47, i32 %48, i32 0)
  %50 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %51 = load i32, i32* @CN6XXX_SLI_PKT_DATA_OUT_NS, align 4
  %52 = call i32 @octeon_write_csr(%struct.octeon_device* %50, i32 %51, i32 0)
  %53 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %54 = load i32, i32* @CN6XXX_SLI_PKT_DATA_OUT_ES64, align 4
  %55 = call i32 @octeon_write_csr64(%struct.octeon_device* %53, i32 %54, i32 1431655765)
  %56 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %57 = load i32, i32* @CN6XXX_SLI_OQ_INT_LEVEL_PKTS, align 4
  %58 = load %struct.octeon_cn6xxx*, %struct.octeon_cn6xxx** %4, align 8
  %59 = getelementptr inbounds %struct.octeon_cn6xxx, %struct.octeon_cn6xxx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @CFG_GET_OQ_INTR_PKT(i32 %60)
  %62 = trunc i64 %61 to i32
  %63 = call i32 @octeon_write_csr(%struct.octeon_device* %56, i32 %57, i32 %62)
  %64 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %65 = load %struct.octeon_cn6xxx*, %struct.octeon_cn6xxx** %4, align 8
  %66 = getelementptr inbounds %struct.octeon_cn6xxx, %struct.octeon_cn6xxx* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @CFG_GET_OQ_INTR_TIME(i32 %67)
  %69 = trunc i64 %68 to i32
  %70 = call i32 @lio_cn6xxx_get_oq_ticks(%struct.octeon_device* %64, i32 %69)
  store i32 %70, i32* %3, align 4
  %71 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %72 = load i32, i32* @CN6XXX_SLI_OQ_INT_LEVEL_TIME, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @octeon_write_csr(%struct.octeon_device* %71, i32 %72, i32 %73)
  ret void
}

declare dso_local i32 @octeon_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i64 @CFG_GET_IS_SLI_BP_ON(i32) #1

declare dso_local i32 @octeon_write_csr(%struct.octeon_device*, i32, i32) #1

declare dso_local i64 @CFG_GET_OQ_INTR_PKT(i32) #1

declare dso_local i32 @lio_cn6xxx_get_oq_ticks(%struct.octeon_device*, i32) #1

declare dso_local i64 @CFG_GET_OQ_INTR_TIME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
