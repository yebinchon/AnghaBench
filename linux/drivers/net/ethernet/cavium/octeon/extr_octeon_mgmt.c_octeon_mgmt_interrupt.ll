; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.octeon_mgmt = type { i32, i32, i64 }
%union.cvmx_mixx_isr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@MIX_ISR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @octeon_mgmt_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_mgmt_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.octeon_mgmt*, align 8
  %7 = alloca %union.cvmx_mixx_isr, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.net_device*
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.octeon_mgmt* @netdev_priv(%struct.net_device* %10)
  store %struct.octeon_mgmt* %11, %struct.octeon_mgmt** %6, align 8
  %12 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %6, align 8
  %13 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MIX_ISR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @cvmx_read_csr(i64 %16)
  %18 = bitcast %union.cvmx_mixx_isr* %7 to i32*
  store i32 %17, i32* %18, align 8
  %19 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %6, align 8
  %20 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MIX_ISR, align 8
  %23 = add nsw i64 %21, %22
  %24 = bitcast %union.cvmx_mixx_isr* %7 to i32*
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @cvmx_write_csr(i64 %23, i32 %25)
  %27 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %6, align 8
  %28 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MIX_ISR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @cvmx_read_csr(i64 %31)
  %33 = bitcast %union.cvmx_mixx_isr* %7 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %2
  %38 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %6, align 8
  %39 = call i32 @octeon_mgmt_disable_rx_irq(%struct.octeon_mgmt* %38)
  %40 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %6, align 8
  %41 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %40, i32 0, i32 1
  %42 = call i32 @napi_schedule(i32* %41)
  br label %43

43:                                               ; preds = %37, %2
  %44 = bitcast %union.cvmx_mixx_isr* %7 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %6, align 8
  %50 = call i32 @octeon_mgmt_disable_tx_irq(%struct.octeon_mgmt* %49)
  %51 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %6, align 8
  %52 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %51, i32 0, i32 0
  %53 = call i32 @tasklet_schedule(i32* %52)
  br label %54

54:                                               ; preds = %48, %43
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %55
}

declare dso_local %struct.octeon_mgmt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cvmx_read_csr(i64) #1

declare dso_local i32 @cvmx_write_csr(i64, i32) #1

declare dso_local i32 @octeon_mgmt_disable_rx_irq(%struct.octeon_mgmt*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @octeon_mgmt_disable_tx_irq(%struct.octeon_mgmt*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
