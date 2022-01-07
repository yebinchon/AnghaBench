; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_keystone_get_stat_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_keystone_get_stat_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netcp_intf = type { i32 }
%struct.gbe_intf = type { %struct.gbe_priv* }
%struct.gbe_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @keystone_get_stat_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keystone_get_stat_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.netcp_intf*, align 8
  %8 = alloca %struct.gbe_intf*, align 8
  %9 = alloca %struct.gbe_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.netcp_intf* @netdev_priv(%struct.net_device* %11)
  store %struct.netcp_intf* %12, %struct.netcp_intf** %7, align 8
  %13 = load %struct.netcp_intf*, %struct.netcp_intf** %7, align 8
  %14 = call %struct.gbe_intf* @keystone_get_intf_data(%struct.netcp_intf* %13)
  store %struct.gbe_intf* %14, %struct.gbe_intf** %8, align 8
  %15 = load %struct.gbe_intf*, %struct.gbe_intf** %8, align 8
  %16 = icmp ne %struct.gbe_intf* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %51

18:                                               ; preds = %3
  %19 = load %struct.gbe_intf*, %struct.gbe_intf** %8, align 8
  %20 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %19, i32 0, i32 0
  %21 = load %struct.gbe_priv*, %struct.gbe_priv** %20, align 8
  store %struct.gbe_priv* %21, %struct.gbe_priv** %9, align 8
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %51 [
    i32 129, label %23
    i32 128, label %50
  ]

23:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %46, %23
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.gbe_priv*, %struct.gbe_priv** %9, align 8
  %27 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %24
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.gbe_priv*, %struct.gbe_priv** %9, align 8
  %33 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %41 = call i32 @memcpy(i32* %31, i32 %39, i32 %40)
  %42 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %6, align 8
  br label %46

46:                                               ; preds = %30
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %24

49:                                               ; preds = %24
  br label %51

50:                                               ; preds = %18
  br label %51

51:                                               ; preds = %17, %18, %50, %49
  ret void
}

declare dso_local %struct.netcp_intf* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.gbe_intf* @keystone_get_intf_data(%struct.netcp_intf*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
