; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_send_rss_cfg_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_send_rss_cfg_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_rss_config_cmd = type { i32, i32*, i32, i32 }

@IWL_RSS_HASH_TYPE_IPV4_TCP = common dso_local global i32 0, align 4
@IWL_RSS_HASH_TYPE_IPV4_UDP = common dso_local global i32 0, align 4
@IWL_RSS_HASH_TYPE_IPV4_PAYLOAD = common dso_local global i32 0, align 4
@IWL_RSS_HASH_TYPE_IPV6_TCP = common dso_local global i32 0, align 4
@IWL_RSS_HASH_TYPE_IPV6_UDP = common dso_local global i32 0, align 4
@IWL_RSS_HASH_TYPE_IPV6_PAYLOAD = common dso_local global i32 0, align 4
@IWL_RSS_ENABLE = common dso_local global i32 0, align 4
@RSS_CONFIG_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*)* @iwl_send_rss_cfg_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_send_rss_cfg_cmd(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_rss_config_cmd, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %6 = getelementptr inbounds %struct.iwl_rss_config_cmd, %struct.iwl_rss_config_cmd* %5, i32 0, i32 0
  %7 = load i32, i32* @IWL_RSS_HASH_TYPE_IPV4_TCP, align 4
  %8 = call i32 @BIT(i32 %7)
  %9 = load i32, i32* @IWL_RSS_HASH_TYPE_IPV4_UDP, align 4
  %10 = call i32 @BIT(i32 %9)
  %11 = or i32 %8, %10
  %12 = load i32, i32* @IWL_RSS_HASH_TYPE_IPV4_PAYLOAD, align 4
  %13 = call i32 @BIT(i32 %12)
  %14 = or i32 %11, %13
  %15 = load i32, i32* @IWL_RSS_HASH_TYPE_IPV6_TCP, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = or i32 %14, %16
  %18 = load i32, i32* @IWL_RSS_HASH_TYPE_IPV6_UDP, align 4
  %19 = call i32 @BIT(i32 %18)
  %20 = or i32 %17, %19
  %21 = load i32, i32* @IWL_RSS_HASH_TYPE_IPV6_PAYLOAD, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = or i32 %20, %22
  store i32 %23, i32* %6, align 8
  %24 = getelementptr inbounds %struct.iwl_rss_config_cmd, %struct.iwl_rss_config_cmd* %5, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = getelementptr inbounds %struct.iwl_rss_config_cmd, %struct.iwl_rss_config_cmd* %5, i32 0, i32 2
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.iwl_rss_config_cmd, %struct.iwl_rss_config_cmd* %5, i32 0, i32 3
  %27 = load i32, i32* @IWL_RSS_ENABLE, align 4
  %28 = call i32 @cpu_to_le32(i32 %27)
  store i32 %28, i32* %26, align 4
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

36:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %58, %36
  %38 = load i32, i32* %4, align 4
  %39 = getelementptr inbounds %struct.iwl_rss_config_cmd, %struct.iwl_rss_config_cmd* %5, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @ARRAY_SIZE(i32* %40)
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %46 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 1
  %51 = srem i32 %44, %50
  %52 = add nsw i32 1, %51
  %53 = getelementptr inbounds %struct.iwl_rss_config_cmd, %struct.iwl_rss_config_cmd* %5, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %52, i32* %57, align 4
  br label %58

58:                                               ; preds = %43
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %37

61:                                               ; preds = %37
  %62 = getelementptr inbounds %struct.iwl_rss_config_cmd, %struct.iwl_rss_config_cmd* %5, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @netdev_rss_key_fill(i32 %63, i32 4)
  %65 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %66 = load i32, i32* @RSS_CONFIG_CMD, align 4
  %67 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %65, i32 %66, i32 0, i32 24, %struct.iwl_rss_config_cmd* %5)
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %61, %35
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @netdev_rss_key_fill(i32, i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_rss_config_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
