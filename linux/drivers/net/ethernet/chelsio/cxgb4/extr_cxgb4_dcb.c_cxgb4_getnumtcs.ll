; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_getnumtcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_getnumtcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CXGB4_DCB_FW_PGRATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32*)* @cxgb4_getnumtcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4_getnumtcs(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.port_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.port_info* @netdev2pinfo(%struct.net_device* %9)
  store %struct.port_info* %10, %struct.port_info** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %31 [
    i32 128, label %12
    i32 129, label %29
  ]

12:                                               ; preds = %3
  %13 = load %struct.port_info*, %struct.port_info** %8, align 8
  %14 = getelementptr inbounds %struct.port_info, %struct.port_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CXGB4_DCB_FW_PGRATE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load %struct.port_info*, %struct.port_info** %8, align 8
  %22 = getelementptr inbounds %struct.port_info, %struct.port_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  br label %28

26:                                               ; preds = %12
  %27 = load i32*, i32** %7, align 8
  store i32 8, i32* %27, align 4
  br label %28

28:                                               ; preds = %26, %20
  br label %34

29:                                               ; preds = %3
  %30 = load i32*, i32** %7, align 8
  store i32 8, i32* %30, align 4
  br label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %35

34:                                               ; preds = %29, %28
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.port_info* @netdev2pinfo(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
