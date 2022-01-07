; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_giwauth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_giwauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32 }
%struct.hostap_interface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@IW_AUTH_INDEX = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @prism2_ioctl_giwauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_ioctl_giwauth(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hostap_interface*, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %12)
  store %struct.hostap_interface* %13, %struct.hostap_interface** %10, align 8
  %14 = load %struct.hostap_interface*, %struct.hostap_interface** %10, align 8
  %15 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %11, align 8
  %17 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %18 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IW_AUTH_INDEX, align 4
  %21 = and i32 %19, %20
  switch i32 %21, label %55 [
    i32 128, label %22
    i32 134, label %22
    i32 135, label %22
    i32 132, label %22
    i32 130, label %25
    i32 133, label %31
    i32 136, label %37
    i32 129, label %43
    i32 131, label %49
  ]

22:                                               ; preds = %4, %4, %4, %4
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %59

25:                                               ; preds = %4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %30 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %58

31:                                               ; preds = %4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %36 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %58

37:                                               ; preds = %4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %42 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %58

43:                                               ; preds = %4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %48 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %58

49:                                               ; preds = %4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %54 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %58

55:                                               ; preds = %4
  %56 = load i32, i32* @EOPNOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %59

58:                                               ; preds = %49, %43, %37, %31, %25
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %55, %22
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
