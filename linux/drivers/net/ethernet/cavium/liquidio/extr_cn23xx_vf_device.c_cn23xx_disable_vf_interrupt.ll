; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_vf_device.c_cn23xx_disable_vf_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_vf_device.c_cn23xx_disable_vf_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64 }

@OCTEON_OUTPUT_INTR = common dso_local global i32 0, align 4
@OCTEON_INPUT_INTR = common dso_local global i32 0, align 4
@CN23XX_INTR_CINT_ENB = common dso_local global i32 0, align 4
@CN23XX_PKT_IN_DONE_CNT_MASK = common dso_local global i32 0, align 4
@OCTEON_MBOX_INTR = common dso_local global i32 0, align 4
@CN23XX_INTR_MBOX_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i32)* @cn23xx_disable_vf_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cn23xx_disable_vf_interrupt(%struct.octeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @OCTEON_OUTPUT_INTR, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %22, %10
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @CN23XX_VF_SLI_OQ_PKT_INT_LEVELS(i64 %19)
  %21 = call i32 @octeon_write_csr64(%struct.octeon_device* %18, i32 %20, i32 -1)
  br label %22

22:                                               ; preds = %17
  %23 = load i64, i64* %5, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %5, align 8
  br label %11

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25, %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @OCTEON_INPUT_INTR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %26
  store i64 0, i64* %5, align 8
  br label %32

32:                                               ; preds = %52, %31
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %35 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %32
  %39 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @CN23XX_VF_SLI_IQ_INSTR_COUNT64(i64 %40)
  %42 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @CN23XX_VF_SLI_IQ_INSTR_COUNT64(i64 %43)
  %45 = call i32 @octeon_read_csr64(%struct.octeon_device* %42, i32 %44)
  %46 = load i32, i32* @CN23XX_INTR_CINT_ENB, align 4
  %47 = load i32, i32* @CN23XX_PKT_IN_DONE_CNT_MASK, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %45, %49
  %51 = call i32 @octeon_write_csr64(%struct.octeon_device* %39, i32 %41, i32 %50)
  br label %52

52:                                               ; preds = %38
  %53 = load i64, i64* %5, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %5, align 8
  br label %32

55:                                               ; preds = %32
  br label %56

56:                                               ; preds = %55, %26
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @OCTEON_MBOX_INTR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %63 = call i32 @CN23XX_VF_SLI_PKT_MBOX_INT(i32 0)
  %64 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %65 = call i32 @CN23XX_VF_SLI_PKT_MBOX_INT(i32 0)
  %66 = call i32 @octeon_read_csr64(%struct.octeon_device* %64, i32 %65)
  %67 = load i32, i32* @CN23XX_INTR_MBOX_ENB, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = call i32 @octeon_write_csr64(%struct.octeon_device* %62, i32 %63, i32 %69)
  br label %71

71:                                               ; preds = %61, %56
  ret void
}

declare dso_local i32 @octeon_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @CN23XX_VF_SLI_OQ_PKT_INT_LEVELS(i64) #1

declare dso_local i32 @CN23XX_VF_SLI_IQ_INSTR_COUNT64(i64) #1

declare dso_local i32 @octeon_read_csr64(%struct.octeon_device*, i32) #1

declare dso_local i32 @CN23XX_VF_SLI_PKT_MBOX_INT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
