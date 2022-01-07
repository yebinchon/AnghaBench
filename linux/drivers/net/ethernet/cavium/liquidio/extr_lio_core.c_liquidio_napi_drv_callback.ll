; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_liquidio_napi_drv_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_liquidio_napi_drv_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }
%struct.octeon_droq = type { i32, i32, %struct.TYPE_3__, %struct.octeon_device* }
%struct.TYPE_3__ = type { i64, i32*, i32 }

@napi_schedule_wrapper = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @liquidio_napi_drv_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @liquidio_napi_drv_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca %struct.octeon_droq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.octeon_droq*
  store %struct.octeon_droq* %8, %struct.octeon_droq** %4, align 8
  %9 = call i32 (...) @smp_processor_id()
  store i32 %9, i32* %5, align 4
  %10 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %11 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %10, i32 0, i32 3
  %12 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  store %struct.octeon_device* %12, %struct.octeon_device** %3, align 8
  %13 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %14 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %18 = call i64 @OCTEON_CN23XX_VF(%struct.octeon_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %22 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20, %16, %1
  %27 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %28 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %27, i32 0, i32 1
  %29 = call i32 @napi_schedule_irqoff(i32* %28)
  br label %47

30:                                               ; preds = %20
  %31 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %32 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %31, i32 0, i32 2
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %6, align 8
  %33 = load i32, i32* @napi_schedule_wrapper, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %37 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %43 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = call i32 @smp_call_function_single_async(i32 %44, %struct.TYPE_3__* %45)
  br label %47

47:                                               ; preds = %30, %26
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @OCTEON_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i64 @OCTEON_CN23XX_VF(%struct.octeon_device*) #1

declare dso_local i32 @napi_schedule_irqoff(i32*) #1

declare dso_local i32 @smp_call_function_single_async(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
