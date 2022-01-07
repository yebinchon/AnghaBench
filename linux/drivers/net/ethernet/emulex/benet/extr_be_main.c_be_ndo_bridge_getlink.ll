; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_ndo_bridge_getlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_ndo_bridge_getlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.be_adapter = type { i32, i32 }

@PORT_FWD_TYPE_VEB = common dso_local global i64 0, align 8
@PORT_FWD_TYPE_PASSTHRU = common dso_local global i64 0, align 8
@PORT_FWD_TYPE_VEPA = common dso_local global i64 0, align 8
@BRIDGE_MODE_VEPA = common dso_local global i32 0, align 4
@BRIDGE_MODE_VEB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, %struct.net_device*, i32, i32)* @be_ndo_bridge_getlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_ndo_bridge_getlink(%struct.sk_buff* %0, i32 %1, i32 %2, %struct.net_device* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.be_adapter*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.net_device* %3, %struct.net_device** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.net_device*, %struct.net_device** %11, align 8
  %18 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %17)
  store %struct.be_adapter* %18, %struct.be_adapter** %14, align 8
  store i32 0, i32* %15, align 4
  %19 = load %struct.be_adapter*, %struct.be_adapter** %14, align 8
  %20 = call i64 @BEx_chip(%struct.be_adapter* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load %struct.be_adapter*, %struct.be_adapter** %14, align 8
  %24 = call i64 @lancer_chip(%struct.be_adapter* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %22, %6
  %27 = load %struct.be_adapter*, %struct.be_adapter** %14, align 8
  %28 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pci_sriov_get_totalvfs(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %67

33:                                               ; preds = %26
  %34 = load i64, i64* @PORT_FWD_TYPE_VEB, align 8
  store i64 %34, i64* %16, align 8
  br label %50

35:                                               ; preds = %22
  %36 = load %struct.be_adapter*, %struct.be_adapter** %14, align 8
  %37 = load %struct.be_adapter*, %struct.be_adapter** %14, align 8
  %38 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be_cmd_get_hsw_config(%struct.be_adapter* %36, i32* null, i32 0, i32 %39, i64* %16, i32* null)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %67

44:                                               ; preds = %35
  %45 = load i64, i64* %16, align 8
  %46 = load i64, i64* @PORT_FWD_TYPE_PASSTHRU, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %67

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %33
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.net_device*, %struct.net_device** %11, align 8
  %55 = load i64, i64* %16, align 8
  %56 = load i64, i64* @PORT_FWD_TYPE_VEPA, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @BRIDGE_MODE_VEPA, align 4
  br label %62

60:                                               ; preds = %50
  %61 = load i32, i32* @BRIDGE_MODE_VEB, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @ndo_dflt_bridge_getlink(%struct.sk_buff* %51, i32 %52, i32 %53, %struct.net_device* %54, i32 %63, i32 0, i32 0, i32 %64, i32 %65, i32* null)
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %62, %48, %43, %32
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @BEx_chip(%struct.be_adapter*) #1

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i32 @pci_sriov_get_totalvfs(i32) #1

declare dso_local i32 @be_cmd_get_hsw_config(%struct.be_adapter*, i32*, i32, i32, i64*, i32*) #1

declare dso_local i32 @ndo_dflt_bridge_getlink(%struct.sk_buff*, i32, i32, %struct.net_device*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
