; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_reset_subtask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_reset_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_nic_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NIC_STATE2_RESET_REQUESTED = common dso_local global i32 0, align 4
@NIC_STATE_DOWN = common dso_local global i32 0, align 4
@NIC_STATE_REMOVING = common dso_local global i32 0, align 4
@NIC_STATE_RESETTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"try to reset %s port!\0A\00", align 1
@HNAE_PORT_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"service\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_nic_priv*)* @hns_nic_reset_subtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_nic_reset_subtask(%struct.hns_nic_priv* %0) #0 {
  %2 = alloca %struct.hns_nic_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.hns_nic_priv* %0, %struct.hns_nic_priv** %2, align 8
  %4 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %5 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @NIC_STATE2_RESET_REQUESTED, align 4
  %10 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %11 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %10, i32 0, i32 1
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %60

15:                                               ; preds = %1
  %16 = load i32, i32* @NIC_STATE2_RESET_REQUESTED, align 4
  %17 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %18 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %17, i32 0, i32 1
  %19 = call i32 @clear_bit(i32 %16, i32* %18)
  %20 = load i32, i32* @NIC_STATE_DOWN, align 4
  %21 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %22 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %21, i32 0, i32 1
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* @NIC_STATE_REMOVING, align 4
  %27 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %28 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %27, i32 0, i32 1
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @NIC_STATE_RESETTING, align 4
  %33 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %34 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %33, i32 0, i32 1
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %25, %15
  br label %60

38:                                               ; preds = %31
  %39 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %40 = call i32 @hns_nic_dump(%struct.hns_nic_priv* %39)
  %41 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %42 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @HNAE_PORT_DEBUG, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %49 = call i32 @netdev_info(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %48)
  %50 = call i32 (...) @rtnl_lock()
  %51 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %52 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @netif_trans_update(i32 %53)
  %55 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %56 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @hns_nic_net_reinit(i32 %57)
  %59 = call i32 (...) @rtnl_unlock()
  br label %60

60:                                               ; preds = %38, %37, %14
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @hns_nic_dump(%struct.hns_nic_priv*) #1

declare dso_local i32 @netdev_info(i32, i8*, i8*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @netif_trans_update(i32) #1

declare dso_local i32 @hns_nic_net_reinit(i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
