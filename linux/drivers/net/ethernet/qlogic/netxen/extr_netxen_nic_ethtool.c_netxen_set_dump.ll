; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_ethtool.c_netxen_set_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_ethtool.c_netxen_set_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_dump = type { i32 }
%struct.netxen_adapter = type { i32, i32, %struct.netxen_minidump }
%struct.netxen_minidump = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"FW dump not enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Previous dump not cleared, not forcing dump\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Forcing a fw dump\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Disabling FW Dump\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Enabling FW dump\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Forcing FW reset\0A\00", align 1
@NETXEN_FW_RESET_OWNER = common dso_local global i32 0, align 4
@FW_DUMP_LEVELS = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"Driver mask changed to: 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Invalid dump level: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_dump*)* @netxen_set_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_set_dump(%struct.net_device* %0, %struct.ethtool_dump* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_dump*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netxen_adapter*, align 8
  %8 = alloca %struct.netxen_minidump*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_dump* %1, %struct.ethtool_dump** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.netxen_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.netxen_adapter* %10, %struct.netxen_adapter** %7, align 8
  %11 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %12 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %11, i32 0, i32 2
  store %struct.netxen_minidump* %12, %struct.netxen_minidump** %8, align 8
  %13 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %14 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %70 [
    i32 129, label %16
    i32 131, label %37
    i32 130, label %48
    i32 128, label %59
  ]

16:                                               ; preds = %2
  %17 = load %struct.netxen_minidump*, %struct.netxen_minidump** %8, align 8
  %18 = getelementptr inbounds %struct.netxen_minidump, %struct.netxen_minidump* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %110

24:                                               ; preds = %16
  %25 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %26 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %30, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %110

32:                                               ; preds = %24
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %36 = call i32 @nx_dev_request_reset(%struct.netxen_adapter* %35)
  br label %109

37:                                               ; preds = %2
  %38 = load %struct.netxen_minidump*, %struct.netxen_minidump** %8, align 8
  %39 = getelementptr inbounds %struct.netxen_minidump, %struct.netxen_minidump* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %45 = load %struct.netxen_minidump*, %struct.netxen_minidump** %8, align 8
  %46 = getelementptr inbounds %struct.netxen_minidump, %struct.netxen_minidump* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %37
  br label %109

48:                                               ; preds = %2
  %49 = load %struct.netxen_minidump*, %struct.netxen_minidump** %8, align 8
  %50 = getelementptr inbounds %struct.netxen_minidump, %struct.netxen_minidump* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %56 = load %struct.netxen_minidump*, %struct.netxen_minidump** %8, align 8
  %57 = getelementptr inbounds %struct.netxen_minidump, %struct.netxen_minidump* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %48
  br label %109

59:                                               ; preds = %2
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %62 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %63 = call i32 @nx_dev_request_reset(%struct.netxen_adapter* %62)
  %64 = load i32, i32* @NETXEN_FW_RESET_OWNER, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %67 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %109

70:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %98, %70
  %72 = load i32, i32* %6, align 4
  %73 = load i32*, i32** @FW_DUMP_LEVELS, align 8
  %74 = call i32 @ARRAY_SIZE(i32* %73)
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %71
  %77 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** @FW_DUMP_LEVELS, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %79, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %76
  %87 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %88 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.netxen_minidump*, %struct.netxen_minidump** %8, align 8
  %91 = getelementptr inbounds %struct.netxen_minidump, %struct.netxen_minidump* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.net_device*, %struct.net_device** %4, align 8
  %93 = load %struct.netxen_minidump*, %struct.netxen_minidump** %8, align 8
  %94 = getelementptr inbounds %struct.netxen_minidump, %struct.netxen_minidump* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  store i32 0, i32* %3, align 4
  br label %110

97:                                               ; preds = %76
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %71

101:                                              ; preds = %71
  %102 = load %struct.net_device*, %struct.net_device** %4, align 8
  %103 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %104 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %110

109:                                              ; preds = %59, %58, %47, %32
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %101, %86, %29, %21
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.netxen_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @nx_dev_request_reset(%struct.netxen_adapter*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
