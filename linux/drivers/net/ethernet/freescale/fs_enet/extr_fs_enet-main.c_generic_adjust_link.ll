; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_fs_enet-main.c_generic_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_fs_enet-main.c_generic_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32, i64, i64 }
%struct.fs_enet_private = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @generic_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generic_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fs_enet_private*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.fs_enet_private* @netdev_priv(%struct.net_device* %6)
  store %struct.fs_enet_private* %7, %struct.fs_enet_private** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  store %struct.phy_device* %10, %struct.phy_device** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %12 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %63

15:                                               ; preds = %1
  %16 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %20 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  store i32 1, i32* %5, align 4
  %24 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %25 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %28 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %23, %15
  %30 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %31 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %34 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  %38 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %39 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %42 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %37, %29
  %44 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %45 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  store i32 1, i32* %5, align 4
  %49 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %50 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %49, i32 0, i32 2
  store i32 1, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %56 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %58, align 8
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = call i32 %59(%struct.net_device* %60)
  br label %62

62:                                               ; preds = %54, %51
  br label %76

63:                                               ; preds = %1
  %64 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %65 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  store i32 1, i32* %5, align 4
  %69 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %70 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %69, i32 0, i32 2
  store i32 0, i32* %70, align 8
  %71 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %72 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %74 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %73, i32 0, i32 0
  store i32 -1, i32* %74, align 8
  br label %75

75:                                               ; preds = %68, %63
  br label %76

76:                                               ; preds = %75, %62
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %81 = call i64 @netif_msg_link(%struct.fs_enet_private* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %85 = call i32 @phy_print_status(%struct.phy_device* %84)
  br label %86

86:                                               ; preds = %83, %79, %76
  ret void
}

declare dso_local %struct.fs_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_msg_link(%struct.fs_enet_private*) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
