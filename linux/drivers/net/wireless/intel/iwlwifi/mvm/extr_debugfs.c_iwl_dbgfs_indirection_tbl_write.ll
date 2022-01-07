; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_dbgfs_indirection_tbl_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_dbgfs_indirection_tbl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_rss_config_cmd = type { i32, i32, i32*, i32 }

@IWL_RSS_HASH_TYPE_IPV4_TCP = common dso_local global i32 0, align 4
@IWL_RSS_HASH_TYPE_IPV4_UDP = common dso_local global i32 0, align 4
@IWL_RSS_HASH_TYPE_IPV4_PAYLOAD = common dso_local global i32 0, align 4
@IWL_RSS_HASH_TYPE_IPV6_TCP = common dso_local global i32 0, align 4
@IWL_RSS_HASH_TYPE_IPV6_UDP = common dso_local global i32 0, align 4
@IWL_RSS_HASH_TYPE_IPV6_PAYLOAD = common dso_local global i32 0, align 4
@IWL_RSS_ENABLE = common dso_local global i32 0, align 4
@RSS_CONFIG_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i8*, i64, i32*)* @iwl_dbgfs_indirection_tbl_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_dbgfs_indirection_tbl_write(%struct.iwl_mvm* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.iwl_rss_config_cmd, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = getelementptr inbounds %struct.iwl_rss_config_cmd, %struct.iwl_rss_config_cmd* %10, i32 0, i32 0
  %16 = load i32, i32* @IWL_RSS_HASH_TYPE_IPV4_TCP, align 4
  %17 = load i32, i32* @IWL_RSS_HASH_TYPE_IPV4_UDP, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @IWL_RSS_HASH_TYPE_IPV4_PAYLOAD, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @IWL_RSS_HASH_TYPE_IPV6_TCP, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @IWL_RSS_HASH_TYPE_IPV6_UDP, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @IWL_RSS_HASH_TYPE_IPV6_PAYLOAD, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %15, align 8
  %27 = getelementptr inbounds %struct.iwl_rss_config_cmd, %struct.iwl_rss_config_cmd* %10, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.iwl_rss_config_cmd, %struct.iwl_rss_config_cmd* %10, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = getelementptr inbounds %struct.iwl_rss_config_cmd, %struct.iwl_rss_config_cmd* %10, i32 0, i32 3
  %30 = load i32, i32* @IWL_RSS_ENABLE, align 4
  %31 = call i32 @cpu_to_le32(i32 %30)
  store i32 %31, i32* %29, align 8
  %32 = load i64, i64* %8, align 8
  %33 = udiv i64 %32, 2
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %14, align 4
  %35 = getelementptr inbounds %struct.iwl_rss_config_cmd, %struct.iwl_rss_config_cmd* %10, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @hex2bin(i32* %36, i8* %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %4
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %112

44:                                               ; preds = %4
  %45 = getelementptr inbounds %struct.iwl_rss_config_cmd, %struct.iwl_rss_config_cmd* %10, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @ARRAY_SIZE(i32* %46)
  %48 = load i32, i32* %14, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %50

50:                                               ; preds = %66, %44
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.iwl_rss_config_cmd, %struct.iwl_rss_config_cmd* %10, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %14, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = getelementptr inbounds %struct.iwl_rss_config_cmd, %struct.iwl_rss_config_cmd* %10, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @memcpy(i32* %61, i32* %63, i32 %64)
  br label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %50

69:                                               ; preds = %50
  %70 = getelementptr inbounds %struct.iwl_rss_config_cmd, %struct.iwl_rss_config_cmd* %10, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %14, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = getelementptr inbounds %struct.iwl_rss_config_cmd, %struct.iwl_rss_config_cmd* %10, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds %struct.iwl_rss_config_cmd, %struct.iwl_rss_config_cmd* %10, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @ARRAY_SIZE(i32* %80)
  %82 = load i32, i32* %14, align 4
  %83 = srem i32 %81, %82
  %84 = call i32 @memcpy(i32* %76, i32* %78, i32 %83)
  %85 = getelementptr inbounds %struct.iwl_rss_config_cmd, %struct.iwl_rss_config_cmd* %10, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @netdev_rss_key_fill(i32 %86, i32 4)
  %88 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %89 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %88, i32 0, i32 0
  %90 = call i32 @mutex_lock(i32* %89)
  %91 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %92 = call i64 @iwl_mvm_firmware_running(%struct.iwl_mvm* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %69
  %95 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %96 = load i32, i32* @RSS_CONFIG_CMD, align 4
  %97 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %95, i32 %96, i32 0, i32 24, %struct.iwl_rss_config_cmd* %10)
  store i32 %97, i32* %11, align 4
  br label %99

98:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  br label %99

99:                                               ; preds = %98, %94
  %100 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %101 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = sext i32 %103 to i64
  br label %109

107:                                              ; preds = %99
  %108 = load i64, i64* %8, align 8
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i64 [ %106, %105 ], [ %108, %107 ]
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %109, %42
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @hex2bin(i32*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @netdev_rss_key_fill(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @iwl_mvm_firmware_running(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_rss_config_cmd*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
