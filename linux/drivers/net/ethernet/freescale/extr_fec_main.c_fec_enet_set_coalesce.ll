; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32 }
%struct.fec_enet_private = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@FEC_QUIRK_HAS_COALESCE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Rx coalesced frames exceed hardware limitation\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Tx coalesced frame exceed hardware limitation\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Rx coalesced usec exceed hardware limitation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @fec_enet_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.fec_enet_private*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %9)
  store %struct.fec_enet_private* %10, %struct.fec_enet_private** %6, align 8
  %11 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %12 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %11, i32 0, i32 5
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %16 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @FEC_QUIRK_HAS_COALESCE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %93

24:                                               ; preds = %2
  %25 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 255
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.device*, %struct.device** %7, align 8
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %93

34:                                               ; preds = %24
  %35 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 255
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.device*, %struct.device** %7, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %93

44:                                               ; preds = %34
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %47 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @fec_enet_us_to_itr_clock(%struct.net_device* %45, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ugt i32 %50, 65535
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.device*, %struct.device** %7, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %93

57:                                               ; preds = %44
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %60 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @fec_enet_us_to_itr_clock(%struct.net_device* %58, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ugt i32 %63, 65535
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load %struct.device*, %struct.device** %7, align 8
  %67 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %93

70:                                               ; preds = %57
  %71 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %75 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %77 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %80 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %82 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %85 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %87 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %90 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  %92 = call i32 @fec_enet_itr_coal_set(%struct.net_device* %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %70, %65, %52, %39, %29, %21
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @fec_enet_us_to_itr_clock(%struct.net_device*, i32) #1

declare dso_local i32 @fec_enet_itr_coal_set(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
