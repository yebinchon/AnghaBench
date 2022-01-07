; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32 }
%struct.hnae3_handle = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hnae3_handle*, i32, i32, i32)* }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"set pauseparam: autoneg=%u, rx:%u, tx:%u\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @hns3_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.hnae3_handle*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.hnae3_handle* @hns3_get_handle(%struct.net_device* %7)
  store %struct.hnae3_handle* %8, %struct.hnae3_handle** %6, align 8
  %9 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %10 = load i32, i32* @drv, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %13 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @netif_dbg(%struct.hnae3_handle* %9, i32 %10, %struct.net_device* %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %20)
  %22 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %23 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.hnae3_handle*, i32, i32, i32)*, i32 (%struct.hnae3_handle*, i32, i32, i32)** %27, align 8
  %29 = icmp ne i32 (%struct.hnae3_handle*, i32, i32, i32)* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %2
  %31 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %32 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (%struct.hnae3_handle*, i32, i32, i32)*, i32 (%struct.hnae3_handle*, i32, i32, i32)** %36, align 8
  %38 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %39 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 %37(%struct.hnae3_handle* %38, i32 %41, i32 %44, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %52

49:                                               ; preds = %2
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %30
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.hnae3_handle* @hns3_get_handle(%struct.net_device*) #1

declare dso_local i32 @netif_dbg(%struct.hnae3_handle*, i32, %struct.net_device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
