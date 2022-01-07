; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mmc/siano/extr_smssdio.c_smssdio_sendrequest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mmc/siano/extr_smssdio.c_smssdio_sendrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smssdio_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.sms_msg_data = type { i32 }

@SMSSDIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @smssdio_sendrequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smssdio_sendrequest(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smssdio_device*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.smssdio_device*
  store %struct.smssdio_device* %10, %struct.smssdio_device** %8, align 8
  %11 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %12 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = call i32 @sdio_claim_host(%struct.TYPE_4__* %13)
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.sms_msg_data*
  %17 = call i32 @smsendian_handle_tx_message(%struct.sms_msg_data* %16)
  br label %18

18:                                               ; preds = %41, %3
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %21 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %19, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %18
  %27 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %28 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* @SMSSDIO_DATA, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %33 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @sdio_memcpy_toio(%struct.TYPE_4__* %29, i32 %30, i8* %31, i64 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %68

41:                                               ; preds = %26
  %42 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %43 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr i8, i8* %47, i64 %46
  store i8* %48, i8** %5, align 8
  %49 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %50 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %6, align 8
  br label %18

56:                                               ; preds = %18
  %57 = load i64, i64* %6, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %61 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* @SMSSDIO_DATA, align 4
  %64 = load i8*, i8** %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @sdio_memcpy_toio(%struct.TYPE_4__* %62, i32 %63, i8* %64, i64 %65)
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %59, %56
  br label %68

68:                                               ; preds = %67, %40
  %69 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %70 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = call i32 @sdio_release_host(%struct.TYPE_4__* %71)
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @sdio_claim_host(%struct.TYPE_4__*) #1

declare dso_local i32 @smsendian_handle_tx_message(%struct.sms_msg_data*) #1

declare dso_local i32 @sdio_memcpy_toio(%struct.TYPE_4__*, i32, i8*, i64) #1

declare dso_local i32 @sdio_release_host(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
