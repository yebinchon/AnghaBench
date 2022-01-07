; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_tdme_setsfr_request_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_tdme_setsfr_request_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_message = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8*, i8*, i8* }
%struct.spi_device = type { i32 }

@SPI_TDME_SETSFR_REQUEST = common dso_local global i32 0, align 4
@SPI_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cascoda_api_downstream returned %d\00", align 1
@MAC_SYSTEM_ERROR = common dso_local global i8* null, align 8
@SPI_TDME_SETSFR_CONFIRM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [85 x i8] c"sync response to SPI_TDME_SETSFR_REQUEST was not SPI_TDME_SETSFR_CONFIRM, it was %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i8*)* @tdme_setsfr_request_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tdme_setsfr_request_sync(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mac_message, align 8
  %12 = alloca %struct.mac_message, align 8
  %13 = alloca %struct.spi_device*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.spi_device*
  store %struct.spi_device* %15, %struct.spi_device** %13, align 8
  %16 = load i32, i32* @SPI_TDME_SETSFR_REQUEST, align 4
  %17 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %11, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %11, i32 0, i32 1
  store i32 3, i32* %18, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %11, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i8* %19, i8** %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %11, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i8* %23, i8** %26, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %11, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = load i32, i32* @SPI_IDLE, align 4
  %32 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %12, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %11, i32 0, i32 0
  %34 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %11, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 2
  %37 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %12, i32 0, i32 0
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @cascoda_api_downstream(i32* %33, i32 %36, i32* %37, i8* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %4
  %43 = load %struct.spi_device*, %struct.spi_device** %13, align 8
  %44 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %43, i32 0, i32 0
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @dev_crit(i32* %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i8*, i8** @MAC_SYSTEM_ERROR, align 8
  store i8* %47, i8** %5, align 8
  br label %65

48:                                               ; preds = %4
  %49 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %12, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SPI_TDME_SETSFR_CONFIRM, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.spi_device*, %struct.spi_device** %13, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %12, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_crit(i32* %55, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i8*, i8** @MAC_SYSTEM_ERROR, align 8
  store i8* %59, i8** %5, align 8
  br label %65

60:                                               ; preds = %48
  %61 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %12, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %5, align 8
  br label %65

65:                                               ; preds = %60, %53, %42
  %66 = load i8*, i8** %5, align 8
  ret i8* %66
}

declare dso_local i32 @cascoda_api_downstream(i32*, i32, i32*, i8*) #1

declare dso_local i32 @dev_crit(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
