; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn66xx_device.c_lio_cn6xxx_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn66xx_device.c_lio_cn6xxx_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CN6XXX_WIN_WR_MASK_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"BIST enabled for soft reset\0A\00", align 1
@CN6XXX_CIU_SOFT_BIST = common dso_local global i32 0, align 4
@CN6XXX_SLI_SCRATCH1 = common dso_local global i32 0, align 4
@CN6XXX_CIU_SOFT_RST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Soft reset failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Reset completed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_cn6xxx_soft_reset(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  %4 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %5 = load i32, i32* @CN6XXX_WIN_WR_MASK_REG, align 4
  %6 = call i32 @octeon_write_csr64(%struct.octeon_device* %4, i32 %5, i32 255)
  %7 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %13 = load i32, i32* @CN6XXX_CIU_SOFT_BIST, align 4
  %14 = call i32 @lio_pci_writeq(%struct.octeon_device* %12, i32 1, i32 %13)
  %15 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %16 = load i32, i32* @CN6XXX_SLI_SCRATCH1, align 4
  %17 = call i32 @octeon_write_csr64(%struct.octeon_device* %15, i32 %16, i32 4660)
  %18 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %19 = load i32, i32* @CN6XXX_CIU_SOFT_RST, align 4
  %20 = call i32 @lio_pci_readq(%struct.octeon_device* %18, i32 %19)
  %21 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %22 = load i32, i32* @CN6XXX_CIU_SOFT_RST, align 4
  %23 = call i32 @lio_pci_writeq(%struct.octeon_device* %21, i32 1, i32 %22)
  %24 = call i32 @mdelay(i32 100)
  %25 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %26 = load i32, i32* @CN6XXX_SLI_SCRATCH1, align 4
  %27 = call i64 @octeon_read_csr64(%struct.octeon_device* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %31 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %44

35:                                               ; preds = %1
  %36 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %37 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @dev_dbg(i32* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %42 = load i32, i32* @CN6XXX_WIN_WR_MASK_REG, align 4
  %43 = call i32 @octeon_write_csr64(%struct.octeon_device* %41, i32 %42, i32 255)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %35, %29
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @octeon_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @lio_pci_writeq(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @lio_pci_readq(%struct.octeon_device*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @octeon_read_csr64(%struct.octeon_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
