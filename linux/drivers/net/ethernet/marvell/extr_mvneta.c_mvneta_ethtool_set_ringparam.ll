; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_ethtool_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_ethtool_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i64, i32 }
%struct.mvneta_port = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MVNETA_MAX_RXD = common dso_local global i64 0, align 8
@u16 = common dso_local global i32 0, align 4
@MVNETA_MAX_SKB_DESCS = common dso_local global i32 0, align 4
@MVNETA_MAX_TXD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"TX queue size set to %u (requested %u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"error on opening device after ring param change\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @mvneta_ethtool_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvneta_ethtool_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.mvneta_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.mvneta_port* @netdev_priv(%struct.net_device* %7)
  store %struct.mvneta_port* %8, %struct.mvneta_port** %6, align 8
  %9 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %80

21:                                               ; preds = %13
  %22 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MVNETA_MAX_RXD, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  br label %33

31:                                               ; preds = %21
  %32 = load i64, i64* @MVNETA_MAX_RXD, align 8
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i64 [ %30, %27 ], [ %32, %31 ]
  %35 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %36 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @u16, align 4
  %38 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MVNETA_MAX_SKB_DESCS, align 4
  %42 = mul nsw i32 %41, 2
  %43 = load i32, i32* @MVNETA_MAX_TXD, align 4
  %44 = call i32 @clamp_t(i32 %37, i32 %40, i32 %42, i32 %43)
  %45 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %46 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %48 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %33
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %57 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %60 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @netdev_warn(%struct.net_device* %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %54, %33
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = call i64 @netif_running(%struct.net_device* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = call i32 @mvneta_stop(%struct.net_device* %68)
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = call i64 @mvneta_open(%struct.net_device* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = call i32 @netdev_err(%struct.net_device* %74, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %80

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78, %63
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %73, %18
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.mvneta_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @clamp_t(i32, i32, i32, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @mvneta_stop(%struct.net_device*) #1

declare dso_local i64 @mvneta_open(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
