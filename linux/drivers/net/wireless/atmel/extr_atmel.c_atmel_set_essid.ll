; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_set_essid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_set_essid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i32 }
%struct.atmel_private = type { i32, i32, i32 }

@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@MAX_SSID_LENGTH = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @atmel_set_essid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_set_essid(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.atmel_private*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.atmel_private* @netdev_priv(%struct.net_device* %12)
  store %struct.atmel_private* %13, %struct.atmel_private** %10, align 8
  %14 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %15 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %20 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %58

21:                                               ; preds = %4
  %22 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %23 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %26 = and i32 %24, %25
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %11, align 4
  %28 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %29 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %31 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MAX_SSID_LENGTH, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load i32, i32* @E2BIG, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %61

38:                                               ; preds = %21
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %61

44:                                               ; preds = %38
  %45 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %46 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %50 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcpy(i32 %47, i8* %48, i32 %51)
  %53 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %54 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %57 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %44, %18
  %59 = load i32, i32* @EINPROGRESS, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %58, %41, %35
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.atmel_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
