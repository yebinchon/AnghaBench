; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_hwme_get_request_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_hwme_get_request_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_message = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.TYPE_4__ = type { i64 }

@SPI_HWME_GET_REQUEST = common dso_local global i64 0, align 8
@MAC_SYSTEM_ERROR = common dso_local global i64 0, align 8
@SPI_HWME_GET_CONFIRM = common dso_local global i64 0, align 8
@MAC_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, i64*, i8*)* @hwme_get_request_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hwme_get_request_sync(i64 %0, i64* %1, i64* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mac_message, align 8
  %11 = alloca %struct.mac_message, align 8
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i64, i64* @SPI_HWME_GET_REQUEST, align 8
  %13 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %10, i32 0, i32 0
  store i64 %12, i64* %13, align 8
  %14 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %10, i32 0, i32 1
  store i32 1, i32* %14, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %10, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  %19 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %10, i32 0, i32 0
  %20 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %10, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 2
  %23 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %11, i32 0, i32 0
  %24 = load i8*, i8** %9, align 8
  %25 = call i64 @cascoda_api_downstream(i64* %19, i32 %22, i64* %23, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i64, i64* @MAC_SYSTEM_ERROR, align 8
  store i64 %28, i64* %5, align 8
  br label %62

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %11, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SPI_HWME_GET_CONFIRM, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i64, i64* @MAC_SYSTEM_ERROR, align 8
  store i64 %35, i64* %5, align 8
  br label %62

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %11, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MAC_SUCCESS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %11, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %7, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i64*, i64** %8, align 8
  %50 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %11, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i64*, i64** %7, align 8
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @memcpy(i64* %49, i32 %53, i64 %55)
  br label %57

57:                                               ; preds = %43, %36
  %58 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %11, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %57, %34, %27
  %63 = load i64, i64* %5, align 8
  ret i64 %63
}

declare dso_local i64 @cascoda_api_downstream(i64*, i32, i64*, i8*) #1

declare dso_local i32 @memcpy(i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
