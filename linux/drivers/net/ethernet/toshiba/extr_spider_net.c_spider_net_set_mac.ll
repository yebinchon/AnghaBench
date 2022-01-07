; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_set_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.spider_net_card = type { i32 }
%struct.sockaddr = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@SPIDER_NET_GMACOPEMD = common dso_local global i32 0, align 4
@SPIDER_NET_GMACUNIMACU = common dso_local global i32 0, align 4
@SPIDER_NET_GMACUNIMACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @spider_net_set_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spider_net_set_mac(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.spider_net_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.spider_net_card* @netdev_priv(%struct.net_device* %11)
  store %struct.spider_net_card* %12, %struct.spider_net_card** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.sockaddr*
  store %struct.sockaddr* %14, %struct.sockaddr** %10, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %16 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @is_valid_ether_addr(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EADDRNOTAVAIL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %98

23:                                               ; preds = %2
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %28 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ETH_ALEN, align 4
  %31 = call i32 @memcpy(i32* %26, i32 %29, i32 %30)
  %32 = load %struct.spider_net_card*, %struct.spider_net_card** %6, align 8
  %33 = load i32, i32* @SPIDER_NET_GMACOPEMD, align 4
  %34 = call i32 @spider_net_read_reg(%struct.spider_net_card* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, -97
  store i32 %36, i32* %9, align 4
  %37 = load %struct.spider_net_card*, %struct.spider_net_card** %6, align 8
  %38 = load i32, i32* @SPIDER_NET_GMACOPEMD, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @spider_net_write_reg(%struct.spider_net_card* %37, i32 %38, i32 %39)
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 24
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 16
  %53 = add nsw i32 %46, %52
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 8
  %60 = add nsw i32 %53, %59
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %60, %65
  store i32 %66, i32* %8, align 4
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 8
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 5
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %72, %77
  store i32 %78, i32* %7, align 4
  %79 = load %struct.spider_net_card*, %struct.spider_net_card** %6, align 8
  %80 = load i32, i32* @SPIDER_NET_GMACUNIMACU, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @spider_net_write_reg(%struct.spider_net_card* %79, i32 %80, i32 %81)
  %83 = load %struct.spider_net_card*, %struct.spider_net_card** %6, align 8
  %84 = load i32, i32* @SPIDER_NET_GMACUNIMACL, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @spider_net_write_reg(%struct.spider_net_card* %83, i32 %84, i32 %85)
  %87 = load %struct.spider_net_card*, %struct.spider_net_card** %6, align 8
  %88 = load i32, i32* @SPIDER_NET_GMACOPEMD, align 4
  %89 = call i32 @spider_net_read_reg(%struct.spider_net_card* %87, i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %90, 96
  store i32 %91, i32* %9, align 4
  %92 = load %struct.spider_net_card*, %struct.spider_net_card** %6, align 8
  %93 = load i32, i32* @SPIDER_NET_GMACOPEMD, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @spider_net_write_reg(%struct.spider_net_card* %92, i32 %93, i32 %94)
  %96 = load %struct.spider_net_card*, %struct.spider_net_card** %6, align 8
  %97 = call i32 @spider_net_set_promisc(%struct.spider_net_card* %96)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %23, %20
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.spider_net_card* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @spider_net_read_reg(%struct.spider_net_card*, i32) #1

declare dso_local i32 @spider_net_write_reg(%struct.spider_net_card*, i32, i32) #1

declare dso_local i32 @spider_net_set_promisc(%struct.spider_net_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
