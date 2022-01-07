; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_get_rss_glb_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_get_rss_glb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.rss_params }
%struct.rss_params = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fw_rss_glb_config_cmd = type { %struct.TYPE_10__, i8*, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@FW_RSS_GLB_CONFIG_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_READ_F = common dso_local global i32 0, align 4
@FW_RSS_GLB_CONFIG_CMD_SYNMAPEN_F = common dso_local global i32 0, align 4
@FW_RSS_GLB_CONFIG_CMD_SYN4TUPENIPV6_F = common dso_local global i32 0, align 4
@FW_RSS_GLB_CONFIG_CMD_SYN2TUPENIPV6_F = common dso_local global i32 0, align 4
@FW_RSS_GLB_CONFIG_CMD_SYN4TUPENIPV4_F = common dso_local global i32 0, align 4
@FW_RSS_GLB_CONFIG_CMD_SYN2TUPENIPV4_F = common dso_local global i32 0, align 4
@FW_RSS_GLB_CONFIG_CMD_OFDMAPEN_F = common dso_local global i32 0, align 4
@FW_RSS_GLB_CONFIG_CMD_TNLMAPEN_F = common dso_local global i32 0, align 4
@FW_RSS_GLB_CONFIG_CMD_TNLALLLKP_F = common dso_local global i32 0, align 4
@FW_RSS_GLB_CONFIG_CMD_HASHTOEPLITZ_F = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4vf_get_rss_glb_config(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.rss_params*, align 8
  %5 = alloca %struct.fw_rss_glb_config_cmd, align 8
  %6 = alloca %struct.fw_rss_glb_config_cmd, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store %struct.rss_params* %11, %struct.rss_params** %4, align 8
  %12 = call i32 @memset(%struct.fw_rss_glb_config_cmd* %5, i32 0, i32 24)
  %13 = load i32, i32* @FW_RSS_GLB_CONFIG_CMD, align 4
  %14 = call i32 @FW_CMD_OP_V(i32 %13)
  %15 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @FW_CMD_READ_F, align 4
  %18 = or i32 %16, %17
  %19 = call i8* @cpu_to_be32(i32 %18)
  %20 = getelementptr inbounds %struct.fw_rss_glb_config_cmd, %struct.fw_rss_glb_config_cmd* %5, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = call i32 @FW_LEN16(%struct.fw_rss_glb_config_cmd* byval(%struct.fw_rss_glb_config_cmd) align 8 %5)
  %22 = call i8* @cpu_to_be32(i32 %21)
  %23 = getelementptr inbounds %struct.fw_rss_glb_config_cmd, %struct.fw_rss_glb_config_cmd* %5, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load %struct.adapter*, %struct.adapter** %3, align 8
  %25 = call i32 @t4vf_wr_mbox(%struct.adapter* %24, %struct.fw_rss_glb_config_cmd* %5, i32 24, %struct.fw_rss_glb_config_cmd* %6)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %143

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.fw_rss_glb_config_cmd, %struct.fw_rss_glb_config_cmd* %6, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @be32_to_cpu(i32 %34)
  %36 = call i32 @FW_RSS_GLB_CONFIG_CMD_MODE_G(i32 %35)
  %37 = load %struct.rss_params*, %struct.rss_params** %4, align 8
  %38 = getelementptr inbounds %struct.rss_params, %struct.rss_params* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.rss_params*, %struct.rss_params** %4, align 8
  %40 = getelementptr inbounds %struct.rss_params, %struct.rss_params* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %139 [
    i32 128, label %42
  ]

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.fw_rss_glb_config_cmd, %struct.fw_rss_glb_config_cmd* %6, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @be32_to_cpu(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @FW_RSS_GLB_CONFIG_CMD_SYNMAPEN_F, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load %struct.rss_params*, %struct.rss_params** %4, align 8
  %54 = getelementptr inbounds %struct.rss_params, %struct.rss_params* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @FW_RSS_GLB_CONFIG_CMD_SYN4TUPENIPV6_F, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = load %struct.rss_params*, %struct.rss_params** %4, align 8
  %63 = getelementptr inbounds %struct.rss_params, %struct.rss_params* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @FW_RSS_GLB_CONFIG_CMD_SYN2TUPENIPV6_F, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = load %struct.rss_params*, %struct.rss_params** %4, align 8
  %72 = getelementptr inbounds %struct.rss_params, %struct.rss_params* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @FW_RSS_GLB_CONFIG_CMD_SYN4TUPENIPV4_F, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = load %struct.rss_params*, %struct.rss_params** %4, align 8
  %81 = getelementptr inbounds %struct.rss_params, %struct.rss_params* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  store i32 %79, i32* %83, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @FW_RSS_GLB_CONFIG_CMD_SYN2TUPENIPV4_F, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = load %struct.rss_params*, %struct.rss_params** %4, align 8
  %90 = getelementptr inbounds %struct.rss_params, %struct.rss_params* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 4
  store i32 %88, i32* %92, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @FW_RSS_GLB_CONFIG_CMD_OFDMAPEN_F, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = load %struct.rss_params*, %struct.rss_params** %4, align 8
  %99 = getelementptr inbounds %struct.rss_params, %struct.rss_params* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 5
  store i32 %97, i32* %101, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @FW_RSS_GLB_CONFIG_CMD_TNLMAPEN_F, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = load %struct.rss_params*, %struct.rss_params** %4, align 8
  %108 = getelementptr inbounds %struct.rss_params, %struct.rss_params* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 6
  store i32 %106, i32* %110, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @FW_RSS_GLB_CONFIG_CMD_TNLALLLKP_F, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i32
  %116 = load %struct.rss_params*, %struct.rss_params** %4, align 8
  %117 = getelementptr inbounds %struct.rss_params, %struct.rss_params* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 7
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @FW_RSS_GLB_CONFIG_CMD_HASHTOEPLITZ_F, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i32
  %125 = load %struct.rss_params*, %struct.rss_params** %4, align 8
  %126 = getelementptr inbounds %struct.rss_params, %struct.rss_params* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 8
  store i32 %124, i32* %128, align 4
  %129 = load %struct.rss_params*, %struct.rss_params** %4, align 8
  %130 = getelementptr inbounds %struct.rss_params, %struct.rss_params* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %42
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %143

138:                                              ; preds = %42
  br label %142

139:                                              ; preds = %30
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %143

142:                                              ; preds = %138
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %142, %139, %135, %28
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @memset(%struct.fw_rss_glb_config_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_rss_glb_config_cmd* byval(%struct.fw_rss_glb_config_cmd) align 8) #1

declare dso_local i32 @t4vf_wr_mbox(%struct.adapter*, %struct.fw_rss_glb_config_cmd*, i32, %struct.fw_rss_glb_config_cmd*) #1

declare dso_local i32 @FW_RSS_GLB_CONFIG_CMD_MODE_G(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
