; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_get_essid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_get_essid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i64, i32 }
%struct.atmel_private = type { i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @atmel_get_essid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_get_essid(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_point*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.atmel_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_point* %2, %struct.iw_point** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.atmel_private* @netdev_priv(%struct.net_device* %10)
  store %struct.atmel_private* %11, %struct.atmel_private** %9, align 8
  %12 = load %struct.atmel_private*, %struct.atmel_private** %9, align 8
  %13 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %4
  %17 = load i8*, i8** %8, align 8
  %18 = load %struct.atmel_private*, %struct.atmel_private** %9, align 8
  %19 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.atmel_private*, %struct.atmel_private** %9, align 8
  %22 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @memcpy(i8* %17, i32 %20, i64 %23)
  %25 = load %struct.atmel_private*, %struct.atmel_private** %9, align 8
  %26 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %29 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %44

30:                                               ; preds = %4
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.atmel_private*, %struct.atmel_private** %9, align 8
  %33 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.atmel_private*, %struct.atmel_private** %9, align 8
  %36 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @memcpy(i8* %31, i32 %34, i64 %37)
  %39 = load %struct.atmel_private*, %struct.atmel_private** %9, align 8
  %40 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %43 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %30, %16
  %45 = load %struct.atmel_private*, %struct.atmel_private** %9, align 8
  %46 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %52 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  ret i32 0
}

declare dso_local %struct.atmel_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
