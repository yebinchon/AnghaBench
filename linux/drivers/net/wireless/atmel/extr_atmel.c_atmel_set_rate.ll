; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i64, i32 }
%struct.atmel_private = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @atmel_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_set_rate(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.atmel_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.atmel_private* @netdev_priv(%struct.net_device* %11)
  store %struct.atmel_private* %12, %struct.atmel_private** %10, align 8
  %13 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %14 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %19 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %18, i32 0, i32 0
  store i32 3, i32* %19, align 4
  %20 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %21 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  br label %61

22:                                               ; preds = %4
  %23 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %24 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %26 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %31 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %36 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %39 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %60

40:                                               ; preds = %29, %22
  %41 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %42 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %56 [
    i32 1000000, label %44
    i32 2000000, label %47
    i32 5500000, label %50
    i32 11000000, label %53
  ]

44:                                               ; preds = %40
  %45 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %46 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  br label %59

47:                                               ; preds = %40
  %48 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %49 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  br label %59

50:                                               ; preds = %40
  %51 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %52 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %51, i32 0, i32 0
  store i32 2, i32* %52, align 4
  br label %59

53:                                               ; preds = %40
  %54 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %55 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %54, i32 0, i32 0
  store i32 3, i32* %55, align 4
  br label %59

56:                                               ; preds = %40
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %64

59:                                               ; preds = %53, %50, %47, %44
  br label %60

60:                                               ; preds = %59, %34
  br label %61

61:                                               ; preds = %60, %17
  %62 = load i32, i32* @EINPROGRESS, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.atmel_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
