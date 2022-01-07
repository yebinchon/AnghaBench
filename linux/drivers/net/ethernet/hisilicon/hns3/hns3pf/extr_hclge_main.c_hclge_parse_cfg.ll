; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_parse_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_parse_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_cfg = type { i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.hclge_desc = type { i64 }
%struct.hclge_cfg_param_cmd = type { i32* }

@HCLGE_CFG_VMDQ_M = common dso_local global i32 0, align 4
@HCLGE_CFG_VMDQ_S = common dso_local global i32 0, align 4
@HCLGE_CFG_TC_NUM_M = common dso_local global i32 0, align 4
@HCLGE_CFG_TC_NUM_S = common dso_local global i32 0, align 4
@HCLGE_CFG_TQP_DESC_N_M = common dso_local global i32 0, align 4
@HCLGE_CFG_TQP_DESC_N_S = common dso_local global i32 0, align 4
@HCLGE_CFG_PHY_ADDR_M = common dso_local global i32 0, align 4
@HCLGE_CFG_PHY_ADDR_S = common dso_local global i32 0, align 4
@HCLGE_CFG_MEDIA_TP_M = common dso_local global i32 0, align 4
@HCLGE_CFG_MEDIA_TP_S = common dso_local global i32 0, align 4
@HCLGE_CFG_RX_BUF_LEN_M = common dso_local global i32 0, align 4
@HCLGE_CFG_RX_BUF_LEN_S = common dso_local global i32 0, align 4
@HCLGE_CFG_MAC_ADDR_H_M = common dso_local global i32 0, align 4
@HCLGE_CFG_MAC_ADDR_H_S = common dso_local global i32 0, align 4
@HCLGE_CFG_DEFAULT_SPEED_M = common dso_local global i32 0, align 4
@HCLGE_CFG_DEFAULT_SPEED_S = common dso_local global i32 0, align 4
@HCLGE_CFG_RSS_SIZE_M = common dso_local global i32 0, align 4
@HCLGE_CFG_RSS_SIZE_S = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@HCLGE_CFG_SPEED_ABILITY_M = common dso_local global i32 0, align 4
@HCLGE_CFG_SPEED_ABILITY_S = common dso_local global i32 0, align 4
@HCLGE_CFG_UMV_TBL_SPACE_M = common dso_local global i32 0, align 4
@HCLGE_CFG_UMV_TBL_SPACE_S = common dso_local global i32 0, align 4
@HCLGE_DEFAULT_UMV_SPACE_PER_PF = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_cfg*, %struct.hclge_desc*)* @hclge_parse_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_parse_cfg(%struct.hclge_cfg* %0, %struct.hclge_desc* %1) #0 {
  %3 = alloca %struct.hclge_cfg*, align 8
  %4 = alloca %struct.hclge_desc*, align 8
  %5 = alloca %struct.hclge_cfg_param_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hclge_cfg* %0, %struct.hclge_cfg** %3, align 8
  store %struct.hclge_desc* %1, %struct.hclge_desc** %4, align 8
  %9 = load %struct.hclge_desc*, %struct.hclge_desc** %4, align 8
  %10 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %9, i64 0
  %11 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.hclge_cfg_param_cmd*
  store %struct.hclge_cfg_param_cmd* %13, %struct.hclge_cfg_param_cmd** %5, align 8
  %14 = load %struct.hclge_cfg_param_cmd*, %struct.hclge_cfg_param_cmd** %5, align 8
  %15 = getelementptr inbounds %struct.hclge_cfg_param_cmd, %struct.hclge_cfg_param_cmd* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @__le32_to_cpu(i32 %18)
  %20 = load i32, i32* @HCLGE_CFG_VMDQ_M, align 4
  %21 = load i32, i32* @HCLGE_CFG_VMDQ_S, align 4
  %22 = call i8* @hnae3_get_field(i8* %19, i32 %20, i32 %21)
  %23 = load %struct.hclge_cfg*, %struct.hclge_cfg** %3, align 8
  %24 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %23, i32 0, i32 11
  store i8* %22, i8** %24, align 8
  %25 = load %struct.hclge_cfg_param_cmd*, %struct.hclge_cfg_param_cmd** %5, align 8
  %26 = getelementptr inbounds %struct.hclge_cfg_param_cmd, %struct.hclge_cfg_param_cmd* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @__le32_to_cpu(i32 %29)
  %31 = load i32, i32* @HCLGE_CFG_TC_NUM_M, align 4
  %32 = load i32, i32* @HCLGE_CFG_TC_NUM_S, align 4
  %33 = call i8* @hnae3_get_field(i8* %30, i32 %31, i32 %32)
  %34 = load %struct.hclge_cfg*, %struct.hclge_cfg** %3, align 8
  %35 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %34, i32 0, i32 10
  store i8* %33, i8** %35, align 8
  %36 = load %struct.hclge_cfg_param_cmd*, %struct.hclge_cfg_param_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.hclge_cfg_param_cmd, %struct.hclge_cfg_param_cmd* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @__le32_to_cpu(i32 %40)
  %42 = load i32, i32* @HCLGE_CFG_TQP_DESC_N_M, align 4
  %43 = load i32, i32* @HCLGE_CFG_TQP_DESC_N_S, align 4
  %44 = call i8* @hnae3_get_field(i8* %41, i32 %42, i32 %43)
  %45 = load %struct.hclge_cfg*, %struct.hclge_cfg** %3, align 8
  %46 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %45, i32 0, i32 9
  store i8* %44, i8** %46, align 8
  %47 = load %struct.hclge_cfg_param_cmd*, %struct.hclge_cfg_param_cmd** %5, align 8
  %48 = getelementptr inbounds %struct.hclge_cfg_param_cmd, %struct.hclge_cfg_param_cmd* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @__le32_to_cpu(i32 %51)
  %53 = load i32, i32* @HCLGE_CFG_PHY_ADDR_M, align 4
  %54 = load i32, i32* @HCLGE_CFG_PHY_ADDR_S, align 4
  %55 = call i8* @hnae3_get_field(i8* %52, i32 %53, i32 %54)
  %56 = load %struct.hclge_cfg*, %struct.hclge_cfg** %3, align 8
  %57 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %56, i32 0, i32 8
  store i8* %55, i8** %57, align 8
  %58 = load %struct.hclge_cfg_param_cmd*, %struct.hclge_cfg_param_cmd** %5, align 8
  %59 = getelementptr inbounds %struct.hclge_cfg_param_cmd, %struct.hclge_cfg_param_cmd* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @__le32_to_cpu(i32 %62)
  %64 = load i32, i32* @HCLGE_CFG_MEDIA_TP_M, align 4
  %65 = load i32, i32* @HCLGE_CFG_MEDIA_TP_S, align 4
  %66 = call i8* @hnae3_get_field(i8* %63, i32 %64, i32 %65)
  %67 = load %struct.hclge_cfg*, %struct.hclge_cfg** %3, align 8
  %68 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %67, i32 0, i32 7
  store i8* %66, i8** %68, align 8
  %69 = load %struct.hclge_cfg_param_cmd*, %struct.hclge_cfg_param_cmd** %5, align 8
  %70 = getelementptr inbounds %struct.hclge_cfg_param_cmd, %struct.hclge_cfg_param_cmd* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @__le32_to_cpu(i32 %73)
  %75 = load i32, i32* @HCLGE_CFG_RX_BUF_LEN_M, align 4
  %76 = load i32, i32* @HCLGE_CFG_RX_BUF_LEN_S, align 4
  %77 = call i8* @hnae3_get_field(i8* %74, i32 %75, i32 %76)
  %78 = load %struct.hclge_cfg*, %struct.hclge_cfg** %3, align 8
  %79 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %78, i32 0, i32 6
  store i8* %77, i8** %79, align 8
  %80 = load %struct.hclge_cfg_param_cmd*, %struct.hclge_cfg_param_cmd** %5, align 8
  %81 = getelementptr inbounds %struct.hclge_cfg_param_cmd, %struct.hclge_cfg_param_cmd* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @__le32_to_cpu(i32 %84)
  %86 = ptrtoint i8* %85 to i32
  store i32 %86, i32* %7, align 4
  %87 = load %struct.hclge_cfg_param_cmd*, %struct.hclge_cfg_param_cmd** %5, align 8
  %88 = getelementptr inbounds %struct.hclge_cfg_param_cmd, %struct.hclge_cfg_param_cmd* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @__le32_to_cpu(i32 %91)
  %93 = load i32, i32* @HCLGE_CFG_MAC_ADDR_H_M, align 4
  %94 = load i32, i32* @HCLGE_CFG_MAC_ADDR_H_S, align 4
  %95 = call i8* @hnae3_get_field(i8* %92, i32 %93, i32 %94)
  %96 = ptrtoint i8* %95 to i32
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = shl i32 %97, 31
  %99 = shl i32 %98, 1
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %7, align 4
  %102 = load %struct.hclge_cfg_param_cmd*, %struct.hclge_cfg_param_cmd** %5, align 8
  %103 = getelementptr inbounds %struct.hclge_cfg_param_cmd, %struct.hclge_cfg_param_cmd* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @__le32_to_cpu(i32 %106)
  %108 = load i32, i32* @HCLGE_CFG_DEFAULT_SPEED_M, align 4
  %109 = load i32, i32* @HCLGE_CFG_DEFAULT_SPEED_S, align 4
  %110 = call i8* @hnae3_get_field(i8* %107, i32 %108, i32 %109)
  %111 = load %struct.hclge_cfg*, %struct.hclge_cfg** %3, align 8
  %112 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %111, i32 0, i32 5
  store i8* %110, i8** %112, align 8
  %113 = load %struct.hclge_cfg_param_cmd*, %struct.hclge_cfg_param_cmd** %5, align 8
  %114 = getelementptr inbounds %struct.hclge_cfg_param_cmd, %struct.hclge_cfg_param_cmd* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @__le32_to_cpu(i32 %117)
  %119 = load i32, i32* @HCLGE_CFG_RSS_SIZE_M, align 4
  %120 = load i32, i32* @HCLGE_CFG_RSS_SIZE_S, align 4
  %121 = call i8* @hnae3_get_field(i8* %118, i32 %119, i32 %120)
  %122 = load %struct.hclge_cfg*, %struct.hclge_cfg** %3, align 8
  %123 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %122, i32 0, i32 4
  store i8* %121, i8** %123, align 8
  store i32 0, i32* %8, align 4
  br label %124

