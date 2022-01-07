; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_spi_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_spi_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32 }
%struct.falcon_spi_device = type { i32, i32, i32, i32, i32, i32, i32 }

@SPI_DEV_TYPE_SIZE = common dso_local global i32 0, align 4
@SPI_DEV_TYPE_ADDR_LEN = common dso_local global i32 0, align 4
@SPI_DEV_TYPE_ERASE_CMD = common dso_local global i32 0, align 4
@SPI_DEV_TYPE_ERASE_SIZE = common dso_local global i32 0, align 4
@SPI_DEV_TYPE_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*, %struct.falcon_spi_device*, i32, i64)* @falcon_spi_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_spi_device_init(%struct.ef4_nic* %0, %struct.falcon_spi_device* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.ef4_nic*, align 8
  %6 = alloca %struct.falcon_spi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ef4_nic* %0, %struct.ef4_nic** %5, align 8
  store %struct.falcon_spi_device* %1, %struct.falcon_spi_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %57

11:                                               ; preds = %4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.falcon_spi_device*, %struct.falcon_spi_device** %6, align 8
  %14 = getelementptr inbounds %struct.falcon_spi_device, %struct.falcon_spi_device* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load i32, i32* @SPI_DEV_TYPE_SIZE, align 4
  %17 = call i32 @SPI_DEV_TYPE_FIELD(i64 %15, i32 %16)
  %18 = shl i32 1, %17
  %19 = load %struct.falcon_spi_device*, %struct.falcon_spi_device** %6, align 8
  %20 = getelementptr inbounds %struct.falcon_spi_device, %struct.falcon_spi_device* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* @SPI_DEV_TYPE_ADDR_LEN, align 4
  %23 = call i32 @SPI_DEV_TYPE_FIELD(i64 %21, i32 %22)
  %24 = load %struct.falcon_spi_device*, %struct.falcon_spi_device** %6, align 8
  %25 = getelementptr inbounds %struct.falcon_spi_device, %struct.falcon_spi_device* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.falcon_spi_device*, %struct.falcon_spi_device** %6, align 8
  %27 = getelementptr inbounds %struct.falcon_spi_device, %struct.falcon_spi_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 512
  br i1 %29, label %30, label %35

30:                                               ; preds = %11
  %31 = load %struct.falcon_spi_device*, %struct.falcon_spi_device** %6, align 8
  %32 = getelementptr inbounds %struct.falcon_spi_device, %struct.falcon_spi_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br label %35

35:                                               ; preds = %30, %11
  %36 = phi i1 [ false, %11 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  %38 = load %struct.falcon_spi_device*, %struct.falcon_spi_device** %6, align 8
  %39 = getelementptr inbounds %struct.falcon_spi_device, %struct.falcon_spi_device* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* @SPI_DEV_TYPE_ERASE_CMD, align 4
  %42 = call i32 @SPI_DEV_TYPE_FIELD(i64 %40, i32 %41)
  %43 = load %struct.falcon_spi_device*, %struct.falcon_spi_device** %6, align 8
  %44 = getelementptr inbounds %struct.falcon_spi_device, %struct.falcon_spi_device* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* @SPI_DEV_TYPE_ERASE_SIZE, align 4
  %47 = call i32 @SPI_DEV_TYPE_FIELD(i64 %45, i32 %46)
  %48 = shl i32 1, %47
  %49 = load %struct.falcon_spi_device*, %struct.falcon_spi_device** %6, align 8
  %50 = getelementptr inbounds %struct.falcon_spi_device, %struct.falcon_spi_device* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load i64, i64* %8, align 8
  %52 = load i32, i32* @SPI_DEV_TYPE_BLOCK_SIZE, align 4
  %53 = call i32 @SPI_DEV_TYPE_FIELD(i64 %51, i32 %52)
  %54 = shl i32 1, %53
  %55 = load %struct.falcon_spi_device*, %struct.falcon_spi_device** %6, align 8
  %56 = getelementptr inbounds %struct.falcon_spi_device, %struct.falcon_spi_device* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  br label %60

57:                                               ; preds = %4
  %58 = load %struct.falcon_spi_device*, %struct.falcon_spi_device** %6, align 8
  %59 = getelementptr inbounds %struct.falcon_spi_device, %struct.falcon_spi_device* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %35
  ret void
}

declare dso_local i32 @SPI_DEV_TYPE_FIELD(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
