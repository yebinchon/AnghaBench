; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_set_msg_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_set_msg_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.be_adapter = type { i32 }

@NETIF_MSG_HW = common dso_local global i32 0, align 4
@FW_LOG_LEVEL_DEFAULT = common dso_local global i32 0, align 4
@FW_LOG_LEVEL_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @be_set_msg_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_set_msg_level(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.be_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.be_adapter* %7, %struct.be_adapter** %5, align 8
  %8 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %9 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %46

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @NETIF_MSG_HW, align 4
  %17 = and i32 %15, %16
  %18 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @NETIF_MSG_HW, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %17, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %14
  %25 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %26 = call i64 @BEx_chip(%struct.be_adapter* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @NETIF_MSG_HW, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @FW_LOG_LEVEL_DEFAULT, align 4
  br label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @FW_LOG_LEVEL_FATAL, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = call i32 @be_cmd_set_fw_log_level(%struct.be_adapter* %29, i32 %39)
  br label %41

41:                                               ; preds = %38, %24
  br label %42

42:                                               ; preds = %41, %14
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %45 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %13
  ret void
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @BEx_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_set_fw_log_level(%struct.be_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
