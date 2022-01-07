; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_vf_device.c_cn23xx_setup_vf_iq_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_vf_device.c_cn23xx_setup_vf_iq_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.octeon_instr_queue** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.octeon_instr_queue = type { i64, i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"InstQ[%d]:dbell reg @ 0x%p instcnt_reg @ 0x%p\0A\00", align 1
@CN23XX_INTR_CINT_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i64)* @cn23xx_setup_vf_iq_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cn23xx_setup_vf_iq_regs(%struct.octeon_device* %0, i64 %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.octeon_instr_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %7, i32 0, i32 3
  %9 = load %struct.octeon_instr_queue**, %struct.octeon_instr_queue*** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %9, i64 %10
  %12 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %11, align 8
  store %struct.octeon_instr_queue* %12, %struct.octeon_instr_queue** %5, align 8
  %13 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @CN23XX_VF_SLI_IQ_BASE_ADDR64(i64 %14)
  %16 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %5, align 8
  %17 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @octeon_write_csr64(%struct.octeon_device* %13, i32 %15, i32 %18)
  %20 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @CN23XX_VF_SLI_IQ_SIZE(i64 %21)
  %23 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %5, align 8
  %24 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @octeon_write_csr(%struct.octeon_device* %20, i32 %22, i32 %25)
  %27 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %28 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @CN23XX_VF_SLI_IQ_DOORBELL(i64 %34)
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %5, align 8
  %39 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %41 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @CN23XX_VF_SLI_IQ_INSTR_COUNT64(i64 %47)
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %5, align 8
  %52 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  %53 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %54 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %4, align 8
  %58 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %5, align 8
  %59 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %5, align 8
  %62 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @dev_dbg(i32* %56, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %57, i32* %60, i32* %63)
  %65 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %5, align 8
  %66 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @readq(i32* %67)
  store i32 %68, i32* %6, align 4
  %69 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %70 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %2
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @CN23XX_INTR_CINT_ENB, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %5, align 8
  %78 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @writeq(i32 %76, i32* %79)
  br label %81

81:                                               ; preds = %73, %2
  %82 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %5, align 8
  %83 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  ret void
}

declare dso_local i32 @octeon_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @CN23XX_VF_SLI_IQ_BASE_ADDR64(i64) #1

declare dso_local i32 @octeon_write_csr(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @CN23XX_VF_SLI_IQ_SIZE(i64) #1

declare dso_local i32 @CN23XX_VF_SLI_IQ_DOORBELL(i64) #1

declare dso_local i32 @CN23XX_VF_SLI_IQ_INSTR_COUNT64(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32*, i32*) #1

declare dso_local i32 @readq(i32*) #1

declare dso_local i32 @writeq(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
