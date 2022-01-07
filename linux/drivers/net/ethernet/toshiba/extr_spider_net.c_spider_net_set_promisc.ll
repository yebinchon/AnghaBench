; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_set_promisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_set_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_card = type { %struct.net_device* }
%struct.net_device = type { i32, i32* }

@IFF_PROMISC = common dso_local global i32 0, align 4
@SPIDER_NET_GMRUAFILnR = common dso_local global i64 0, align 8
@SPIDER_NET_GMRUA0FIL15R = common dso_local global i64 0, align 8
@SPIDER_NET_PROMISC_VALUE = common dso_local global i32 0, align 4
@SPIDER_NET_UA_DESCR_VALUE = common dso_local global i32 0, align 4
@SPIDER_NET_NONPROMISC_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spider_net_card*)* @spider_net_set_promisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spider_net_set_promisc(%struct.spider_net_card* %0) #0 {
  %2 = alloca %struct.spider_net_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  store %struct.spider_net_card* %0, %struct.spider_net_card** %2, align 8
  %6 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %7 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %6, i32 0, i32 0
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @IFF_PROMISC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %17 = load i64, i64* @SPIDER_NET_GMRUAFILnR, align 8
  %18 = call i32 @spider_net_write_reg(%struct.spider_net_card* %16, i64 %17, i32 0)
  %19 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %20 = load i64, i64* @SPIDER_NET_GMRUAFILnR, align 8
  %21 = add nsw i64 %20, 4
  %22 = call i32 @spider_net_write_reg(%struct.spider_net_card* %19, i64 %21, i32 0)
  %23 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %24 = load i64, i64* @SPIDER_NET_GMRUA0FIL15R, align 8
  %25 = load i32, i32* @SPIDER_NET_PROMISC_VALUE, align 4
  %26 = call i32 @spider_net_write_reg(%struct.spider_net_card* %23, i64 %24, i32 %25)
  br label %63

27:                                               ; preds = %1
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = shl i32 %33, 8
  store i32 %34, i32* %3, align 4
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = call i32 @memcpy(i32* %4, i32* %45, i32 4)
  %47 = load i32, i32* @SPIDER_NET_UA_DESCR_VALUE, align 4
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %51 = load i64, i64* @SPIDER_NET_GMRUAFILnR, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @spider_net_write_reg(%struct.spider_net_card* %50, i64 %51, i32 %52)
  %54 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %55 = load i64, i64* @SPIDER_NET_GMRUAFILnR, align 8
  %56 = add nsw i64 %55, 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @spider_net_write_reg(%struct.spider_net_card* %54, i64 %56, i32 %57)
  %59 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %60 = load i64, i64* @SPIDER_NET_GMRUA0FIL15R, align 8
  %61 = load i32, i32* @SPIDER_NET_NONPROMISC_VALUE, align 4
  %62 = call i32 @spider_net_write_reg(%struct.spider_net_card* %59, i64 %60, i32 %61)
  br label %63

63:                                               ; preds = %27, %15
  ret void
}

declare dso_local i32 @spider_net_write_reg(%struct.spider_net_card*, i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
