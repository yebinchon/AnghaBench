; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_get_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_get_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ena_adapter = type { i32 }

@ETH_RSS_HASH_TOP = common dso_local global i32 0, align 4
@ETH_RSS_HASH_XOR = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Command parameter is not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i32*, i32*)* @ena_get_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_get_rxfh(%struct.net_device* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ena_adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.ena_adapter* @netdev_priv(%struct.net_device* %14)
  store %struct.ena_adapter* %15, %struct.ena_adapter** %10, align 8
  %16 = load %struct.ena_adapter*, %struct.ena_adapter** %10, align 8
  %17 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @ena_com_indirect_table_get(i32 %18, i32* %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %5, align 4
  br label %56

25:                                               ; preds = %4
  %26 = load %struct.ena_adapter*, %struct.ena_adapter** %10, align 8
  %27 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @ena_com_get_hash_function(i32 %28, i32* %11, i32* %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %5, align 4
  br label %56

35:                                               ; preds = %25
  %36 = load i32, i32* %11, align 4
  switch i32 %36, label %41 [
    i32 128, label %37
    i32 129, label %39
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* @ETH_RSS_HASH_TOP, align 4
  store i32 %38, i32* %12, align 4
  br label %48

39:                                               ; preds = %35
  %40 = load i32, i32* @ETH_RSS_HASH_XOR, align 4
  store i32 %40, i32* %12, align 4
  br label %48

41:                                               ; preds = %35
  %42 = load %struct.ena_adapter*, %struct.ena_adapter** %10, align 8
  %43 = load i32, i32* @drv, align 4
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = call i32 @netif_err(%struct.ena_adapter* %42, i32 %43, %struct.net_device* %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %56

48:                                               ; preds = %39, %37
  %49 = load i32*, i32** %9, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %12, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %41, %33, %23
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.ena_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ena_com_indirect_table_get(i32, i32*) #1

declare dso_local i32 @ena_com_get_hash_function(i32, i32*, i32*) #1

declare dso_local i32 @netif_err(%struct.ena_adapter*, i32, %struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
