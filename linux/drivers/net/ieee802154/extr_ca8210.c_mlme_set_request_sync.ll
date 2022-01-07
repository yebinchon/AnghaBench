; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_mlme_set_request_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_mlme_set_request_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_message = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64, i64 }

@MAC_INVALID_PARAMETER = common dso_local global i64 0, align 8
@PHY_CURRENT_CHANNEL = common dso_local global i64 0, align 8
@PHY_TRANSMIT_POWER = common dso_local global i64 0, align 8
@SPI_MLME_SET_REQUEST = common dso_local global i64 0, align 8
@MAX_ATTRIBUTE_SIZE = common dso_local global i32 0, align 4
@MAC_SYSTEM_ERROR = common dso_local global i64 0, align 8
@SPI_MLME_SET_CONFIRM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i8*, i8*)* @mlme_set_request_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mlme_set_request_sync(i64 %0, i64 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mac_message, align 8
  %14 = alloca %struct.mac_message, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = call i64 @tdme_checkpibattribute(i64 %15, i64 %16, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i64, i64* @MAC_INVALID_PARAMETER, align 8
  store i64 %21, i64* %6, align 8
  br label %97

22:                                               ; preds = %5
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @PHY_CURRENT_CHANNEL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load i8*, i8** %10, align 8
  %28 = bitcast i8* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = call i64 @tdme_channelinit(i64 %29, i8* %30)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i64, i64* %12, align 8
  store i64 %35, i64* %6, align 8
  br label %97

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %22
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @PHY_TRANSMIT_POWER, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i8*, i8** %10, align 8
  %43 = bitcast i8* %42 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = call i64 @tdme_settxpower(i64 %44, i8* %45)
  store i64 %46, i64* %6, align 8
  br label %97

47:                                               ; preds = %37
  %48 = load i64, i64* @SPI_MLME_SET_REQUEST, align 8
  %49 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %13, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = load i32, i32* @MAX_ATTRIBUTE_SIZE, align 4
  %51 = sext i32 %50 to i64
  %52 = sub i64 4, %51
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %52, %53
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %13, i32 0, i32 1
  store i32 %55, i32* %56, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %13, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  store i64 %57, i64* %60, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %13, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  store i64 %61, i64* %64, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %13, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i64 %65, i64* %68, align 8
  %69 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %13, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @memcpy(i32 %72, i8* %73, i64 %74)
  %76 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %13, i32 0, i32 0
  %77 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %13, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 2
  %80 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %14, i32 0, i32 0
  %81 = load i8*, i8** %11, align 8
  %82 = call i64 @cascoda_api_downstream(i64* %76, i32 %79, i64* %80, i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %47
  %85 = load i64, i64* @MAC_SYSTEM_ERROR, align 8
  store i64 %85, i64* %6, align 8
  br label %97

86:                                               ; preds = %47
  %87 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %14, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SPI_MLME_SET_CONFIRM, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i64, i64* @MAC_SYSTEM_ERROR, align 8
  store i64 %92, i64* %6, align 8
  br label %97

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %14, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %6, align 8
  br label %97

97:                                               ; preds = %93, %91, %84, %41, %34, %20
  %98 = load i64, i64* %6, align 8
  ret i64 %98
}

declare dso_local i64 @tdme_checkpibattribute(i64, i64, i8*) #1

declare dso_local i64 @tdme_channelinit(i64, i8*) #1

declare dso_local i64 @tdme_settxpower(i64, i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i64 @cascoda_api_downstream(i64*, i32, i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
