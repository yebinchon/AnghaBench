; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_liquidio_legacy_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_liquidio_legacy_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 (%struct.octeon_device.0*)*, i32 (%struct.octeon_device.1*, i32)*, i32 (%struct.octeon_device.2*, i32)* }
%struct.octeon_device.0 = type opaque
%struct.octeon_device.1 = type opaque
%struct.octeon_device.2 = type opaque

@OCTEON_ALL_INTR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i64 0, align 8
@OCT_DEV_IN_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @liquidio_legacy_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @liquidio_legacy_intr_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.octeon_device*
  store %struct.octeon_device* %8, %struct.octeon_device** %5, align 8
  %9 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %10 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32 (%struct.octeon_device.2*, i32)*, i32 (%struct.octeon_device.2*, i32)** %11, align 8
  %13 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %14 = bitcast %struct.octeon_device* %13 to %struct.octeon_device.2*
  %15 = load i32, i32* @OCTEON_ALL_INTR, align 4
  %16 = call i32 %12(%struct.octeon_device.2* %14, i32 %15)
  %17 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %18 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64 (%struct.octeon_device.0*)*, i64 (%struct.octeon_device.0*)** %19, align 8
  %21 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %22 = bitcast %struct.octeon_device* %21 to %struct.octeon_device.0*
  %23 = call i64 %20(%struct.octeon_device.0* %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @IRQ_HANDLED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %29 = call i32 @liquidio_schedule_droq_pkt_handlers(%struct.octeon_device* %28)
  br label %30

30:                                               ; preds = %27, %2
  %31 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %32 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %31, i32 0, i32 1
  %33 = call i64 @atomic_read(i32* %32)
  %34 = load i64, i64* @OCT_DEV_IN_RESET, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %30
  %37 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %38 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32 (%struct.octeon_device.1*, i32)*, i32 (%struct.octeon_device.1*, i32)** %39, align 8
  %41 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %42 = bitcast %struct.octeon_device* %41 to %struct.octeon_device.1*
  %43 = load i32, i32* @OCTEON_ALL_INTR, align 4
  %44 = call i32 %40(%struct.octeon_device.1* %42, i32 %43)
  br label %45

45:                                               ; preds = %36, %30
  %46 = load i64, i64* %6, align 8
  ret i64 %46
}

declare dso_local i32 @liquidio_schedule_droq_pkt_handlers(%struct.octeon_device*) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
