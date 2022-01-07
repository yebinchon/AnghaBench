; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn68xx_device.c_lio_cn68xx_setup_pkt_ctl_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn68xx_device.c_lio_cn68xx_setup_pkt_ctl_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64 }
%struct.octeon_cn6xxx = type { i32 }

@CN6XXX_SLI_PKT_CTL = common dso_local global i32 0, align 4
@cn6xxx = common dso_local global i32 0, align 4
@CN68XX_SLI_TX_PIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @lio_cn68xx_setup_pkt_ctl_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_cn68xx_setup_pkt_ctl_regs(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca %struct.octeon_cn6xxx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %7 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %8 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.octeon_cn6xxx*
  store %struct.octeon_cn6xxx* %10, %struct.octeon_cn6xxx** %3, align 8
  %11 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %12 = load i32, i32* @CN6XXX_SLI_PKT_CTL, align 4
  %13 = call i32 @octeon_read_csr64(%struct.octeon_device* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %15 = load i32, i32* @cn6xxx, align 4
  %16 = call i32 @CHIP_CONF(%struct.octeon_device* %14, i32 %15)
  %17 = call i32 @CFG_GET_OQ_MAX_Q(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %19 = load i32, i32* @CN68XX_SLI_TX_PIPE, align 4
  %20 = call i32 @octeon_read_csr64(%struct.octeon_device* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = and i64 %22, -16711681
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 %25, 16
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %30 = load i32, i32* @CN68XX_SLI_TX_PIPE, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @octeon_write_csr64(%struct.octeon_device* %29, i32 %30, i32 %31)
  %33 = load %struct.octeon_cn6xxx*, %struct.octeon_cn6xxx** %3, align 8
  %34 = getelementptr inbounds %struct.octeon_cn6xxx, %struct.octeon_cn6xxx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @CFG_GET_IS_SLI_BP_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %1
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, 15
  store i32 %40, i32* %4, align 4
  br label %44

41:                                               ; preds = %1
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, -16
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %46 = load i32, i32* @CN6XXX_SLI_PKT_CTL, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @octeon_write_csr64(%struct.octeon_device* %45, i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @octeon_read_csr64(%struct.octeon_device*, i32) #1

declare dso_local i32 @CFG_GET_OQ_MAX_Q(i32) #1

declare dso_local i32 @CHIP_CONF(%struct.octeon_device*, i32) #1

declare dso_local i32 @octeon_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i64 @CFG_GET_IS_SLI_BP_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
