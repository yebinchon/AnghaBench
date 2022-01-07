; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_get_fecparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_get_fecparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_fecparam = type { i8*, i8* }
%struct.hnae3_handle = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.hnae3_ae_ops* }
%struct.hnae3_ae_ops = type { i32 (%struct.hnae3_handle*, i32*, i32*)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_fecparam*)* @hns3_get_fecparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_get_fecparam(%struct.net_device* %0, %struct.ethtool_fecparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_fecparam*, align 8
  %6 = alloca %struct.hnae3_handle*, align 8
  %7 = alloca %struct.hnae3_ae_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_fecparam* %1, %struct.ethtool_fecparam** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.hnae3_handle* @hns3_get_handle(%struct.net_device* %10)
  store %struct.hnae3_handle* %11, %struct.hnae3_handle** %6, align 8
  %12 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %13 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %15, align 8
  store %struct.hnae3_ae_ops* %16, %struct.hnae3_ae_ops** %7, align 8
  %17 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %18 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %48

26:                                               ; preds = %2
  %27 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %7, align 8
  %28 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %27, i32 0, i32 0
  %29 = load i32 (%struct.hnae3_handle*, i32*, i32*)*, i32 (%struct.hnae3_handle*, i32*, i32*)** %28, align 8
  %30 = icmp ne i32 (%struct.hnae3_handle*, i32*, i32*)* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %48

34:                                               ; preds = %26
  %35 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %7, align 8
  %36 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %35, i32 0, i32 0
  %37 = load i32 (%struct.hnae3_handle*, i32*, i32*)*, i32 (%struct.hnae3_handle*, i32*, i32*)** %36, align 8
  %38 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %39 = call i32 %37(%struct.hnae3_handle* %38, i32* %8, i32* %9)
  %40 = load i32, i32* %8, align 4
  %41 = call i8* @loc_to_eth_fec(i32 %40)
  %42 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i8* @loc_to_eth_fec(i32 %44)
  %46 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %34, %31, %23
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.hnae3_handle* @hns3_get_handle(%struct.net_device*) #1

declare dso_local i8* @loc_to_eth_fec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
