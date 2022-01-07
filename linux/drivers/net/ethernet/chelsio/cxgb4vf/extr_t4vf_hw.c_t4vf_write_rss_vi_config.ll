; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_write_rss_vi_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_write_rss_vi_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%union.rss_vi_config = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.fw_rss_vi_config_cmd = type { %struct.TYPE_10__, i8*, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }

@FW_RSS_VI_CONFIG_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4
@FW_RSS_VI_CONFIG_CMD_IP6FOURTUPEN_F = common dso_local global i32 0, align 4
@FW_RSS_VI_CONFIG_CMD_IP6TWOTUPEN_F = common dso_local global i32 0, align 4
@FW_RSS_VI_CONFIG_CMD_IP4FOURTUPEN_F = common dso_local global i32 0, align 4
@FW_RSS_VI_CONFIG_CMD_IP4TWOTUPEN_F = common dso_local global i32 0, align 4
@FW_RSS_VI_CONFIG_CMD_UDPEN_F = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4vf_write_rss_vi_config(%struct.adapter* %0, i32 %1, %union.rss_vi_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.rss_vi_config*, align 8
  %8 = alloca %struct.fw_rss_vi_config_cmd, align 8
  %9 = alloca %struct.fw_rss_vi_config_cmd, align 8
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.rss_vi_config* %2, %union.rss_vi_config** %7, align 8
  %11 = call i32 @memset(%struct.fw_rss_vi_config_cmd* %8, i32 0, i32 24)
  %12 = load i32, i32* @FW_RSS_VI_CONFIG_CMD, align 4
  %13 = call i32 @FW_CMD_OP_V(i32 %12)
  %14 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @FW_RSS_VI_CONFIG_CMD_VIID(i32 %18)
  %20 = or i32 %17, %19
  %21 = call i8* @cpu_to_be32(i32 %20)
  %22 = getelementptr inbounds %struct.fw_rss_vi_config_cmd, %struct.fw_rss_vi_config_cmd* %8, i32 0, i32 2
  store i8* %21, i8** %22, align 8
  %23 = call i32 @FW_LEN16(%struct.fw_rss_vi_config_cmd* byval(%struct.fw_rss_vi_config_cmd) align 8 %8)
  %24 = call i8* @cpu_to_be32(i32 %23)
  %25 = getelementptr inbounds %struct.fw_rss_vi_config_cmd, %struct.fw_rss_vi_config_cmd* %8, i32 0, i32 1
  store i8* %24, i8** %25, align 8
  %26 = load %struct.adapter*, %struct.adapter** %5, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %94 [
    i32 128, label %31
  ]

31:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %32 = load %union.rss_vi_config*, %union.rss_vi_config** %7, align 8
  %33 = bitcast %union.rss_vi_config* %32 to %struct.TYPE_8__*
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* @FW_RSS_VI_CONFIG_CMD_IP6FOURTUPEN_F, align 4
  %39 = load i32, i32* %10, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %37, %31
  %42 = load %union.rss_vi_config*, %union.rss_vi_config** %7, align 8
  %43 = bitcast %union.rss_vi_config* %42 to %struct.TYPE_8__*
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* @FW_RSS_VI_CONFIG_CMD_IP6TWOTUPEN_F, align 4
  %49 = load i32, i32* %10, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %47, %41
  %52 = load %union.rss_vi_config*, %union.rss_vi_config** %7, align 8
  %53 = bitcast %union.rss_vi_config* %52 to %struct.TYPE_8__*
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* @FW_RSS_VI_CONFIG_CMD_IP4FOURTUPEN_F, align 4
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %57, %51
  %62 = load %union.rss_vi_config*, %union.rss_vi_config** %7, align 8
  %63 = bitcast %union.rss_vi_config* %62 to %struct.TYPE_8__*
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* @FW_RSS_VI_CONFIG_CMD_IP4TWOTUPEN_F, align 4
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %67, %61
  %72 = load %union.rss_vi_config*, %union.rss_vi_config** %7, align 8
  %73 = bitcast %union.rss_vi_config* %72 to %struct.TYPE_8__*
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32, i32* @FW_RSS_VI_CONFIG_CMD_UDPEN_F, align 4
  %79 = load i32, i32* %10, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %77, %71
  %82 = load %union.rss_vi_config*, %union.rss_vi_config** %7, align 8
  %83 = bitcast %union.rss_vi_config* %82 to %struct.TYPE_8__*
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @FW_RSS_VI_CONFIG_CMD_DEFAULTQ_V(i32 %85)
  %87 = load i32, i32* %10, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i8* @cpu_to_be32(i32 %89)
  %91 = getelementptr inbounds %struct.fw_rss_vi_config_cmd, %struct.fw_rss_vi_config_cmd* %8, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  store i8* %90, i8** %93, align 8
  br label %97

94:                                               ; preds = %3
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %100

97:                                               ; preds = %81
  %98 = load %struct.adapter*, %struct.adapter** %5, align 8
  %99 = call i32 @t4vf_wr_mbox(%struct.adapter* %98, %struct.fw_rss_vi_config_cmd* %8, i32 24, %struct.fw_rss_vi_config_cmd* %9)
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @memset(%struct.fw_rss_vi_config_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_RSS_VI_CONFIG_CMD_VIID(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_rss_vi_config_cmd* byval(%struct.fw_rss_vi_config_cmd) align 8) #1

declare dso_local i32 @FW_RSS_VI_CONFIG_CMD_DEFAULTQ_V(i32) #1

declare dso_local i32 @t4vf_wr_mbox(%struct.adapter*, %struct.fw_rss_vi_config_cmd*, i32, %struct.fw_rss_vi_config_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
