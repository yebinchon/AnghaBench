; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_set_tunable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_set_tunable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_tunable = type { i32 }
%struct.r8152 = type { i32, i32 }

@ETH_ZLEN = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid rx copy break value\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_tunable*, i8*)* @rtl8152_set_tunable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8152_set_tunable(%struct.net_device* %0, %struct.ethtool_tunable* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_tunable*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.r8152*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_tunable* %1, %struct.ethtool_tunable** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.r8152* @netdev_priv(%struct.net_device* %10)
  store %struct.r8152* %11, %struct.r8152** %8, align 8
  %12 = load %struct.ethtool_tunable*, %struct.ethtool_tunable** %6, align 8
  %13 = getelementptr inbounds %struct.ethtool_tunable, %struct.ethtool_tunable* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %46 [
    i32 128, label %15
  ]

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @ETH_ZLEN, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load %struct.r8152*, %struct.r8152** %8, align 8
  %24 = load i32, i32* @rx_err, align 4
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = call i32 @netif_err(%struct.r8152* %23, i32 %24, %struct.net_device* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %50

29:                                               ; preds = %15
  %30 = load %struct.r8152*, %struct.r8152** %8, align 8
  %31 = getelementptr inbounds %struct.r8152, %struct.r8152* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load %struct.r8152*, %struct.r8152** %8, align 8
  %37 = getelementptr inbounds %struct.r8152, %struct.r8152* %36, i32 0, i32 0
  %38 = call i32 @napi_disable(i32* %37)
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.r8152*, %struct.r8152** %8, align 8
  %41 = getelementptr inbounds %struct.r8152, %struct.r8152* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.r8152*, %struct.r8152** %8, align 8
  %43 = getelementptr inbounds %struct.r8152, %struct.r8152* %42, i32 0, i32 0
  %44 = call i32 @napi_enable(i32* %43)
  br label %45

45:                                               ; preds = %35, %29
  br label %49

46:                                               ; preds = %3
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %50

49:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %46, %22
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.r8152* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_err(%struct.r8152*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
