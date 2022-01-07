; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_ethtool.c_ionic_set_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_ethtool.c_ionic_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i64, i64, i64, i64 }
%struct.ionic_lif = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IONIC_LIF_QUEUE_RESET = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IONIC_LIF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_channels*)* @ionic_set_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_set_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_channels*, align 8
  %6 = alloca %struct.ionic_lif*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ionic_lif* @netdev_priv(%struct.net_device* %8)
  store %struct.ionic_lif* %9, %struct.ionic_lif** %6, align 8
  %10 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %19, %14, %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %77

32:                                               ; preds = %24
  %33 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %37 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %77

41:                                               ; preds = %32
  %42 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %43 = load i32, i32* @IONIC_LIF_QUEUE_RESET, align 4
  %44 = call i32 @ionic_wait_for_bit(%struct.ionic_lif* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %77

49:                                               ; preds = %41
  %50 = load i32, i32* @IONIC_LIF_UP, align 4
  %51 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %52 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @test_bit(i32 %50, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = call i32 @ionic_stop(%struct.net_device* %58)
  br label %60

60:                                               ; preds = %57, %49
  %61 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %65 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = call i32 @ionic_open(%struct.net_device* %69)
  br label %71

71:                                               ; preds = %68, %60
  %72 = load i32, i32* @IONIC_LIF_QUEUE_RESET, align 4
  %73 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %74 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @clear_bit(i32 %72, i32 %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %71, %46, %40, %29
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.ionic_lif* @netdev_priv(%struct.net_device*) #1

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
