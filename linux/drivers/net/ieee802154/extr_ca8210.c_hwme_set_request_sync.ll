; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_hwme_set_request_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_hwme_set_request_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_message = type { i64, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_6__ = type { i32, i8*, i8* }

@SPI_HWME_SET_REQUEST = common dso_local global i64 0, align 8
@MAC_SYSTEM_ERROR = common dso_local global i8* null, align 8
@SPI_HWME_SET_CONFIRM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8**, i8*)* @hwme_set_request_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hwme_set_request_sync(i8* %0, i8* %1, i8** %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mac_message, align 8
  %11 = alloca %struct.mac_message, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i64, i64* @SPI_HWME_SET_REQUEST, align 8
  %13 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %10, i32 0, i32 0
  store i64 %12, i64* %13, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = getelementptr i8, i8* %14, i64 2
  %16 = ptrtoint i8* %15 to i64
  %17 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %10, i32 0, i32 2
  store i64 %16, i64* %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %10, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store i8* %18, i8** %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %10, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i8* %22, i8** %25, align 8
  %26 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %10, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i8**, i8*** %8, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @memcpy(i32 %29, i8** %30, i8* %31)
  %33 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %10, i32 0, i32 0
  %34 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %10, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 2
  %37 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %11, i32 0, i32 0
  %38 = load i8*, i8** %9, align 8
  %39 = call i64 @cascoda_api_downstream(i64* %33, i64 %36, i64* %37, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i8*, i8** @MAC_SYSTEM_ERROR, align 8
  store i8* %42, i8** %5, align 8
  br label %55

43:                                               ; preds = %4
  %44 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %11, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SPI_HWME_SET_CONFIRM, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i8*, i8** @MAC_SYSTEM_ERROR, align 8
  store i8* %49, i8** %5, align 8
  br label %55

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %11, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %5, align 8
  br label %55

55:                                               ; preds = %50, %48, %41
  %56 = load i8*, i8** %5, align 8
  ret i8* %56
}

declare dso_local i32 @memcpy(i32, i8**, i8*) #1

declare dso_local i64 @cascoda_api_downstream(i64*, i64, i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
