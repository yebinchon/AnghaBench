; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_hwrm_reserve_pf_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_hwrm_reserve_pf_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.hwrm_func_cfg_input = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@HWRM_FUNC_CFG = common dso_local global i32 0, align 4
@FUNC_CFG_REQ_ENABLES_NUM_TX_RINGS = common dso_local global i32 0, align 4
@FUNC_CFG_REQ_ENABLES_NUM_RX_RINGS = common dso_local global i32 0, align 4
@FUNC_CFG_REQ_ENABLES_NUM_STAT_CTXS = common dso_local global i32 0, align 4
@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@FUNC_CFG_REQ_ENABLES_NUM_MSIX = common dso_local global i32 0, align 4
@FUNC_CFG_REQ_ENABLES_NUM_CMPL_RINGS = common dso_local global i32 0, align 4
@FUNC_CFG_REQ_ENABLES_NUM_RSSCOS_CTXS = common dso_local global i32 0, align 4
@FUNC_CFG_REQ_ENABLES_NUM_HW_RING_GRPS = common dso_local global i32 0, align 4
@FUNC_CFG_REQ_ENABLES_NUM_VNICS = common dso_local global i32 0, align 4
@BNXT_FLAG_NEW_RSS_CAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, %struct.hwrm_func_cfg_input*, i32, i32, i32, i32, i32, i32)* @__bnxt_hwrm_reserve_pf_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bnxt_hwrm_reserve_pf_rings(%struct.bnxt* %0, %struct.hwrm_func_cfg_input* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.bnxt*, align 8
  %10 = alloca %struct.hwrm_func_cfg_input*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %9, align 8
  store %struct.hwrm_func_cfg_input* %1, %struct.hwrm_func_cfg_input** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %19 = load %struct.hwrm_func_cfg_input*, %struct.hwrm_func_cfg_input** %10, align 8
  %20 = load i32, i32* @HWRM_FUNC_CFG, align 4
  %21 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %18, %struct.hwrm_func_cfg_input* %19, i32 %20, i32 -1, i32 -1)
  %22 = call i8* @cpu_to_le16(i32 65535)
  %23 = load %struct.hwrm_func_cfg_input*, %struct.hwrm_func_cfg_input** %10, align 8
  %24 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %23, i32 0, i32 9
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %8
  %28 = load i32, i32* @FUNC_CFG_REQ_ENABLES_NUM_TX_RINGS, align 4
  br label %30

29:                                               ; preds = %8
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  %32 = load i32, i32* %17, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i8* @cpu_to_le16(i32 %34)
  %36 = load %struct.hwrm_func_cfg_input*, %struct.hwrm_func_cfg_input** %10, align 8
  %37 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %36, i32 0, i32 8
  store i8* %35, i8** %37, align 8
  %38 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %39 = call i64 @BNXT_NEW_RM(%struct.bnxt* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %191

41:                                               ; preds = %30
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @FUNC_CFG_REQ_ENABLES_NUM_RX_RINGS, align 4
  br label %47

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  %49 = load i32, i32* %17, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @FUNC_CFG_REQ_ENABLES_NUM_STAT_CTXS, align 4
  br label %56

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ]
  %58 = load i32, i32* %17, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %17, align 4
  %60 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %61 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %96

66:                                               ; preds = %56
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @FUNC_CFG_REQ_ENABLES_NUM_MSIX, align 4
  br label %72

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ]
  %74 = load i32, i32* %17, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i32, i32* @FUNC_CFG_REQ_ENABLES_NUM_CMPL_RINGS, align 4
  br label %83

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i32 [ %81, %80 ], [ 0, %82 ]
  %85 = load i32, i32* %17, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @FUNC_CFG_REQ_ENABLES_NUM_RSSCOS_CTXS, align 4
  br label %92

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91, %89
  %93 = phi i32 [ %90, %89 ], [ 0, %91 ]
  %94 = load i32, i32* %17, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %17, align 4
  br label %117

96:                                               ; preds = %56
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* @FUNC_CFG_REQ_ENABLES_NUM_CMPL_RINGS, align 4
  br label %102

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %99
  %103 = phi i32 [ %100, %99 ], [ 0, %101 ]
  %104 = load i32, i32* %17, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load i32, i32* @FUNC_CFG_REQ_ENABLES_NUM_HW_RING_GRPS, align 4
  %110 = load i32, i32* @FUNC_CFG_REQ_ENABLES_NUM_RSSCOS_CTXS, align 4
  %111 = or i32 %109, %110
  br label %113

112:                                              ; preds = %102
  br label %113

