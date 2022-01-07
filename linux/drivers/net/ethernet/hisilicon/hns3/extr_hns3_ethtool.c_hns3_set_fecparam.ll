; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_set_fecparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_set_fecparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_fecparam = type { i32 }
%struct.hnae3_handle = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.hnae3_ae_ops* }
%struct.hnae3_ae_ops = type { i32 (%struct.hnae3_handle*, i32)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"set fecparam: mode=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_fecparam*)* @hns3_set_fecparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_set_fecparam(%struct.net_device* %0, %struct.ethtool_fecparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_fecparam*, align 8
  %6 = alloca %struct.hnae3_handle*, align 8
  %7 = alloca %struct.hnae3_ae_ops*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_fecparam* %1, %struct.ethtool_fecparam** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.hnae3_handle* @hns3_get_handle(%struct.net_device* %9)
  store %struct.hnae3_handle* %10, %struct.hnae3_handle** %6, align 8
  %11 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %12 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %14, align 8
  store %struct.hnae3_ae_ops* %15, %struct.hnae3_ae_ops** %7, align 8
  %16 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %17 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 32
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %49

25:                                               ; preds = %2
  %26 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %7, align 8
  %27 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %26, i32 0, i32 0
  %28 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %27, align 8
  %29 = icmp ne i32 (%struct.hnae3_handle*, i32)* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %49

33:                                               ; preds = %25
  %34 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @eth_to_loc_fec(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %39 = load i32, i32* @drv, align 4
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @netif_dbg(%struct.hnae3_handle* %38, i32 %39, %struct.net_device* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %7, align 8
  %44 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %43, i32 0, i32 0
  %45 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %44, align 8
  %46 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 %45(%struct.hnae3_handle* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %33, %30, %22
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.hnae3_handle* @hns3_get_handle(%struct.net_device*) #1

declare dso_local i32 @eth_to_loc_fec(i32) #1

declare dso_local i32 @netif_dbg(%struct.hnae3_handle*, i32, %struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
