; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_link_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_link_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i40e_netdev_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i32 }

@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"link test\0A\00", align 1
@drv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"link query timed out, please retry test\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*)* @i40e_link_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_link_test(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.i40e_netdev_priv*, align 8
  %7 = alloca %struct.i40e_pf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.i40e_netdev_priv* %11, %struct.i40e_netdev_priv** %6, align 8
  %12 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %6, align 8
  %13 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.i40e_pf*, %struct.i40e_pf** %15, align 8
  store %struct.i40e_pf* %16, %struct.i40e_pf** %7, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %18 = load i32, i32* @hw, align 4
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = call i32 @netif_info(%struct.i40e_pf* %17, i32 %18, %struct.net_device* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %22 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %21, i32 0, i32 0
  %23 = call i64 @i40e_get_link_status(i32* %22, i32* %9)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %28 = load i32, i32* @drv, align 4
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = call i32 @netif_err(%struct.i40e_pf* %27, i32 %28, %struct.net_device* %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32*, i32** %5, align 8
  store i32 1, i32* %31, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %3, align 4
  br label %44

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32*, i32** %5, align 8
  store i32 0, i32* %38, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32*, i32** %5, align 8
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %26
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.i40e_pf*, i32, %struct.net_device*, i8*) #1

declare dso_local i64 @i40e_get_link_status(i32*, i32*) #1

declare dso_local i32 @netif_err(%struct.i40e_pf*, i32, %struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