113:                                              ; preds = %112, %108
  %114 = phi i32 [ %111, %108 ], [ 0, %112 ]
  %115 = load i32, i32* %17, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %17, align 4
  br label %117

117:                                              ; preds = %113, %92
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i32, i32* @FUNC_CFG_REQ_ENABLES_NUM_VNICS, align 4
  br label %123

122:                                              ; preds = %117
  br label %123

123:                                              ; preds = %122, %120
  %124 = phi i32 [ %121, %120 ], [ 0, %122 ]
  %125 = load i32, i32* %17, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i8* @cpu_to_le16(i32 %127)
  %129 = load %struct.hwrm_func_cfg_input*, %struct.hwrm_func_cfg_input** %10, align 8
  %130 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %129, i32 0, i32 7
  store i8* %128, i8** %130, align 8
  %131 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %132 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %123
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %138, %139
  %141 = call i8* @cpu_to_le16(i32 %140)
  %142 = load %struct.hwrm_func_cfg_input*, %struct.hwrm_func_cfg_input** %10, align 8
  %143 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %142, i32 0, i32 5
  store i8* %141, i8** %143, align 8
  %144 = load i32, i32* %14, align 4
  %145 = call i8* @cpu_to_le16(i32 %144)
  %146 = load %struct.hwrm_func_cfg_input*, %struct.hwrm_func_cfg_input** %10, align 8
  %147 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %146, i32 0, i32 6
  store i8* %145, i8** %147, align 8
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @DIV_ROUND_UP(i32 %148, i32 64)
  %150 = call i8* @cpu_to_le16(i32 %149)
  %151 = load %struct.hwrm_func_cfg_input*, %struct.hwrm_func_cfg_input** %10, align 8
  %152 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %151, i32 0, i32 3
  store i8* %150, i8** %152, align 8
  br label %182

153:                                              ; preds = %123
  %154 = load i32, i32* %14, align 4
  %155 = call i8* @cpu_to_le16(i32 %154)
  %156 = load %struct.hwrm_func_cfg_input*, %struct.hwrm_func_cfg_input** %10, align 8
  %157 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %156, i32 0, i32 5
  store i8* %155, i8** %157, align 8
  %158 = load i32, i32* %13, align 4
  %159 = call i8* @cpu_to_le16(i32 %158)
  %160 = load %struct.hwrm_func_cfg_input*, %struct.hwrm_func_cfg_input** %10, align 8
  %161 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %160, i32 0, i32 4
  store i8* %159, i8** %161, align 8
  %162 = call i8* @cpu_to_le16(i32 1)
  %163 = load %struct.hwrm_func_cfg_input*, %struct.hwrm_func_cfg_input** %10, align 8
  %164 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %163, i32 0, i32 3
  store i8* %162, i8** %164, align 8
  %165 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %166 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @BNXT_FLAG_NEW_RSS_CAP, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %181, label %171

171:                                              ; preds = %153
  %172 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %173 = call i64 @bnxt_rfs_supported(%struct.bnxt* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %171
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %176, 1
  %178 = call i8* @cpu_to_le16(i32 %177)
  %179 = load %struct.hwrm_func_cfg_input*, %struct.hwrm_func_cfg_input** %10, align 8
  %180 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %179, i32 0, i32 3
  store i8* %178, i8** %180, align 8
  br label %181

181:                                              ; preds = %175, %171, %153
  br label %182

182:                                              ; preds = %181, %137
  %183 = load i32, i32* %15, align 4
  %184 = call i8* @cpu_to_le16(i32 %183)
  %185 = load %struct.hwrm_func_cfg_input*, %struct.hwrm_func_cfg_input** %10, align 8
  %186 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %185, i32 0, i32 2
  store i8* %184, i8** %186, align 8
  %187 = load i32, i32* %16, align 4
  %188 = call i8* @cpu_to_le16(i32 %187)
  %189 = load %struct.hwrm_func_cfg_input*, %struct.hwrm_func_cfg_input** %10, align 8
  %190 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %189, i32 0, i32 1
  store i8* %188, i8** %190, align 8
  br label %191

191:                                              ; preds = %182, %30
  %192 = load i32, i32* %17, align 4
  %193 = call i32 @cpu_to_le32(i32 %192)
  %194 = load %struct.hwrm_func_cfg_input*, %struct.hwrm_func_cfg_input** %10, align 8
  %195 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  ret void
}

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_func_cfg_input*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @BNXT_NEW_RM(%struct.bnxt*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @bnxt_rfs_supported(%struct.bnxt*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
