; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe-spi.c_stmpe_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe-spi.c_stmpe_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, %struct.spi_device*, i32 }
%struct.spi_device = type { i32, i32, i32 }
%struct.spi_device_id = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"f(sample) %d KHz?\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@spi_ci = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @stmpe_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_device_id*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %6 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %5)
  store %struct.spi_device_id* %6, %struct.spi_device_id** %4, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %9, 1000000
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 1
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %16, 1000
  %18 = call i32 @dev_dbg(i32* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %32

21:                                               ; preds = %1
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spi_ci, i32 0, i32 2), align 8
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  store %struct.spi_device* %25, %struct.spi_device** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spi_ci, i32 0, i32 1), align 8
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 1
  store i32* %27, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spi_ci, i32 0, i32 0), align 8
  %28 = load %struct.spi_device_id*, %struct.spi_device_id** %4, align 8
  %29 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @stmpe_probe(%struct.TYPE_3__* @spi_ci, i32 %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %21, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @stmpe_probe(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
