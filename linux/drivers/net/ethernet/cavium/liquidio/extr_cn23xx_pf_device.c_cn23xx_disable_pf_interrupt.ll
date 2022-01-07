; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_disable_pf_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_disable_pf_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.octeon_cn23xx_pf = type { i32 }

@OCTEON_ALL_INTR = common dso_local global i32 0, align 4
@OCTEON_OUTPUT_INTR = common dso_local global i32 0, align 4
@CN23XX_INTR_PKT_DATA = common dso_local global i32 0, align 4
@OCTEON_MBOX_INTR = common dso_local global i32 0, align 4
@OCTEON_CN23XX_REV_1_1 = common dso_local global i64 0, align 8
@CN23XX_INTR_VF_MBOX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i32)* @cn23xx_disable_pf_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cn23xx_disable_pf_interrupt(%struct.octeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.octeon_cn23xx_pf*, align 8
  %6 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.octeon_cn23xx_pf*
  store %struct.octeon_cn23xx_pf* %10, %struct.octeon_cn23xx_pf** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @OCTEON_ALL_INTR, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.octeon_cn23xx_pf*, %struct.octeon_cn23xx_pf** %5, align 8
  %16 = getelementptr inbounds %struct.octeon_cn23xx_pf, %struct.octeon_cn23xx_pf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @writeq(i32 0, i32 %17)
  br label %72

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @OCTEON_OUTPUT_INTR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load %struct.octeon_cn23xx_pf*, %struct.octeon_cn23xx_pf** %5, align 8
  %26 = getelementptr inbounds %struct.octeon_cn23xx_pf, %struct.octeon_cn23xx_pf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @readq(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @CN23XX_INTR_PKT_DATA, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.octeon_cn23xx_pf*, %struct.octeon_cn23xx_pf** %5, align 8
  %35 = getelementptr inbounds %struct.octeon_cn23xx_pf, %struct.octeon_cn23xx_pf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @writeq(i32 %33, i32 %36)
  br label %71

38:                                               ; preds = %19
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @OCTEON_MBOX_INTR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %38
  %44 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %45 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %43
  %50 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %51 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @OCTEON_CN23XX_REV_1_1, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %49
  %56 = load %struct.octeon_cn23xx_pf*, %struct.octeon_cn23xx_pf** %5, align 8
  %57 = getelementptr inbounds %struct.octeon_cn23xx_pf, %struct.octeon_cn23xx_pf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @readq(i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* @CN23XX_INTR_VF_MBOX, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.octeon_cn23xx_pf*, %struct.octeon_cn23xx_pf** %5, align 8
  %66 = getelementptr inbounds %struct.octeon_cn23xx_pf, %struct.octeon_cn23xx_pf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @writeq(i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %55, %49
  br label %70

70:                                               ; preds = %69, %43, %38
  br label %71

71:                                               ; preds = %70, %24
  br label %72

72:                                               ; preds = %71, %14
  ret void
}

declare dso_local i32 @writeq(i32, i32) #1

declare dso_local i32 @readq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
