; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.macvlan_dev = type { i64, i64, i32 }
%struct.nlattr = type { i32 }

@IFLA_MACVLAN_MODE = common dso_local global i32 0, align 4
@IFLA_MACVLAN_FLAGS = common dso_local global i32 0, align 4
@IFLA_MACVLAN_MACADDR_COUNT = common dso_local global i32 0, align 4
@IFLA_MACVLAN_MACADDR_DATA = common dso_local global i32 0, align 4
@MACVLAN_HASH_SIZE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @macvlan_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvlan_fill_info(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.macvlan_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %9)
  store %struct.macvlan_dev* %10, %struct.macvlan_dev** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = load i32, i32* @IFLA_MACVLAN_MODE, align 4
  %13 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %14 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @nla_put_u32(%struct.sk_buff* %11, i32 %12, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %70

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load i32, i32* @IFLA_MACVLAN_FLAGS, align 4
  %22 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %23 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @nla_put_u16(%struct.sk_buff* %20, i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %70

28:                                               ; preds = %19
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load i32, i32* @IFLA_MACVLAN_MACADDR_COUNT, align 4
  %31 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %32 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @nla_put_u32(%struct.sk_buff* %29, i32 %30, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %70

37:                                               ; preds = %28
  %38 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %39 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %37
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = load i32, i32* @IFLA_MACVLAN_MACADDR_DATA, align 4
  %45 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %43, i32 %44)
  store %struct.nlattr* %45, %struct.nlattr** %8, align 8
  %46 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %47 = icmp eq %struct.nlattr* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %70

49:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %62, %49
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @MACVLAN_HASH_SIZE, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @macvlan_fill_info_macaddr(%struct.sk_buff* %55, %struct.macvlan_dev* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %70

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %50

65:                                               ; preds = %50
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %68 = call i32 @nla_nest_end(%struct.sk_buff* %66, %struct.nlattr* %67)
  br label %69

69:                                               ; preds = %65, %37
  store i32 0, i32* %3, align 4
  br label %73

70:                                               ; preds = %60, %48, %36, %27, %18
  %71 = load i32, i32* @EMSGSIZE, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %69
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.macvlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @macvlan_fill_info_macaddr(%struct.sk_buff*, %struct.macvlan_dev*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
