; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_hwrm_reserve_vf_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_hwrm_reserve_vf_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.hwrm_func_vf_cfg_input = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@HWRM_FUNC_VF_CFG = common dso_local global i32 0, align 4
@FUNC_VF_CFG_REQ_ENABLES_NUM_TX_RINGS = common dso_local global i32 0, align 4
@FUNC_VF_CFG_REQ_ENABLES_NUM_RX_RINGS = common dso_local global i32 0, align 4
@FUNC_VF_CFG_REQ_ENABLES_NUM_RSSCOS_CTXS = common dso_local global i32 0, align 4
@FUNC_VF_CFG_REQ_ENABLES_NUM_STAT_CTXS = common dso_local global i32 0, align 4
@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@FUNC_VF_CFG_REQ_ENABLES_NUM_CMPL_RINGS = common dso_local global i32 0, align 4
@FUNC_VF_CFG_REQ_ENABLES_NUM_HW_RING_GRPS = common dso_local global i32 0, align 4
@FUNC_VF_CFG_REQ_ENABLES_NUM_VNICS = common dso_local global i32 0, align 4
@FUNC_VF_CFG_REQ_ENABLES_NUM_L2_CTXS = common dso_local global i32 0, align 4
@BNXT_VF_MAX_L2_CTX = common dso_local global i32 0, align 4
@BNXT_VF_MAX_RSS_CTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, %struct.hwrm_func_vf_cfg_input*, i32, i32, i32, i32, i32, i32)* @__bnxt_hwrm_reserve_vf_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bnxt_hwrm_reserve_vf_rings(%struct.bnxt* %0, %struct.hwrm_func_vf_cfg_input* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.bnxt*, align 8
  %10 = alloca %struct.hwrm_func_vf_cfg_input*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %9, align 8
  store %struct.hwrm_func_vf_cfg_input* %1, %struct.hwrm_func_vf_cfg_input** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %19 = load %struct.hwrm_func_vf_cfg_input*, %struct.hwrm_func_vf_cfg_input** %10, align 8
  %20 = load i32, i32* @HWRM_FUNC_VF_CFG, align 4
  %21 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %18, %struct.hwrm_func_vf_cfg_input* %19, i32 %20, i32 -1, i32 -1)
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %8
  %25 = load i32, i32* @FUNC_VF_CFG_REQ_ENABLES_NUM_TX_RINGS, align 4
  br label %27

26:                                               ; preds = %8
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %26 ]
  %29 = load i32, i32* %17, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* @FUNC_VF_CFG_REQ_ENABLES_NUM_RX_RINGS, align 4
  %35 = load i32, i32* @FUNC_VF_CFG_REQ_ENABLES_NUM_RSSCOS_CTXS, align 4
  %36 = or i32 %34, %35
  br label %38

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i32 [ %36, %33 ], [ 0, %37 ]
  %40 = load i32, i32* %17, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @FUNC_VF_CFG_REQ_ENABLES_NUM_STAT_CTXS, align 4
  br label %47

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  %49 = load i32, i32* %17, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %17, align 4
  %51 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %52 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %47
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @FUNC_VF_CFG_REQ_ENABLES_NUM_CMPL_RINGS, align 4
  br label %65

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  %67 = load i32, i32* %17, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %17, align 4
  br label %88

69:                                               ; preds = %47
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @FUNC_VF_CFG_REQ_ENABLES_NUM_CMPL_RINGS, align 4
  br label %75

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i32 [ %73, %72 ], [ 0, %74 ]
  %77 = load i32, i32* %17, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @FUNC_VF_CFG_REQ_ENABLES_NUM_HW_RING_GRPS, align 4
  br label %84

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi i32 [ %82, %81 ], [ 0, %83 ]
  %86 = load i32, i32* %17, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %17, align 4
  br label %88

