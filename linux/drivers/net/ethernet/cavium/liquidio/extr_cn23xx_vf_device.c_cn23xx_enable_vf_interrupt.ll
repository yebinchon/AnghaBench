; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_vf_device.c_cn23xx_enable_vf_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_vf_device.c_cn23xx_enable_vf_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, i64 }
%struct.octeon_cn23xx_vf = type { i32 }

@OCTEON_OUTPUT_INTR = common dso_local global i32 0, align 4
@OCTEON_INPUT_INTR = common dso_local global i32 0, align 4
@CN23XX_PKT_IN_DONE_CNT_MASK = common dso_local global i32 0, align 4
@CN23XX_INTR_CINT_ENB = common dso_local global i32 0, align 4
@OCTEON_MBOX_INTR = common dso_local global i32 0, align 4
@CN23XX_INTR_MBOX_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i32)* @cn23xx_enable_vf_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cn23xx_enable_vf_interrupt(%struct.octeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.octeon_cn23xx_vf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.octeon_cn23xx_vf*
  store %struct.octeon_cn23xx_vf* %11, %struct.octeon_cn23xx_vf** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @OCTEON_OUTPUT_INTR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %42, %16
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %20 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %17
  %24 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %25 = load %struct.octeon_cn23xx_vf*, %struct.octeon_cn23xx_vf** %5, align 8
  %26 = getelementptr inbounds %struct.octeon_cn23xx_vf, %struct.octeon_cn23xx_vf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @CFG_GET_OQ_INTR_TIME(i32 %27)
  %29 = call i64 @cn23xx_vf_get_oq_ticks(%struct.octeon_device* %24, i64 %28)
  store i64 %29, i64* %7, align 8
  %30 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @CN23XX_VF_SLI_OQ_PKT_INT_LEVELS(i64 %31)
  %33 = load %struct.octeon_cn23xx_vf*, %struct.octeon_cn23xx_vf** %5, align 8
  %34 = getelementptr inbounds %struct.octeon_cn23xx_vf, %struct.octeon_cn23xx_vf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @CFG_GET_OQ_INTR_PKT(i32 %35)
  %37 = load i64, i64* %7, align 8
  %38 = trunc i64 %37 to i32
  %39 = shl i32 %38, 32
  %40 = or i32 %36, %39
  %41 = call i32 @octeon_write_csr64(%struct.octeon_device* %30, i32 %32, i32 %40)
  br label %42

42:                                               ; preds = %23
  %43 = load i64, i64* %6, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %6, align 8
  br label %17

45:                                               ; preds = %17
  br label %46

46:                                               ; preds = %45, %2
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @OCTEON_INPUT_INTR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %46
  store i64 0, i64* %6, align 8
  br label %52

52:                                               ; preds = %72, %51
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %55 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %52
  %59 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @CN23XX_VF_SLI_IQ_INSTR_COUNT64(i64 %60)
  %62 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @CN23XX_VF_SLI_IQ_INSTR_COUNT64(i64 %63)
  %65 = call i32 @octeon_read_csr64(%struct.octeon_device* %62, i32 %64)
  %66 = load i32, i32* @CN23XX_PKT_IN_DONE_CNT_MASK, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = load i32, i32* @CN23XX_INTR_CINT_ENB, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @octeon_write_csr64(%struct.octeon_device* %59, i32 %61, i32 %70)
  br label %72

72:                                               ; preds = %58
  %73 = load i64, i64* %6, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %6, align 8
  br label %52

75:                                               ; preds = %52
  br label %76

76:                                               ; preds = %75, %46
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @OCTEON_MBOX_INTR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %83 = call i32 @CN23XX_VF_SLI_PKT_MBOX_INT(i32 0)
  %84 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %85 = call i32 @CN23XX_VF_SLI_PKT_MBOX_INT(i32 0)
  %86 = call i32 @octeon_read_csr64(%struct.octeon_device* %84, i32 %85)
  %87 = load i32, i32* @CN23XX_INTR_MBOX_ENB, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @octeon_write_csr64(%struct.octeon_device* %82, i32 %83, i32 %88)
  br label %90

90:                                               ; preds = %81, %76
  ret void
}

declare dso_local i64 @cn23xx_vf_get_oq_ticks(%struct.octeon_device*, i64) #1

declare dso_local i64 @CFG_GET_OQ_INTR_TIME(i32) #1

declare dso_local i32 @octeon_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @CN23XX_VF_SLI_OQ_PKT_INT_LEVELS(i64) #1

declare dso_local i32 @CFG_GET_OQ_INTR_PKT(i32) #1

declare dso_local i32 @CN23XX_VF_SLI_IQ_INSTR_COUNT64(i64) #1

declare dso_local i32 @octeon_read_csr64(%struct.octeon_device*, i32) #1

declare dso_local i32 @CN23XX_VF_SLI_PKT_MBOX_INT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
