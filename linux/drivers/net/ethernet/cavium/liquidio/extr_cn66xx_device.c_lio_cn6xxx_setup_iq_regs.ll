; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn66xx_device.c_lio_cn6xxx_setup_iq_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn66xx_device.c_lio_cn6xxx_setup_iq_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.octeon_instr_queue** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.octeon_instr_queue = type { i64, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"InstQ[%d]:dbell reg @ 0x%p instcnt_reg @ 0x%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lio_cn6xxx_setup_iq_regs(%struct.octeon_device* %0, i64 %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.octeon_instr_queue*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %6, i32 0, i32 2
  %8 = load %struct.octeon_instr_queue**, %struct.octeon_instr_queue*** %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %8, i64 %9
  %11 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %10, align 8
  store %struct.octeon_instr_queue* %11, %struct.octeon_instr_queue** %5, align 8
  %12 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @CN6XXX_SLI_IQ_PKT_INSTR_HDR64(i64 %13)
  %15 = call i32 @octeon_write_csr64(%struct.octeon_device* %12, i32 %14, i32 0)
  %16 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @CN6XXX_SLI_IQ_BASE_ADDR64(i64 %17)
  %19 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %5, align 8
  %20 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @octeon_write_csr64(%struct.octeon_device* %16, i32 %18, i32 %21)
  %23 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @CN6XXX_SLI_IQ_SIZE(i64 %24)
  %26 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %5, align 8
  %27 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @octeon_write_csr(%struct.octeon_device* %23, i32 %25, i32 %28)
  %30 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %31 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @CN6XXX_SLI_IQ_DOORBELL(i64 %36)
  %38 = add nsw i64 %35, %37
  %39 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %5, align 8
  %40 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %42 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @CN6XXX_SLI_IQ_INSTR_COUNT(i64 %47)
  %49 = add nsw i64 %46, %48
  %50 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %5, align 8
  %51 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %53 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %4, align 8
  %57 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %5, align 8
  %58 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %5, align 8
  %61 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @dev_dbg(i32* %55, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %56, i64 %59, i64 %62)
  %64 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %5, align 8
  %65 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @readl(i64 %66)
  %68 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %5, align 8
  %69 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  ret void
}

declare dso_local i32 @octeon_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @CN6XXX_SLI_IQ_PKT_INSTR_HDR64(i64) #1

declare dso_local i32 @CN6XXX_SLI_IQ_BASE_ADDR64(i64) #1

declare dso_local i32 @octeon_write_csr(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @CN6XXX_SLI_IQ_SIZE(i64) #1

declare dso_local i64 @CN6XXX_SLI_IQ_DOORBELL(i64) #1

declare dso_local i64 @CN6XXX_SLI_IQ_INSTR_COUNT(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i64, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
