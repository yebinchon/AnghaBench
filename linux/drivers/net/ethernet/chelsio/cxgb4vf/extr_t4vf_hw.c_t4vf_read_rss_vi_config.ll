; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_read_rss_vi_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_read_rss_vi_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%union.rss_vi_config = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.fw_rss_vi_config_cmd = type { %struct.TYPE_9__, i8*, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@FW_RSS_VI_CONFIG_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_READ_F = common dso_local global i32 0, align 4
@FW_RSS_VI_CONFIG_CMD_IP6FOURTUPEN_F = common dso_local global i32 0, align 4
@FW_RSS_VI_CONFIG_CMD_IP6TWOTUPEN_F = common dso_local global i32 0, align 4
@FW_RSS_VI_CONFIG_CMD_IP4FOURTUPEN_F = common dso_local global i32 0, align 4
@FW_RSS_VI_CONFIG_CMD_IP4TWOTUPEN_F = common dso_local global i32 0, align 4
@FW_RSS_VI_CONFIG_CMD_UDPEN_F = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4vf_read_rss_vi_config(%struct.adapter* %0, i32 %1, %union.rss_vi_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.rss_vi_config*, align 8
  %8 = alloca %struct.fw_rss_vi_config_cmd, align 8
  %9 = alloca %struct.fw_rss_vi_config_cmd, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.rss_vi_config* %2, %union.rss_vi_config** %7, align 8
  %12 = call i32 @memset(%struct.fw_rss_vi_config_cmd* %8, i32 0, i32 24)
  %13 = load i32, i32* @FW_RSS_VI_CONFIG_CMD, align 4
  %14 = call i32 @FW_CMD_OP_V(i32 %13)
  %15 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @FW_CMD_READ_F, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @FW_RSS_VI_CONFIG_CMD_VIID(i32 %19)
  %21 = or i32 %18, %20
  %22 = call i8* @cpu_to_be32(i32 %21)
  %23 = getelementptr inbounds %struct.fw_rss_vi_config_cmd, %struct.fw_rss_vi_config_cmd* %8, i32 0, i32 2
  store i8* %22, i8** %23, align 8
  %24 = call i32 @FW_LEN16(%struct.fw_rss_vi_config_cmd* byval(%struct.fw_rss_vi_config_cmd) align 8 %8)
  %25 = call i8* @cpu_to_be32(i32 %24)
  %26 = getelementptr inbounds %struct.fw_rss_vi_config_cmd, %struct.fw_rss_vi_config_cmd* %8, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = load %struct.adapter*, %struct.adapter** %5, align 8
  %28 = call i32 @t4vf_wr_mbox(%struct.adapter* %27, %struct.fw_rss_vi_config_cmd* %8, i32 24, %struct.fw_rss_vi_config_cmd* %9)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %94

33:                                               ; preds = %3
  %34 = load %struct.adapter*, %struct.adapter** %5, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %90 [
    i32 128, label %39
  ]

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.fw_rss_vi_config_cmd, %struct.fw_rss_vi_config_cmd* %9, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @be32_to_cpu(i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @FW_RSS_VI_CONFIG_CMD_IP6FOURTUPEN_F, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = load %union.rss_vi_config*, %union.rss_vi_config** %7, align 8
  %51 = bitcast %union.rss_vi_config* %50 to %struct.TYPE_10__*
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @FW_RSS_VI_CONFIG_CMD_IP6TWOTUPEN_F, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = load %union.rss_vi_config*, %union.rss_vi_config** %7, align 8
  %59 = bitcast %union.rss_vi_config* %58 to %struct.TYPE_10__*
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @FW_RSS_VI_CONFIG_CMD_IP4FOURTUPEN_F, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = load %union.rss_vi_config*, %union.rss_vi_config** %7, align 8
  %67 = bitcast %union.rss_vi_config* %66 to %struct.TYPE_10__*
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @FW_RSS_VI_CONFIG_CMD_IP4TWOTUPEN_F, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = load %union.rss_vi_config*, %union.rss_vi_config** %7, align 8
  %75 = bitcast %union.rss_vi_config* %74 to %struct.TYPE_10__*
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @FW_RSS_VI_CONFIG_CMD_UDPEN_F, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = load %union.rss_vi_config*, %union.rss_vi_config** %7, align 8
  %83 = bitcast %union.rss_vi_config* %82 to %struct.TYPE_10__*
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 4
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @FW_RSS_VI_CONFIG_CMD_DEFAULTQ_G(i32 %85)
  %87 = load %union.rss_vi_config*, %union.rss_vi_config** %7, align 8
  %88 = bitcast %union.rss_vi_config* %87 to %struct.TYPE_10__*
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 5
  store i32 %86, i32* %89, align 4
  br label %93

90:                                               ; preds = %33
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %94

93:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %90, %31
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @memset(%struct.fw_rss_vi_config_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_RSS_VI_CONFIG_CMD_VIID(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_rss_vi_config_cmd* byval(%struct.fw_rss_vi_config_cmd) align 8) #1

declare dso_local i32 @t4vf_wr_mbox(%struct.adapter*, %struct.fw_rss_vi_config_cmd*, i32, %struct.fw_rss_vi_config_cmd*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @FW_RSS_VI_CONFIG_CMD_DEFAULTQ_G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
