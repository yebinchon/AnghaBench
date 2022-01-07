; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_get_platform_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_get_platform_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ca8210_platform_data = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"extclock-enable\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"extclock-freq\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"extclock-gpio\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.ca8210_platform_data*)* @ca8210_get_platform_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca8210_get_platform_data(%struct.spi_device* %0, %struct.ca8210_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.ca8210_platform_data*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.ca8210_platform_data* %1, %struct.ca8210_platform_data** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %49

15:                                               ; preds = %2
  %16 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @of_property_read_bool(i32 %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %5, align 8
  %22 = getelementptr inbounds %struct.ca8210_platform_data, %struct.ca8210_platform_data* %21, i32 0, i32 2
  store i64 %20, i64* %22, align 8
  %23 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %5, align 8
  %24 = getelementptr inbounds %struct.ca8210_platform_data, %struct.ca8210_platform_data* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %15
  %28 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %5, align 8
  %33 = getelementptr inbounds %struct.ca8210_platform_data, %struct.ca8210_platform_data* %32, i32 0, i32 1
  %34 = call i32 @of_property_read_u32(i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %49

39:                                               ; preds = %27
  %40 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %41 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %5, align 8
  %45 = getelementptr inbounds %struct.ca8210_platform_data, %struct.ca8210_platform_data* %44, i32 0, i32 0
  %46 = call i32 @of_property_read_u32(i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %39, %15
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %37, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
