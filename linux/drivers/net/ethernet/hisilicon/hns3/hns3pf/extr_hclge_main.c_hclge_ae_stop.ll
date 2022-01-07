; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_ae_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_ae_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { i64, i32 }

@HCLGE_STATE_DOWN = common dso_local global i32 0, align 4
@HCLGE_STATE_RST_HANDLING = common dso_local global i32 0, align 4
@HNAE3_FUNC_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_handle*)* @hclge_ae_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_ae_stop(%struct.hnae3_handle* %0) #0 {
  %2 = alloca %struct.hnae3_handle*, align 8
  %3 = alloca %struct.hclge_vport*, align 8
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %2, align 8
  %6 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %7 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %6)
  store %struct.hclge_vport* %7, %struct.hclge_vport** %3, align 8
  %8 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %9 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %8, i32 0, i32 0
  %10 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  store %struct.hclge_dev* %10, %struct.hclge_dev** %4, align 8
  %11 = load i32, i32* @HCLGE_STATE_DOWN, align 4
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %13 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %12, i32 0, i32 1
  %14 = call i32 @set_bit(i32 %11, i32* %13)
  %15 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %16 = call i32 @hclge_clear_arfs_rules(%struct.hnae3_handle* %15)
  %17 = load i32, i32* @HCLGE_STATE_RST_HANDLING, align 4
  %18 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %19 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %18, i32 0, i32 1
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %24 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HNAE3_FUNC_RESET, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %30 = call i32 @hclge_mac_stop_phy(%struct.hclge_dev* %29)
  %31 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %32 = call i32 @hclge_update_link_status(%struct.hclge_dev* %31)
  br label %59

33:                                               ; preds = %22, %1
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %45, %33
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %37 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @hclge_reset_tqp(%struct.hnae3_handle* %42, i32 %43)
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %34

48:                                               ; preds = %34
  %49 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %50 = call i32 @hclge_config_mac_tnl_int(%struct.hclge_dev* %49, i32 0)
  %51 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %52 = call i32 @hclge_cfg_mac_mode(%struct.hclge_dev* %51, i32 0)
  %53 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %54 = call i32 @hclge_mac_stop_phy(%struct.hclge_dev* %53)
  %55 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %56 = call i32 @hclge_reset_tqp_stats(%struct.hnae3_handle* %55)
  %57 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %58 = call i32 @hclge_update_link_status(%struct.hclge_dev* %57)
  br label %59

59:                                               ; preds = %48, %28
  ret void
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hclge_clear_arfs_rules(%struct.hnae3_handle*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hclge_mac_stop_phy(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_update_link_status(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_reset_tqp(%struct.hnae3_handle*, i32) #1

declare dso_local i32 @hclge_config_mac_tnl_int(%struct.hclge_dev*, i32) #1

declare dso_local i32 @hclge_cfg_mac_mode(%struct.hclge_dev*, i32) #1

declare dso_local i32 @hclge_reset_tqp_stats(%struct.hnae3_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
