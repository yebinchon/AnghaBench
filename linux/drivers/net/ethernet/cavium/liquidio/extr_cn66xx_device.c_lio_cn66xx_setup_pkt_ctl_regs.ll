; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn66xx_device.c_lio_cn66xx_setup_pkt_ctl_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn66xx_device.c_lio_cn66xx_setup_pkt_ctl_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64 }
%struct.octeon_cn6xxx = type { i32 }

@CN6XXX_SLI_PKT_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @lio_cn66xx_setup_pkt_ctl_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_cn66xx_setup_pkt_ctl_regs(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_cn6xxx*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %5 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %6 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.octeon_cn6xxx*
  store %struct.octeon_cn6xxx* %8, %struct.octeon_cn6xxx** %4, align 8
  %9 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %10 = load i32, i32* @CN6XXX_SLI_PKT_CTL, align 4
  %11 = call i32 @octeon_read_csr64(%struct.octeon_device* %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.octeon_cn6xxx*, %struct.octeon_cn6xxx** %4, align 8
  %13 = getelementptr inbounds %struct.octeon_cn6xxx, %struct.octeon_cn6xxx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @CFG_GET_OQ_MAX_Q(i32 %14)
  %16 = icmp sle i32 %15, 4
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, -17
  store i32 %19, i32* %3, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, 16
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.octeon_cn6xxx*, %struct.octeon_cn6xxx** %4, align 8
  %25 = getelementptr inbounds %struct.octeon_cn6xxx, %struct.octeon_cn6xxx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @CFG_GET_IS_SLI_BP_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, 15
  store i32 %31, i32* %3, align 4
  br label %35

32:                                               ; preds = %23
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, -16
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %37 = load i32, i32* @CN6XXX_SLI_PKT_CTL, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @octeon_write_csr64(%struct.octeon_device* %36, i32 %37, i32 %38)
  ret void
}

declare dso_local i32 @octeon_read_csr64(%struct.octeon_device*, i32) #1

declare dso_local i32 @CFG_GET_OQ_MAX_Q(i32) #1

declare dso_local i64 @CFG_GET_IS_SLI_BP_ON(i32) #1

declare dso_local i32 @octeon_write_csr64(%struct.octeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
