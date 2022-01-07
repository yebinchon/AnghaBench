; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_freq = type { i32, i32 }
%struct.atmel_private = type { i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_freq*, i8*)* @atmel_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_set_freq(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_freq* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_freq*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.atmel_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_freq* %2, %struct.iw_freq** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.atmel_private* @netdev_priv(%struct.net_device* %13)
  store %struct.atmel_private* %14, %struct.atmel_private** %9, align 8
  %15 = load i32, i32* @EINPROGRESS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %18 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %32

21:                                               ; preds = %4
  %22 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %23 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 100000
  store i32 %25, i32* %11, align 4
  %26 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %27 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @ieee80211_frequency_to_channel(i32 %28)
  %30 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %31 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %21, %4
  %33 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %34 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %39 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 1000
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %44 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %37, %32
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %66

50:                                               ; preds = %42
  %51 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %52 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %12, align 4
  %54 = load %struct.atmel_private*, %struct.atmel_private** %9, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i64 @atmel_validate_channel(%struct.atmel_private* %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.atmel_private*, %struct.atmel_private** %9, align 8
  %61 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %65

62:                                               ; preds = %50
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %62, %58
  br label %66

66:                                               ; preds = %65, %47
  %67 = load i32, i32* %10, align 4
  ret i32 %67
}

declare dso_local %struct.atmel_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i64 @atmel_validate_channel(%struct.atmel_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
