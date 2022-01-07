; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_config_extern_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_config_extern_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ca8210_platform_data = type { i32, i32 }
%struct.spi_device = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Switching external clock on\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid extclock-freq\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Switching external clock off\0A\00", align 1
@HWME_SYSCLKOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ca8210_platform_data*, %struct.spi_device*, i32)* @ca8210_config_extern_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca8210_config_extern_clk(%struct.ca8210_platform_data* %0, %struct.spi_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ca8210_platform_data*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  store %struct.ca8210_platform_data* %0, %struct.ca8210_platform_data** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %3
  %12 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 0
  %14 = call i32 @dev_info(i32* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %5, align 8
  %16 = getelementptr inbounds %struct.ca8210_platform_data, %struct.ca8210_platform_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %28 [
    i32 129, label %18
    i32 132, label %20
    i32 131, label %22
    i32 128, label %24
    i32 130, label %26
  ]

18:                                               ; preds = %11
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 1, i32* %19, align 4
  br label %34

20:                                               ; preds = %11
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 2, i32* %21, align 4
  br label %34

22:                                               ; preds = %11
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 3, i32* %23, align 4
  br label %34

24:                                               ; preds = %11
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 4, i32* %25, align 4
  br label %34

26:                                               ; preds = %11
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 5, i32* %27, align 4
  br label %34

28:                                               ; preds = %11
  %29 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %30 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %29, i32 0, i32 0
  %31 = call i32 @dev_crit(i32* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %51

34:                                               ; preds = %26, %24, %22, %20, %18
  %35 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %5, align 8
  %36 = getelementptr inbounds %struct.ca8210_platform_data, %struct.ca8210_platform_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %37, i32* %38, align 4
  br label %45

39:                                               ; preds = %3
  %40 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %41 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %40, i32 0, i32 0
  %42 = call i32 @dev_info(i32* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %39, %34
  %46 = load i32, i32* @HWME_SYSCLKOUT, align 4
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %48 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %49 = call i32 @hwme_set_request_sync(i32 %46, i32 2, i32* %47, %struct.spi_device* %48)
  %50 = call i32 @link_to_linux_err(i32 %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %45, %28
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @dev_crit(i32*, i8*) #1

declare dso_local i32 @link_to_linux_err(i32) #1

declare dso_local i32 @hwme_set_request_sync(i32, i32, i32*, %struct.spi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
