; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_get_retry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_get_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i64, i64 }
%struct.atmel_private = type { i64, i64 }

@IW_RETRY_LONG = common dso_local global i32 0, align 4
@IW_RETRY_LIMIT = common dso_local global i32 0, align 4
@IW_RETRY_SHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @atmel_get_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_get_retry(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_param*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.atmel_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_param* %2, %struct.iw_param** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.atmel_private* @netdev_priv(%struct.net_device* %10)
  store %struct.atmel_private* %11, %struct.atmel_private** %9, align 8
  %12 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %13 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %15 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IW_RETRY_LONG, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %4
  %21 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %22 = load i32, i32* @IW_RETRY_LONG, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %25 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.atmel_private*, %struct.atmel_private** %9, align 8
  %27 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %30 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  br label %54

31:                                               ; preds = %4
  %32 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %33 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %34 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.atmel_private*, %struct.atmel_private** %9, align 8
  %36 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %39 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.atmel_private*, %struct.atmel_private** %9, align 8
  %41 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.atmel_private*, %struct.atmel_private** %9, align 8
  %44 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %31
  %48 = load i32, i32* @IW_RETRY_SHORT, align 4
  %49 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %50 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %47, %31
  br label %54

54:                                               ; preds = %53, %20
  ret i32 0
}

declare dso_local %struct.atmel_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
