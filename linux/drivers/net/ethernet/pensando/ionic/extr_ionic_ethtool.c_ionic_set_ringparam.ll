; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_ethtool.c_ionic_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_ethtool.c_ionic_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i64, i64, i64, i64 }
%struct.ionic_lif = type { i64, i64, i32 }

@.str = private unnamed_addr constant [50 x i8] c"Changing jumbo or mini descriptors not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Descriptor count must be a power of 2\0A\00", align 1
@IONIC_LIF_QUEUE_RESET = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IONIC_LIF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @ionic_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.ionic_lif*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ionic_lif* @netdev_priv(%struct.net_device* %8)
  store %struct.ionic_lif* %9, %struct.ionic_lif** %6, align 8
  %10 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14, %2
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call i32 @netdev_info(%struct.net_device* %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %99

24:                                               ; preds = %14
  %25 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @is_power_of_2(i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @is_power_of_2(i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = call i32 @netdev_info(%struct.net_device* %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %99

41:                                               ; preds = %30
  %42 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %46 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %54 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %99

58:                                               ; preds = %49, %41
  %59 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %60 = load i32, i32* @IONIC_LIF_QUEUE_RESET, align 4
  %61 = call i32 @ionic_wait_for_bit(%struct.ionic_lif* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %99

66:                                               ; preds = %58
  %67 = load i32, i32* @IONIC_LIF_UP, align 4
  %68 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %69 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @test_bit(i32 %67, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load %struct.net_device*, %struct.net_device** %4, align 8
  %76 = call i32 @ionic_stop(%struct.net_device* %75)
  br label %77

77:                                               ; preds = %74, %66
  %78 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %79 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %82 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %84 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %87 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %77
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  %92 = call i32 @ionic_open(%struct.net_device* %91)
  br label %93

93:                                               ; preds = %90, %77
  %94 = load i32, i32* @IONIC_LIF_QUEUE_RESET, align 4
  %95 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %96 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @clear_bit(i32 %94, i32 %97)
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %93, %63, %57, %36, %19
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.ionic_lif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i32 @ionic_wait_for_bit(%struct.ionic_lif*, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ionic_stop(%struct.net_device*) #1

declare dso_local i32 @ionic_open(%struct.net_device*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
