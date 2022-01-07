; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_get_wap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_get_wap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.sockaddr = type { i32, i32 }
%union.oid_res_t = type { i32 }

@DOT11_OID_BSSID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.sockaddr*, i8*)* @prism54_get_wap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism54_get_wap(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.sockaddr* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %union.oid_res_t, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call i32* @netdev_priv(%struct.net_device* %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = load i32, i32* @DOT11_OID_BSSID, align 4
  %16 = call i32 @mgt_get_request(i32* %14, i32 %15, i32 0, i32* null, %union.oid_res_t* %10)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = bitcast %union.oid_res_t* %10 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ETH_ALEN, align 4
  %23 = call i32 @memcpy(i32 %19, i32 %21, i32 %22)
  %24 = load i32, i32* @ARPHRD_ETHER, align 4
  %25 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = bitcast %union.oid_res_t* %10 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kfree(i32 %28)
  %30 = load i32, i32* %11, align 4
  ret i32 %30
}

declare dso_local i32* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mgt_get_request(i32*, i32, i32, i32*, %union.oid_res_t*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
