; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_dcb_get_num_tcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_dcb_get_num_tcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.qlcnic_dcb_cfg* }
%struct.qlcnic_dcb_cfg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@QLCNIC_DCB_STATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32*)* @qlcnic_dcb_get_num_tcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_dcb_get_num_tcs(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.qlcnic_adapter*, align 8
  %9 = alloca %struct.qlcnic_dcb_cfg*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.qlcnic_adapter* %11, %struct.qlcnic_adapter** %8, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.qlcnic_dcb_cfg*, %struct.qlcnic_dcb_cfg** %15, align 8
  store %struct.qlcnic_dcb_cfg* %16, %struct.qlcnic_dcb_cfg** %9, align 8
  %17 = load i32, i32* @QLCNIC_DCB_STATE, align 4
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @test_bit(i32 %17, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %44

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %41 [
    i32 128, label %29
    i32 129, label %35
  ]

29:                                               ; preds = %27
  %30 = load %struct.qlcnic_dcb_cfg*, %struct.qlcnic_dcb_cfg** %9, align 8
  %31 = getelementptr inbounds %struct.qlcnic_dcb_cfg, %struct.qlcnic_dcb_cfg* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %4, align 4
  br label %44

35:                                               ; preds = %27
  %36 = load %struct.qlcnic_dcb_cfg*, %struct.qlcnic_dcb_cfg** %9, align 8
  %37 = getelementptr inbounds %struct.qlcnic_dcb_cfg, %struct.qlcnic_dcb_cfg* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  store i32 0, i32* %4, align 4
  br label %44

41:                                               ; preds = %27
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %35, %29, %24
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
