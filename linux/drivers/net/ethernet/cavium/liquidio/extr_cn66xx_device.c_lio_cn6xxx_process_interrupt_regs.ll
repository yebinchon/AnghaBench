; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn66xx_device.c_lio_cn6xxx_process_interrupt_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn66xx_device.c_lio_cn6xxx_process_interrupt_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, i64 }
%struct.octeon_cn6xxx = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@CN6XXX_INTR_ERR = common dso_local global i32 0, align 4
@CN6XXX_INTR_PKT_DATA = common dso_local global i32 0, align 4
@OCT_DEV_INTR_PKT_DATA = common dso_local global i32 0, align 4
@CN6XXX_INTR_DMA0_FORCE = common dso_local global i32 0, align 4
@OCT_DEV_INTR_DMA0_FORCE = common dso_local global i32 0, align 4
@CN6XXX_INTR_DMA1_FORCE = common dso_local global i32 0, align 4
@OCT_DEV_INTR_DMA1_FORCE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_cn6xxx_process_interrupt_regs(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca %struct.octeon_cn6xxx*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.octeon_device*
  store %struct.octeon_device* %8, %struct.octeon_device** %4, align 8
  %9 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %10 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.octeon_cn6xxx*
  store %struct.octeon_cn6xxx* %12, %struct.octeon_cn6xxx** %5, align 8
  %13 = load %struct.octeon_cn6xxx*, %struct.octeon_cn6xxx** %5, align 8
  %14 = getelementptr inbounds %struct.octeon_cn6xxx, %struct.octeon_cn6xxx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @readq(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %1
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %2, align 4
  br label %78

25:                                               ; preds = %19
  %26 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %27 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @CN6XXX_INTR_ERR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @lio_cn6xxx_process_pcie_error_intr(%struct.octeon_device* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %25
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @CN6XXX_INTR_PKT_DATA, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %43 = call i32 @lio_cn6xxx_process_droq_intr_regs(%struct.octeon_device* %42)
  %44 = load i32, i32* @OCT_DEV_INTR_PKT_DATA, align 4
  %45 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %46 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %41, %36
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @CN6XXX_INTR_DMA0_FORCE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, i32* @OCT_DEV_INTR_DMA0_FORCE, align 4
  %56 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %57 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %54, %49
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @CN6XXX_INTR_DMA1_FORCE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i32, i32* @OCT_DEV_INTR_DMA1_FORCE, align 4
  %67 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %68 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %65, %60
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.octeon_cn6xxx*, %struct.octeon_cn6xxx** %5, align 8
  %74 = getelementptr inbounds %struct.octeon_cn6xxx, %struct.octeon_cn6xxx* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @writeq(i32 %72, i32 %75)
  %77 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %71, %23
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @readq(i32) #1

declare dso_local i32 @lio_cn6xxx_process_pcie_error_intr(%struct.octeon_device*, i32) #1

declare dso_local i32 @lio_cn6xxx_process_droq_intr_regs(%struct.octeon_device*) #1

declare dso_local i32 @writeq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
