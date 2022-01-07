; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_wext.c_orinoco_ioctl_getwap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_wext.c_orinoco_ioctl_getwap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.sockaddr = type { i32, i32 }
%struct.orinoco_private = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.sockaddr*, i8*)* @orinoco_ioctl_getwap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_ioctl_getwap(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.sockaddr* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.orinoco_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.orinoco_private* @ndev_priv(%struct.net_device* %13)
  store %struct.orinoco_private* %14, %struct.orinoco_private** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %16 = call i64 @orinoco_lock(%struct.orinoco_private* %15, i64* %12)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %33

21:                                               ; preds = %4
  %22 = load i32, i32* @ARPHRD_ETHER, align 4
  %23 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %24 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %26 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @orinoco_hw_get_current_bssid(%struct.orinoco_private* %25, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %31 = call i32 @orinoco_unlock(%struct.orinoco_private* %30, i64* %12)
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %21, %18
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.orinoco_private* @ndev_priv(%struct.net_device*) #1

declare dso_local i64 @orinoco_lock(%struct.orinoco_private*, i64*) #1

declare dso_local i32 @orinoco_hw_get_current_bssid(%struct.orinoco_private*, i32) #1

declare dso_local i32 @orinoco_unlock(%struct.orinoco_private*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
