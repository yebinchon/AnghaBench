; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5100-spi.c_w5100_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5100-spi.c_w5100_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w5100_ops = type { i32 }
%struct.spi_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.of_device_id = type { i64 }
%struct.TYPE_5__ = type { i32 }

@w5100_of_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@w5100_spi_ops = common dso_local global %struct.w5100_ops zeroinitializer, align 4
@w5200_ops = common dso_local global %struct.w5100_ops zeroinitializer, align 4
@w5500_ops = common dso_local global %struct.w5100_ops zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @w5100_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w5100_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.w5100_ops*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i8* @of_get_mac_address(i64 %12)
  store i8* %13, i8** %8, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %1
  %20 = load i32, i32* @w5100_of_match, align 4
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 1
  %23 = call %struct.of_device_id* @of_match_device(i32 %20, %struct.TYPE_4__* %22)
  store %struct.of_device_id* %23, %struct.of_device_id** %4, align 8
  %24 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %25 = icmp ne %struct.of_device_id* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %59

29:                                               ; preds = %19
  %30 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %31 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  br label %39

34:                                               ; preds = %1
  %35 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %36 = call %struct.TYPE_5__* @spi_get_device_id(%struct.spi_device* %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* %6, align 4
  switch i32 %40, label %44 [
    i32 130, label %41
    i32 129, label %42
    i32 128, label %43
  ]

41:                                               ; preds = %39
  store %struct.w5100_ops* @w5100_spi_ops, %struct.w5100_ops** %5, align 8
  store i32 0, i32* %7, align 4
  br label %47

42:                                               ; preds = %39
  store %struct.w5100_ops* @w5200_ops, %struct.w5100_ops** %5, align 8
  store i32 4, i32* %7, align 4
  br label %47

43:                                               ; preds = %39
  store %struct.w5100_ops* @w5500_ops, %struct.w5100_ops** %5, align 8
  store i32 4, i32* %7, align 4
  br label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %59

47:                                               ; preds = %43, %42, %41
  %48 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %49 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %48, i32 0, i32 1
  %50 = load %struct.w5100_ops*, %struct.w5100_ops** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  %58 = call i32 @w5100_probe(%struct.TYPE_4__* %49, %struct.w5100_ops* %50, i32 %51, i8* %52, i32 %55, i32 %57)
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %47, %44, %26
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i8* @of_get_mac_address(i64) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_5__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @w5100_probe(%struct.TYPE_4__*, %struct.w5100_ops*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
