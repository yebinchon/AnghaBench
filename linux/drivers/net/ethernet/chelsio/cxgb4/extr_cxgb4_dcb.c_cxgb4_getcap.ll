; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_getcap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_getcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32*)* @cxgb4_getcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4_getcap(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.port_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.port_info* @netdev2pinfo(%struct.net_device* %8)
  store %struct.port_info* %9, %struct.port_info** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %27 [
    i32 130, label %11
    i32 132, label %11
    i32 129, label %13
    i32 131, label %15
    i32 133, label %17
    i32 128, label %19
    i32 135, label %19
    i32 134, label %21
  ]

11:                                               ; preds = %3, %3
  %12 = load i32*, i32** %6, align 8
  store i32 1, i32* %12, align 4
  br label %29

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  store i32 128, i32* %14, align 4
  br label %29

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  store i32 128, i32* %16, align 4
  br label %29

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  store i32 1, i32* %18, align 4
  br label %29

19:                                               ; preds = %3, %3
  %20 = load i32*, i32** %6, align 8
  store i32 0, i32* %20, align 4
  br label %29

21:                                               ; preds = %3
  %22 = load %struct.port_info*, %struct.port_info** %7, align 8
  %23 = getelementptr inbounds %struct.port_info, %struct.port_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %6, align 8
  store i32 %25, i32* %26, align 4
  br label %29

27:                                               ; preds = %3
  %28 = load i32*, i32** %6, align 8
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %21, %19, %17, %15, %13, %11
  ret i32 0
}

declare dso_local %struct.port_info* @netdev2pinfo(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
