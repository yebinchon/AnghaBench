; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_mlme_reset_request_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_mlme_reset_request_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_message = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.spi_device = type { i32 }

@SPI_MLME_RESET_REQUEST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"cascoda_api_downstream failed\0A\00", align 1
@MAC_SYSTEM_ERROR = common dso_local global i64 0, align 8
@SPI_MLME_RESET_CONFIRM = common dso_local global i64 0, align 8
@CA8210_MAC_WORKAROUNDS = common dso_local global i64 0, align 8
@CA8210_SFR_MACCON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*)* @mlme_reset_request_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mlme_reset_request_sync(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mac_message, align 8
  %8 = alloca %struct.mac_message, align 8
  %9 = alloca %struct.spi_device*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.spi_device*
  store %struct.spi_device* %11, %struct.spi_device** %9, align 8
  %12 = load i64, i64* @SPI_MLME_RESET_REQUEST, align 8
  %13 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %7, i32 0, i32 0
  store i64 %12, i64* %13, align 8
  %14 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %7, i32 0, i32 1
  store i32 1, i32* %14, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %7, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %7, i32 0, i32 0
  %19 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %7, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 2
  %22 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %8, i32 0, i32 0
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @cascoda_api_downstream(i64* %18, i32 %21, i64* %22, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %30 = load i64, i64* @MAC_SYSTEM_ERROR, align 8
  store i64 %30, i64* %3, align 8
  br label %56

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %8, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SPI_MLME_RESET_CONFIRM, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i64, i64* @MAC_SYSTEM_ERROR, align 8
  store i64 %37, i64* %3, align 8
  br label %56

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %8, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* @CA8210_MAC_WORKAROUNDS, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load i64, i64* %4, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i64, i64* %6, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @CA8210_SFR_MACCON, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = call i64 @tdme_setsfr_request_sync(i32 0, i32 %51, i32 0, i8* %52)
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %50, %47, %44, %38
  %55 = load i64, i64* %6, align 8
  store i64 %55, i64* %3, align 8
  br label %56

56:                                               ; preds = %54, %36, %26
  %57 = load i64, i64* %3, align 8
  ret i64 %57
}

declare dso_local i64 @cascoda_api_downstream(i64*, i32, i64*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @tdme_setsfr_request_sync(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
