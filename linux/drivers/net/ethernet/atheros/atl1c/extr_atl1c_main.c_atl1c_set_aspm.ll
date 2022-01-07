; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_set_aspm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_set_aspm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { i64, i32 }

@REG_PM_CTRL = common dso_local global i32 0, align 4
@PM_CTRL_ASPM_L1_EN = common dso_local global i32 0, align 4
@PM_CTRL_ASPM_L0S_EN = common dso_local global i32 0, align 4
@PM_CTRL_MAC_ASPM_CHK = common dso_local global i32 0, align 4
@athr_l2c_b2 = common dso_local global i64 0, align 8
@athr_l1d_2 = common dso_local global i64 0, align 8
@PMCTRL_TXL1_AFTER_L0S = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@L1D_PMCTRL_L1_ENTRY_TM_16US = common dso_local global i32 0, align 4
@L1D_PMCTRL_L1_ENTRY_TM = common dso_local global i32 0, align 4
@athr_l2c_b = common dso_local global i64 0, align 8
@L2CB1_PM_CTRL_L1_ENTRY_TM = common dso_local global i32 0, align 4
@L1C_PM_CTRL_L1_ENTRY_TM = common dso_local global i32 0, align 4
@PM_CTRL_L1_ENTRY_TIMER = common dso_local global i32 0, align 4
@ATL1C_ASPM_L0S_SUPPORT = common dso_local global i32 0, align 4
@SPEED_0 = common dso_local global i64 0, align 8
@ATL1C_ASPM_L1_SUPPORT = common dso_local global i32 0, align 4
@athr_l1d = common dso_local global i64 0, align 8
@PM_CTRL_PM_REQ_TIMER = common dso_local global i32 0, align 4
@PM_CTRL_PM_REQ_TO_DEF = common dso_local global i32 0, align 4
@PM_CTRL_RCVR_WT_TIMER = common dso_local global i32 0, align 4
@PM_CTRL_SERDES_PD_EX_L1 = common dso_local global i32 0, align 4
@PM_CTRL_CLK_SWH_L1 = common dso_local global i32 0, align 4
@PM_CTRL_SERDES_L1_EN = common dso_local global i32 0, align 4
@PM_CTRL_SERDES_PLL_L1_EN = common dso_local global i32 0, align 4
@PM_CTRL_SERDES_BUFS_RX_L1_EN = common dso_local global i32 0, align 4
@PM_CTRL_SA_DLY_EN = common dso_local global i32 0, align 4
@PM_CTRL_HOTRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_hw*, i64)* @atl1c_set_aspm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_set_aspm(%struct.atl1c_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.atl1c_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %8 = load i32, i32* @REG_PM_CTRL, align 4
  %9 = call i32 @AT_READ_REG(%struct.atl1c_hw* %7, i32 %8, i32* %5)
  %10 = load i32, i32* @PM_CTRL_ASPM_L1_EN, align 4
  %11 = load i32, i32* @PM_CTRL_ASPM_L0S_EN, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @PM_CTRL_MAC_ASPM_CHK, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %19 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @athr_l2c_b2, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %25 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @athr_l1d_2, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %23, %2
  %30 = load i32, i32* @PMCTRL_TXL1_AFTER_L0S, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @SPEED_1000, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @SPEED_100, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %29
  %42 = load i32, i32* @L1D_PMCTRL_L1_ENTRY_TM_16US, align 4
  br label %44

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 1, %43 ]
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @L1D_PMCTRL_L1_ENTRY_TM, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @FIELD_SETX(i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %5, align 4
  br label %75

50:                                               ; preds = %23
  %51 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %52 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @athr_l2c_b, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @L2CB1_PM_CTRL_L1_ENTRY_TM, align 4
  br label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @L1C_PM_CTRL_L1_ENTRY_TM, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  store i32 %61, i32* %6, align 4
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* @SPEED_1000, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @SPEED_100, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 1, i32* %6, align 4
  br label %70

70:                                               ; preds = %69, %65, %60
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @PM_CTRL_L1_ENTRY_TIMER, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @FIELD_SETX(i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %70, %44
  %76 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %77 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @ATL1C_ASPM_L0S_SUPPORT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %75
  %83 = load i64, i64* %4, align 8
  %84 = load i64, i64* @SPEED_0, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i32, i32* @PM_CTRL_ASPM_L0S_EN, align 4
  %88 = load i32, i32* @PM_CTRL_MAC_ASPM_CHK, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %86, %82, %75
  %93 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %94 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ATL1C_ASPM_L1_SUPPORT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load i32, i32* @PM_CTRL_ASPM_L1_EN, align 4
  %101 = load i32, i32* @PM_CTRL_MAC_ASPM_CHK, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* %5, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %99, %92
  %106 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %107 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @athr_l2c_b, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %129, label %111

111:                                              ; preds = %105
  %112 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %113 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @athr_l1d, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %129, label %117

117:                                              ; preds = %111
  %118 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %119 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @athr_l2c_b2, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %117
  %124 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %125 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @athr_l1d_2, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %168

129:                                              ; preds = %123, %117, %111, %105
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @PM_CTRL_PM_REQ_TIMER, align 4
  %132 = load i32, i32* @PM_CTRL_PM_REQ_TO_DEF, align 4
  %133 = call i32 @FIELD_SETX(i32 %130, i32 %131, i32 %132)
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* @PM_CTRL_RCVR_WT_TIMER, align 4
  %135 = load i32, i32* @PM_CTRL_SERDES_PD_EX_L1, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @PM_CTRL_CLK_SWH_L1, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* %5, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* @PM_CTRL_SERDES_L1_EN, align 4
  %142 = load i32, i32* @PM_CTRL_SERDES_PLL_L1_EN, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @PM_CTRL_SERDES_BUFS_RX_L1_EN, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @PM_CTRL_SA_DLY_EN, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @PM_CTRL_HOTRST, align 4
  %149 = or i32 %147, %148
  %150 = xor i32 %149, -1
  %151 = load i32, i32* %5, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %5, align 4
  %153 = load i64, i64* %4, align 8
  %154 = load i64, i64* @SPEED_0, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %162, label %156

156:                                              ; preds = %129
  %157 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %158 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @athr_l2c_b, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %156, %129
  %163 = load i32, i32* @PM_CTRL_ASPM_L0S_EN, align 4
  %164 = xor i32 %163, -1
  %165 = load i32, i32* %5, align 4
  %166 = and i32 %165, %164
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %162, %156
  br label %208

168:                                              ; preds = %123
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @PM_CTRL_L1_ENTRY_TIMER, align 4
  %171 = call i32 @FIELD_SETX(i32 %169, i32 %170, i32 0)
  store i32 %171, i32* %5, align 4
  %172 = load i64, i64* %4, align 8
  %173 = load i64, i64* @SPEED_0, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %193

175:                                              ; preds = %168
  %176 = load i32, i32* @PM_CTRL_SERDES_L1_EN, align 4
  %177 = load i32, i32* @PM_CTRL_SERDES_PLL_L1_EN, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @PM_CTRL_SERDES_BUFS_RX_L1_EN, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* %5, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* @PM_CTRL_SERDES_PD_EX_L1, align 4
  %184 = load i32, i32* @PM_CTRL_CLK_SWH_L1, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @PM_CTRL_ASPM_L0S_EN, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @PM_CTRL_ASPM_L1_EN, align 4
  %189 = or i32 %187, %188
  %190 = xor i32 %189, -1
  %191 = load i32, i32* %5, align 4
  %192 = and i32 %191, %190
  store i32 %192, i32* %5, align 4
  br label %207

193:                                              ; preds = %168
  %194 = load i32, i32* @PM_CTRL_CLK_SWH_L1, align 4
  %195 = load i32, i32* %5, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %5, align 4
  %197 = load i32, i32* @PM_CTRL_SERDES_L1_EN, align 4
  %198 = load i32, i32* @PM_CTRL_SERDES_PLL_L1_EN, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @PM_CTRL_SERDES_BUFS_RX_L1_EN, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @PM_CTRL_ASPM_L0S_EN, align 4
  %203 = or i32 %201, %202
  %204 = xor i32 %203, -1
  %205 = load i32, i32* %5, align 4
  %206 = and i32 %205, %204
  store i32 %206, i32* %5, align 4
  br label %207

207:                                              ; preds = %193, %175
  br label %208

208:                                              ; preds = %207, %167
  %209 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %210 = load i32, i32* @REG_PM_CTRL, align 4
  %211 = load i32, i32* %5, align 4
  %212 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %209, i32 %210, i32 %211)
  ret void
}

declare dso_local i32 @AT_READ_REG(%struct.atl1c_hw*, i32, i32*) #1

declare dso_local i32 @FIELD_SETX(i32, i32, i32) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1c_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
