; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_liquidio_schedule_msix_droq_pkt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_liquidio_schedule_msix_droq_pkt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_droq = type { %struct.TYPE_4__, %struct.octeon_device* }
%struct.TYPE_4__ = type { i32 (%struct.octeon_droq.0*)*, i64 }
%struct.octeon_droq.0 = type opaque
%struct.octeon_device = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.octeon_device_priv = type { i32 }

@MSIX_PO_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"should not come here should not get rx when poll mode = 0 for vf\0A\00", align 1
@MSIX_PI_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_droq*, i32)* @liquidio_schedule_msix_droq_pkt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @liquidio_schedule_msix_droq_pkt_handler(%struct.octeon_droq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_droq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.octeon_device*, align 8
  %7 = alloca %struct.octeon_device_priv*, align 8
  store %struct.octeon_droq* %0, %struct.octeon_droq** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %9 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %8, i32 0, i32 1
  %10 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  store %struct.octeon_device* %10, %struct.octeon_device** %6, align 8
  %11 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %12 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.octeon_device_priv*
  store %struct.octeon_device_priv* %14, %struct.octeon_device_priv** %7, align 8
  %15 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %16 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %22 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.octeon_droq.0*)*, i32 (%struct.octeon_droq.0*)** %23, align 8
  %25 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %26 = bitcast %struct.octeon_droq* %25 to %struct.octeon_droq.0*
  %27 = call i32 %24(%struct.octeon_droq.0* %26)
  br label %54

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MSIX_PO_INT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %35 = call i64 @OCTEON_CN23XX_VF(%struct.octeon_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %39 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %37, %33
  %44 = load %struct.octeon_device_priv*, %struct.octeon_device_priv** %7, align 8
  %45 = getelementptr inbounds %struct.octeon_device_priv, %struct.octeon_device_priv* %44, i32 0, i32 0
  %46 = call i32 @tasklet_schedule(i32* %45)
  store i32 1, i32* %3, align 4
  br label %55

47:                                               ; preds = %28
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @MSIX_PI_INT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %55

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %20
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %52, %43
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @OCTEON_CN23XX_VF(%struct.octeon_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
