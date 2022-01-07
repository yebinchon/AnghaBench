; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_ixfi_x550em_x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_ixfi_x550em_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_SB_IOSF_TARGET_KR_PHY = common dso_local global i32 0, align 4
@IXGBE_KRM_RX_TRN_LINKUP_CTRL_CONV_WO_PROTOCOL = common dso_local global i32 0, align 4
@IXGBE_KRM_DSP_TXFFE_STATE_C0_EN = common dso_local global i32 0, align 4
@IXGBE_KRM_DSP_TXFFE_STATE_CP1_CN1_EN = common dso_local global i32 0, align 4
@IXGBE_KRM_DSP_TXFFE_STATE_CO_ADAPT_EN = common dso_local global i32 0, align 4
@IXGBE_KRM_TX_COEFF_CTRL_1_OVRRD_EN = common dso_local global i32 0, align 4
@IXGBE_KRM_TX_COEFF_CTRL_1_CZERO_EN = common dso_local global i32 0, align 4
@IXGBE_KRM_TX_COEFF_CTRL_1_CPLUS1_OVRRD_EN = common dso_local global i32 0, align 4
@IXGBE_KRM_TX_COEFF_CTRL_1_CMINUS1_OVRRD_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_setup_ixfi_x550em_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_setup_ixfi_x550em_x(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @IXGBE_KRM_RX_TRN_LINKUP_CTRL(i32 %10)
  %12 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %13 = call i64 @ixgbe_read_iosf_sb_reg_x550(%struct.ixgbe_hw* %6, i32 %11, i32 %12, i32* %5)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  store i64 %17, i64* %2, align 8
  br label %149

18:                                               ; preds = %1
  %19 = load i32, i32* @IXGBE_KRM_RX_TRN_LINKUP_CTRL_CONV_WO_PROTOCOL, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %24 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @IXGBE_KRM_RX_TRN_LINKUP_CTRL(i32 %26)
  %28 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @ixgbe_write_iosf_sb_reg_x550(%struct.ixgbe_hw* %22, i32 %27, i32 %28, i32 %29)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = load i64, i64* %4, align 8
  store i64 %34, i64* %2, align 8
  br label %149

35:                                               ; preds = %18
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @IXGBE_KRM_DSP_TXFFE_STATE_4(i32 %40)
  %42 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %43 = call i64 @ixgbe_read_iosf_sb_reg_x550(%struct.ixgbe_hw* %36, i32 %41, i32 %42, i32* %5)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i64, i64* %4, align 8
  store i64 %47, i64* %2, align 8
  br label %149

48:                                               ; preds = %35
  %49 = load i32, i32* @IXGBE_KRM_DSP_TXFFE_STATE_C0_EN, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* @IXGBE_KRM_DSP_TXFFE_STATE_CP1_CN1_EN, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @IXGBE_KRM_DSP_TXFFE_STATE_CO_ADAPT_EN, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %63 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @IXGBE_KRM_DSP_TXFFE_STATE_4(i32 %65)
  %67 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i64 @ixgbe_write_iosf_sb_reg_x550(%struct.ixgbe_hw* %61, i32 %66, i32 %67, i32 %68)
  store i64 %69, i64* %4, align 8
  %70 = load i64, i64* %4, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %48
  %73 = load i64, i64* %4, align 8
  store i64 %73, i64* %2, align 8
  br label %149

74:                                               ; preds = %48
  %75 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %77 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @IXGBE_KRM_DSP_TXFFE_STATE_5(i32 %79)
  %81 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %82 = call i64 @ixgbe_read_iosf_sb_reg_x550(%struct.ixgbe_hw* %75, i32 %80, i32 %81, i32* %5)
  store i64 %82, i64* %4, align 8
  %83 = load i64, i64* %4, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = load i64, i64* %4, align 8
  store i64 %86, i64* %2, align 8
  br label %149

87:                                               ; preds = %74
  %88 = load i32, i32* @IXGBE_KRM_DSP_TXFFE_STATE_C0_EN, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %5, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* @IXGBE_KRM_DSP_TXFFE_STATE_CP1_CN1_EN, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %5, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* @IXGBE_KRM_DSP_TXFFE_STATE_CO_ADAPT_EN, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %5, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %101 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %102 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @IXGBE_KRM_DSP_TXFFE_STATE_5(i32 %104)
  %106 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i64 @ixgbe_write_iosf_sb_reg_x550(%struct.ixgbe_hw* %100, i32 %105, i32 %106, i32 %107)
  store i64 %108, i64* %4, align 8
  %109 = load i64, i64* %4, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %87
  %112 = load i64, i64* %4, align 8
  store i64 %112, i64* %2, align 8
  br label %149

113:                                              ; preds = %87
  %114 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %116 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @IXGBE_KRM_TX_COEFF_CTRL_1(i32 %118)
  %120 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %121 = call i64 @ixgbe_read_iosf_sb_reg_x550(%struct.ixgbe_hw* %114, i32 %119, i32 %120, i32* %5)
  store i64 %121, i64* %4, align 8
  %122 = load i64, i64* %4, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %113
  %125 = load i64, i64* %4, align 8
  store i64 %125, i64* %2, align 8
  br label %149

126:                                              ; preds = %113
  %127 = load i32, i32* @IXGBE_KRM_TX_COEFF_CTRL_1_OVRRD_EN, align 4
  %128 = load i32, i32* %5, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* @IXGBE_KRM_TX_COEFF_CTRL_1_CZERO_EN, align 4
  %131 = load i32, i32* %5, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* @IXGBE_KRM_TX_COEFF_CTRL_1_CPLUS1_OVRRD_EN, align 4
  %134 = load i32, i32* %5, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* @IXGBE_KRM_TX_COEFF_CTRL_1_CMINUS1_OVRRD_EN, align 4
  %137 = load i32, i32* %5, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %5, align 4
  %139 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %140 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %141 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @IXGBE_KRM_TX_COEFF_CTRL_1(i32 %143)
  %145 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %146 = load i32, i32* %5, align 4
  %147 = call i64 @ixgbe_write_iosf_sb_reg_x550(%struct.ixgbe_hw* %139, i32 %144, i32 %145, i32 %146)
  store i64 %147, i64* %4, align 8
  %148 = load i64, i64* %4, align 8
  store i64 %148, i64* %2, align 8
  br label %149

149:                                              ; preds = %126, %124, %111, %85, %72, %46, %33, %16
  %150 = load i64, i64* %2, align 8
  ret i64 %150
}

declare dso_local i64 @ixgbe_read_iosf_sb_reg_x550(%struct.ixgbe_hw*, i32, i32, i32*) #1

declare dso_local i32 @IXGBE_KRM_RX_TRN_LINKUP_CTRL(i32) #1

declare dso_local i64 @ixgbe_write_iosf_sb_reg_x550(%struct.ixgbe_hw*, i32, i32, i32) #1

declare dso_local i32 @IXGBE_KRM_DSP_TXFFE_STATE_4(i32) #1

declare dso_local i32 @IXGBE_KRM_DSP_TXFFE_STATE_5(i32) #1

declare dso_local i32 @IXGBE_KRM_TX_COEFF_CTRL_1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
