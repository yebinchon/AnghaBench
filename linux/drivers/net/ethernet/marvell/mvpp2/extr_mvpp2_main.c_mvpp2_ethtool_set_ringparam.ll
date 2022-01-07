; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_ethtool_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_ethtool_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i8*, i8* }
%struct.mvpp2_port = type { i8*, i8* }

@.str = private unnamed_addr constant [33 x i8] c"failed to change ring parameters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @mvpp2_ethtool_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_ethtool_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.mvpp2_port*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.mvpp2_port* @netdev_priv(%struct.net_device* %10)
  store %struct.mvpp2_port* %11, %struct.mvpp2_port** %6, align 8
  %12 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %13 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %7, align 8
  %15 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %16 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %20 = call i32 @mvpp2_check_ringparam_valid(%struct.net_device* %18, %struct.ethtool_ringparam* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %106

25:                                               ; preds = %2
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @netif_running(%struct.net_device* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %34 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %39 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  store i32 0, i32* %3, align 4
  br label %106

40:                                               ; preds = %25
  %41 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %42 = call i32 @mvpp2_stop_dev(%struct.mvpp2_port* %41)
  %43 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %44 = call i32 @mvpp2_cleanup_rxqs(%struct.mvpp2_port* %43)
  %45 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %46 = call i32 @mvpp2_cleanup_txqs(%struct.mvpp2_port* %45)
  %47 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %51 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %53 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %56 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %58 = call i32 @mvpp2_setup_rxqs(%struct.mvpp2_port* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %40
  %62 = load i8*, i8** %7, align 8
  %63 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %64 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %69 = call i32 @mvpp2_setup_rxqs(%struct.mvpp2_port* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %102

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73, %40
  %75 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %76 = call i32 @mvpp2_setup_txqs(%struct.mvpp2_port* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = load i8*, i8** %8, align 8
  %81 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %82 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %85 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %87 = call i32 @mvpp2_setup_txqs(%struct.mvpp2_port* %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %99

91:                                               ; preds = %79
  br label %92

92:                                               ; preds = %91, %74
  %93 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %94 = call i32 @mvpp2_start_dev(%struct.mvpp2_port* %93)
  %95 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %96 = call i32 @mvpp2_egress_enable(%struct.mvpp2_port* %95)
  %97 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %98 = call i32 @mvpp2_ingress_enable(%struct.mvpp2_port* %97)
  store i32 0, i32* %3, align 4
  br label %106

99:                                               ; preds = %90
  %100 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %101 = call i32 @mvpp2_cleanup_rxqs(%struct.mvpp2_port* %100)
  br label %102

102:                                              ; preds = %99, %72
  %103 = load %struct.net_device*, %struct.net_device** %4, align 8
  %104 = call i32 @netdev_err(%struct.net_device* %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %92, %29, %23
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.mvpp2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mvpp2_check_ringparam_valid(%struct.net_device*, %struct.ethtool_ringparam*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @mvpp2_stop_dev(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_cleanup_rxqs(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_cleanup_txqs(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_setup_rxqs(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_setup_txqs(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_start_dev(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_egress_enable(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_ingress_enable(%struct.mvpp2_port*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
