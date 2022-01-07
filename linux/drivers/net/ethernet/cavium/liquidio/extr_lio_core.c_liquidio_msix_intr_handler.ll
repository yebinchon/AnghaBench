; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_liquidio_msix_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_liquidio_msix_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_ioq_vector = type { i64, %struct.octeon_device* }
%struct.octeon_device = type { %struct.TYPE_2__, %struct.octeon_droq** }
%struct.TYPE_2__ = type { i32 (%struct.octeon_ioq_vector*)* }
%struct.octeon_droq = type { i32 }

@MSIX_PO_INT = common dso_local global i32 0, align 4
@MSIX_PI_INT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @liquidio_msix_intr_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.octeon_ioq_vector*, align 8
  %6 = alloca %struct.octeon_device*, align 8
  %7 = alloca %struct.octeon_droq*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.octeon_ioq_vector*
  store %struct.octeon_ioq_vector* %10, %struct.octeon_ioq_vector** %5, align 8
  %11 = load %struct.octeon_ioq_vector*, %struct.octeon_ioq_vector** %5, align 8
  %12 = getelementptr inbounds %struct.octeon_ioq_vector, %struct.octeon_ioq_vector* %11, i32 0, i32 1
  %13 = load %struct.octeon_device*, %struct.octeon_device** %12, align 8
  store %struct.octeon_device* %13, %struct.octeon_device** %6, align 8
  %14 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %15 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %14, i32 0, i32 1
  %16 = load %struct.octeon_droq**, %struct.octeon_droq*** %15, align 8
  %17 = load %struct.octeon_ioq_vector*, %struct.octeon_ioq_vector** %5, align 8
  %18 = getelementptr inbounds %struct.octeon_ioq_vector, %struct.octeon_ioq_vector* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.octeon_droq*, %struct.octeon_droq** %16, i64 %19
  %21 = load %struct.octeon_droq*, %struct.octeon_droq** %20, align 8
  store %struct.octeon_droq* %21, %struct.octeon_droq** %7, align 8
  %22 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %23 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.octeon_ioq_vector*)*, i32 (%struct.octeon_ioq_vector*)** %24, align 8
  %26 = load %struct.octeon_ioq_vector*, %struct.octeon_ioq_vector** %5, align 8
  %27 = call i32 %25(%struct.octeon_ioq_vector* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @MSIX_PO_INT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @MSIX_PI_INT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32, %2
  %38 = load %struct.octeon_droq*, %struct.octeon_droq** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @liquidio_schedule_msix_droq_pkt_handler(%struct.octeon_droq* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %42
}

declare dso_local i32 @liquidio_schedule_msix_droq_pkt_handler(%struct.octeon_droq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