88:                                               ; preds = %84, %65
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* @FUNC_VF_CFG_REQ_ENABLES_NUM_VNICS, align 4
  br label %94

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93, %91
  %95 = phi i32 [ %92, %91 ], [ 0, %93 ]
  %96 = load i32, i32* %17, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* @FUNC_VF_CFG_REQ_ENABLES_NUM_L2_CTXS, align 4
  %99 = load i32, i32* %17, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* @BNXT_VF_MAX_L2_CTX, align 4
  %102 = call i8* @cpu_to_le16(i32 %101)
  %103 = load %struct.hwrm_func_vf_cfg_input*, %struct.hwrm_func_vf_cfg_input** %10, align 8
  %104 = getelementptr inbounds %struct.hwrm_func_vf_cfg_input, %struct.hwrm_func_vf_cfg_input* %103, i32 0, i32 8
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i8* @cpu_to_le16(i32 %105)
  %107 = load %struct.hwrm_func_vf_cfg_input*, %struct.hwrm_func_vf_cfg_input** %10, align 8
  %108 = getelementptr inbounds %struct.hwrm_func_vf_cfg_input, %struct.hwrm_func_vf_cfg_input* %107, i32 0, i32 7
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i8* @cpu_to_le16(i32 %109)
  %111 = load %struct.hwrm_func_vf_cfg_input*, %struct.hwrm_func_vf_cfg_input** %10, align 8
  %112 = getelementptr inbounds %struct.hwrm_func_vf_cfg_input, %struct.hwrm_func_vf_cfg_input* %111, i32 0, i32 6
  store i8* %110, i8** %112, align 8
  %113 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %114 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %94
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %120, %121
  %123 = call i8* @cpu_to_le16(i32 %122)
  %124 = load %struct.hwrm_func_vf_cfg_input*, %struct.hwrm_func_vf_cfg_input** %10, align 8
  %125 = getelementptr inbounds %struct.hwrm_func_vf_cfg_input, %struct.hwrm_func_vf_cfg_input* %124, i32 0, i32 5
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @DIV_ROUND_UP(i32 %126, i32 64)
  %128 = call i8* @cpu_to_le16(i32 %127)
  %129 = load %struct.hwrm_func_vf_cfg_input*, %struct.hwrm_func_vf_cfg_input** %10, align 8
  %130 = getelementptr inbounds %struct.hwrm_func_vf_cfg_input, %struct.hwrm_func_vf_cfg_input* %129, i32 0, i32 3
  store i8* %128, i8** %130, align 8
  br label %144

131:                                              ; preds = %94
  %132 = load i32, i32* %14, align 4
  %133 = call i8* @cpu_to_le16(i32 %132)
  %134 = load %struct.hwrm_func_vf_cfg_input*, %struct.hwrm_func_vf_cfg_input** %10, align 8
  %135 = getelementptr inbounds %struct.hwrm_func_vf_cfg_input, %struct.hwrm_func_vf_cfg_input* %134, i32 0, i32 5
  store i8* %133, i8** %135, align 8
  %136 = load i32, i32* %13, align 4
  %137 = call i8* @cpu_to_le16(i32 %136)
  %138 = load %struct.hwrm_func_vf_cfg_input*, %struct.hwrm_func_vf_cfg_input** %10, align 8
  %139 = getelementptr inbounds %struct.hwrm_func_vf_cfg_input, %struct.hwrm_func_vf_cfg_input* %138, i32 0, i32 4
  store i8* %137, i8** %139, align 8
  %140 = load i32, i32* @BNXT_VF_MAX_RSS_CTX, align 4
  %141 = call i8* @cpu_to_le16(i32 %140)
  %142 = load %struct.hwrm_func_vf_cfg_input*, %struct.hwrm_func_vf_cfg_input** %10, align 8
  %143 = getelementptr inbounds %struct.hwrm_func_vf_cfg_input, %struct.hwrm_func_vf_cfg_input* %142, i32 0, i32 3
  store i8* %141, i8** %143, align 8
  br label %144

144:                                              ; preds = %131, %119
  %145 = load i32, i32* %15, align 4
  %146 = call i8* @cpu_to_le16(i32 %145)
  %147 = load %struct.hwrm_func_vf_cfg_input*, %struct.hwrm_func_vf_cfg_input** %10, align 8
  %148 = getelementptr inbounds %struct.hwrm_func_vf_cfg_input, %struct.hwrm_func_vf_cfg_input* %147, i32 0, i32 2
  store i8* %146, i8** %148, align 8
  %149 = load i32, i32* %16, align 4
  %150 = call i8* @cpu_to_le16(i32 %149)
  %151 = load %struct.hwrm_func_vf_cfg_input*, %struct.hwrm_func_vf_cfg_input** %10, align 8
  %152 = getelementptr inbounds %struct.hwrm_func_vf_cfg_input, %struct.hwrm_func_vf_cfg_input* %151, i32 0, i32 1
  store i8* %150, i8** %152, align 8
  %153 = load i32, i32* %17, align 4
  %154 = call i32 @cpu_to_le32(i32 %153)
  %155 = load %struct.hwrm_func_vf_cfg_input*, %struct.hwrm_func_vf_cfg_input** %10, align 8
  %156 = getelementptr inbounds %struct.hwrm_func_vf_cfg_input, %struct.hwrm_func_vf_cfg_input* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  ret void
}

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_func_vf_cfg_input*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
