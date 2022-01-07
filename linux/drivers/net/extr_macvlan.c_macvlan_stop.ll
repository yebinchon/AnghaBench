; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32*)* }
%struct.macvlan_dev = type { i32, i32, i32*, %struct.net_device* }

@MACVLAN_FLAG_NOPROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @macvlan_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvlan_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.macvlan_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %5)
  store %struct.macvlan_dev* %6, %struct.macvlan_dev** %3, align 8
  %7 = load %struct.macvlan_dev*, %struct.macvlan_dev** %3, align 8
  %8 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %7, i32 0, i32 3
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load %struct.macvlan_dev*, %struct.macvlan_dev** %3, align 8
  %11 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.net_device*, i32*)*, i32 (%struct.net_device*, i32*)** %18, align 8
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load %struct.macvlan_dev*, %struct.macvlan_dev** %3, align 8
  %22 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 %19(%struct.net_device* %20, i32* %23)
  %25 = load %struct.macvlan_dev*, %struct.macvlan_dev** %3, align 8
  %26 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %14, %1
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 @dev_uc_unsync(%struct.net_device* %28, %struct.net_device* %29)
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = call i32 @dev_mc_unsync(%struct.net_device* %31, %struct.net_device* %32)
  %34 = load %struct.macvlan_dev*, %struct.macvlan_dev** %3, align 8
  %35 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @macvlan_passthru(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %27
  %40 = load %struct.macvlan_dev*, %struct.macvlan_dev** %3, align 8
  %41 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MACVLAN_FLAG_NOPROMISC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = call i32 @dev_set_promiscuity(%struct.net_device* %47, i32 -1)
  br label %49

49:                                               ; preds = %46, %39
  br label %76

50:                                               ; preds = %27
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @IFF_ALLMULTI, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = call i32 @dev_set_allmulti(%struct.net_device* %58, i32 -1)
  br label %60

60:                                               ; preds = %57, %50
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IFF_PROMISC, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = call i32 @dev_set_promiscuity(%struct.net_device* %68, i32 -1)
  br label %70

70:                                               ; preds = %67, %60
  %71 = load %struct.net_device*, %struct.net_device** %4, align 8
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dev_uc_del(%struct.net_device* %71, i32 %74)
  br label %76

76:                                               ; preds = %70, %49
  %77 = load %struct.macvlan_dev*, %struct.macvlan_dev** %3, align 8
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @macvlan_hash_del(%struct.macvlan_dev* %77, i32 %83)
  ret i32 0
}

declare dso_local %struct.macvlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_uc_unsync(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @dev_mc_unsync(%struct.net_device*, %struct.net_device*) #1

declare dso_local i64 @macvlan_passthru(i32) #1

declare dso_local i32 @dev_set_promiscuity(%struct.net_device*, i32) #1

declare dso_local i32 @dev_set_allmulti(%struct.net_device*, i32) #1

declare dso_local i32 @dev_uc_del(%struct.net_device*, i32) #1

declare dso_local i32 @macvlan_hash_del(%struct.macvlan_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