124:                                              ; preds = %140, %2
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @ETH_ALEN, align 4
  %127 = icmp ult i32 %125, %126
  br i1 %127, label %128, label %143

128:                                              ; preds = %124
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %8, align 4
  %131 = mul i32 8, %130
  %132 = ashr i32 %129, %131
  %133 = and i32 %132, 255
  %134 = load %struct.hclge_cfg*, %struct.hclge_cfg** %3, align 8
  %135 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %133, i32* %139, align 4
  br label %140

140:                                              ; preds = %128
  %141 = load i32, i32* %8, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %124

143:                                              ; preds = %124
  %144 = load %struct.hclge_desc*, %struct.hclge_desc** %4, align 8
  %145 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %144, i64 1
  %146 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to %struct.hclge_cfg_param_cmd*
  store %struct.hclge_cfg_param_cmd* %148, %struct.hclge_cfg_param_cmd** %5, align 8
  %149 = load %struct.hclge_cfg_param_cmd*, %struct.hclge_cfg_param_cmd** %5, align 8
  %150 = getelementptr inbounds %struct.hclge_cfg_param_cmd, %struct.hclge_cfg_param_cmd* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = call i8* @__le32_to_cpu(i32 %153)
  %155 = load %struct.hclge_cfg*, %struct.hclge_cfg** %3, align 8
  %156 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %155, i32 0, i32 3
  store i8* %154, i8** %156, align 8
  %157 = load %struct.hclge_cfg_param_cmd*, %struct.hclge_cfg_param_cmd** %5, align 8
  %158 = getelementptr inbounds %struct.hclge_cfg_param_cmd, %struct.hclge_cfg_param_cmd* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = call i8* @__le32_to_cpu(i32 %161)
  %163 = load i32, i32* @HCLGE_CFG_SPEED_ABILITY_M, align 4
  %164 = load i32, i32* @HCLGE_CFG_SPEED_ABILITY_S, align 4
  %165 = call i8* @hnae3_get_field(i8* %162, i32 %163, i32 %164)
  %166 = load %struct.hclge_cfg*, %struct.hclge_cfg** %3, align 8
  %167 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %166, i32 0, i32 2
  store i8* %165, i8** %167, align 8
  %168 = load %struct.hclge_cfg_param_cmd*, %struct.hclge_cfg_param_cmd** %5, align 8
  %169 = getelementptr inbounds %struct.hclge_cfg_param_cmd, %struct.hclge_cfg_param_cmd* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = call i8* @__le32_to_cpu(i32 %172)
  %174 = load i32, i32* @HCLGE_CFG_UMV_TBL_SPACE_M, align 4
  %175 = load i32, i32* @HCLGE_CFG_UMV_TBL_SPACE_S, align 4
  %176 = call i8* @hnae3_get_field(i8* %173, i32 %174, i32 %175)
  %177 = load %struct.hclge_cfg*, %struct.hclge_cfg** %3, align 8
  %178 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %177, i32 0, i32 1
  store i8* %176, i8** %178, align 8
  %179 = load %struct.hclge_cfg*, %struct.hclge_cfg** %3, align 8
  %180 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %187, label %183

183:                                              ; preds = %143
  %184 = load i8*, i8** @HCLGE_DEFAULT_UMV_SPACE_PER_PF, align 8
  %185 = load %struct.hclge_cfg*, %struct.hclge_cfg** %3, align 8
  %186 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %185, i32 0, i32 1
  store i8* %184, i8** %186, align 8
  br label %187

187:                                              ; preds = %183, %143
  ret void
}

declare dso_local i8* @hnae3_get_field(i8*, i32, i32) #1

declare dso_local i8* @__le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
