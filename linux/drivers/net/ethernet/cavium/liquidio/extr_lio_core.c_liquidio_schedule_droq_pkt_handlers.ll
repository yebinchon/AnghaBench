; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_liquidio_schedule_droq_pkt_handlers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_liquidio_schedule_droq_pkt_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, i32, %struct.octeon_droq**, i64 }
%struct.octeon_droq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.octeon_droq.0*)*, i64 }
%struct.octeon_droq.0 = type opaque
%struct.octeon_device_priv = type { i32, i32 }

@OCT_DEV_INTR_PKT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @liquidio_schedule_droq_pkt_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @liquidio_schedule_droq_pkt_handlers(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca %struct.octeon_device_priv*, align 8
  %4 = alloca %struct.octeon_droq*, align 8
  %5 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %6 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %7 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.octeon_device_priv*
  store %struct.octeon_device_priv* %9, %struct.octeon_device_priv** %3, align 8
  %10 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @OCT_DEV_INTR_PKT_DATA, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %66

16:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %17

17:                                               ; preds = %62, %16
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %20 = call i64 @MAX_OCTEON_OUTPUT_QUEUES(%struct.octeon_device* %19)
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %65

22:                                               ; preds = %17
  %23 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %24 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @BIT_ULL(i64 %26)
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %62

31:                                               ; preds = %22
  %32 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %33 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %32, i32 0, i32 2
  %34 = load %struct.octeon_droq**, %struct.octeon_droq*** %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds %struct.octeon_droq*, %struct.octeon_droq** %34, i64 %35
  %37 = load %struct.octeon_droq*, %struct.octeon_droq** %36, align 8
  store %struct.octeon_droq* %37, %struct.octeon_droq** %4, align 8
  %38 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %39 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %31
  %44 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %45 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.octeon_droq.0*)*, i32 (%struct.octeon_droq.0*)** %46, align 8
  %48 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %49 = bitcast %struct.octeon_droq* %48 to %struct.octeon_droq.0*
  %50 = call i32 %47(%struct.octeon_droq.0* %49)
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @BIT_ULL(i64 %51)
  %53 = load %struct.octeon_device_priv*, %struct.octeon_device_priv** %3, align 8
  %54 = getelementptr inbounds %struct.octeon_device_priv, %struct.octeon_device_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %61

57:                                               ; preds = %31
  %58 = load %struct.octeon_device_priv*, %struct.octeon_device_priv** %3, align 8
  %59 = getelementptr inbounds %struct.octeon_device_priv, %struct.octeon_device_priv* %58, i32 0, i32 1
  %60 = call i32 @tasklet_schedule(i32* %59)
  br label %61

61:                                               ; preds = %57, %43
  br label %62

62:                                               ; preds = %61, %30
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %5, align 8
  br label %17

65:                                               ; preds = %17
  br label %66

66:                                               ; preds = %65, %1
  ret void
}

declare dso_local i64 @MAX_OCTEON_OUTPUT_QUEUES(%struct.octeon_device*) #1

declare dso_local i32 @BIT_ULL(i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
