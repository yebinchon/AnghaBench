; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_enable_pf_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_enable_pf_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.octeon_cn23xx_pf = type { i32, i32 }

@OCTEON_ALL_INTR = common dso_local global i32 0, align 4
@OCTEON_OUTPUT_INTR = common dso_local global i32 0, align 4
@CN23XX_INTR_PKT_DATA = common dso_local global i32 0, align 4
@OCTEON_MBOX_INTR = common dso_local global i32 0, align 4
@OCTEON_CN23XX_REV_1_1 = common dso_local global i64 0, align 8
@CN23XX_INTR_VF_MBOX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i32)* @cn23xx_enable_pf_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cn23xx_enable_pf_interrupt(%struct.octeon_device* %0, i32 %1) #0 {
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
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.octeon_cn23xx_pf*, %struct.octeon_cn23xx_pf** %5, align 8
  %16 = getelementptr inbounds %struct.octeon_cn23xx_pf, %struct.octeon_cn23xx_pf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.octeon_cn23xx_pf*, %struct.octeon_cn23xx_pf** %5, align 8
  %19 = getelementptr inbounds %struct.octeon_cn23xx_pf, %struct.octeon_cn23xx_pf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @writeq(i32 %17, i32 %20)
  br label %73

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @OCTEON_OUTPUT_INTR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.octeon_cn23xx_pf*, %struct.octeon_cn23xx_pf** %5, align 8
  %29 = getelementptr inbounds %struct.octeon_cn23xx_pf, %struct.octeon_cn23xx_pf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @readq(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @CN23XX_INTR_PKT_DATA, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.octeon_cn23xx_pf*, %struct.octeon_cn23xx_pf** %5, align 8
  %37 = getelementptr inbounds %struct.octeon_cn23xx_pf, %struct.octeon_cn23xx_pf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @writeq(i32 %35, i32 %38)
  br label %72

40:                                               ; preds = %22
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @OCTEON_MBOX_INTR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %40
  %46 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %47 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %45
  %52 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %53 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @OCTEON_CN23XX_REV_1_1, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load %struct.octeon_cn23xx_pf*, %struct.octeon_cn23xx_pf** %5, align 8
  %59 = getelementptr inbounds %struct.octeon_cn23xx_pf, %struct.octeon_cn23xx_pf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @readq(i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* @CN23XX_INTR_VF_MBOX, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.octeon_cn23xx_pf*, %struct.octeon_cn23xx_pf** %5, align 8
  %67 = getelementptr inbounds %struct.octeon_cn23xx_pf, %struct.octeon_cn23xx_pf* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @writeq(i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %57, %51
  br label %71

71:                                               ; preds = %70, %45, %40
  br label %72

72:                                               ; preds = %71, %27
  br label %73

73:                                               ; preds = %72, %14
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
