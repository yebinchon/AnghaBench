; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_reset_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_reset_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_hw = type { i32 }

@ALX_MSIX_MASK = common dso_local global i32 0, align 4
@ALX_IMR = common dso_local global i32 0, align 4
@ALX_ISR = common dso_local global i32 0, align 4
@ALX_ISR_DIS = common dso_local global i32 0, align 4
@ALX_RFD_PIDX = common dso_local global i32 0, align 4
@ALX_PMCTRL = common dso_local global i32 0, align 4
@ALX_PMCTRL_L1_EN = common dso_local global i32 0, align 4
@ALX_PMCTRL_L0S_EN = common dso_local global i32 0, align 4
@ALX_MASTER = common dso_local global i32 0, align 4
@ALX_MASTER_DMA_MAC_RST = common dso_local global i32 0, align 4
@ALX_MASTER_OOB_DIS = common dso_local global i32 0, align 4
@ALX_DMA_MAC_RST_TO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ALX_MASTER_PCLKSEL_SRDS = common dso_local global i32 0, align 4
@ALX_MISC3 = common dso_local global i32 0, align 4
@ALX_MISC3_25M_BY_SW = common dso_local global i32 0, align 4
@ALX_MISC3_25M_NOTO_INTNL = common dso_local global i32 0, align 4
@ALX_MISC = common dso_local global i32 0, align 4
@ALX_MISC_INTNLOSC_OPEN = common dso_local global i32 0, align 4
@ALX_MISC_ISO_EN = common dso_local global i32 0, align 4
@ALX_MAC_CTRL = common dso_local global i32 0, align 4
@ALX_SERDES = common dso_local global i32 0, align 4
@ALX_SERDES_MACCLK_SLWDWN = common dso_local global i32 0, align 4
@ALX_SERDES_PHYCLK_SLWDWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alx_reset_mac(%struct.alx_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.alx_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.alx_hw* %0, %struct.alx_hw** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %11 = call i32 @alx_hw_revision(%struct.alx_hw* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i64 @alx_is_rev_a(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %17 = call i64 @alx_hw_with_cr(%struct.alx_hw* %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %15, %1
  %20 = phi i1 [ false, %1 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %23 = load i32, i32* @ALX_MSIX_MASK, align 4
  %24 = call i32 @alx_write_mem32(%struct.alx_hw* %22, i32 %23, i32 -1)
  %25 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %26 = load i32, i32* @ALX_IMR, align 4
  %27 = call i32 @alx_write_mem32(%struct.alx_hw* %25, i32 %26, i32 0)
  %28 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %29 = load i32, i32* @ALX_ISR, align 4
  %30 = load i32, i32* @ALX_ISR_DIS, align 4
  %31 = call i32 @alx_write_mem32(%struct.alx_hw* %28, i32 %29, i32 %30)
  %32 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %33 = call i32 @alx_stop_mac(%struct.alx_hw* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %19
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  br label %197

38:                                               ; preds = %19
  %39 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %40 = load i32, i32* @ALX_RFD_PIDX, align 4
  %41 = call i32 @alx_write_mem32(%struct.alx_hw* %39, i32 %40, i32 1)
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %38
  %45 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %46 = load i32, i32* @ALX_PMCTRL, align 4
  %47 = call i32 @alx_read_mem32(%struct.alx_hw* %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @ALX_PMCTRL_L1_EN, align 4
  %50 = load i32, i32* @ALX_PMCTRL_L0S_EN, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %44
  %55 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %56 = load i32, i32* @ALX_PMCTRL, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @ALX_PMCTRL_L1_EN, align 4
  %59 = load i32, i32* @ALX_PMCTRL_L0S_EN, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = and i32 %57, %61
  %63 = call i32 @alx_write_mem32(%struct.alx_hw* %55, i32 %56, i32 %62)
  br label %64

64:                                               ; preds = %54, %44
  br label %65

65:                                               ; preds = %64, %38
  %66 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %67 = load i32, i32* @ALX_MASTER, align 4
  %68 = call i32 @alx_read_mem32(%struct.alx_hw* %66, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %70 = load i32, i32* @ALX_MASTER, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @ALX_MASTER_DMA_MAC_RST, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @ALX_MASTER_OOB_DIS, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @alx_write_mem32(%struct.alx_hw* %69, i32 %70, i32 %75)
  %77 = call i32 @udelay(i32 10)
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %91, %65
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @ALX_DMA_MAC_RST_TO, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %78
  %83 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %84 = load i32, i32* @ALX_RFD_PIDX, align 4
  %85 = call i32 @alx_read_mem32(%struct.alx_hw* %83, i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %94

89:                                               ; preds = %82
  %90 = call i32 @udelay(i32 10)
  br label %91

91:                                               ; preds = %89
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %78

94:                                               ; preds = %88, %78
  br label %95

95:                                               ; preds = %110, %94
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @ALX_DMA_MAC_RST_TO, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %95
  %100 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %101 = load i32, i32* @ALX_MASTER, align 4
  %102 = call i32 @alx_read_mem32(%struct.alx_hw* %100, i32 %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @ALX_MASTER_DMA_MAC_RST, align 4
  %105 = and i32 %103, %104
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %113

108:                                              ; preds = %99
  %109 = call i32 @udelay(i32 10)
  br label %110

110:                                              ; preds = %108
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %95

113:                                              ; preds = %107, %95
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @ALX_DMA_MAC_RST_TO, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i32, i32* @EIO, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %197

120:                                              ; preds = %113
  %121 = call i32 @udelay(i32 10)
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %120
  %125 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %126 = load i32, i32* @ALX_MASTER, align 4
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @ALX_MASTER_PCLKSEL_SRDS, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @alx_write_mem32(%struct.alx_hw* %125, i32 %126, i32 %129)
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @ALX_PMCTRL_L1_EN, align 4
  %133 = load i32, i32* @ALX_PMCTRL_L0S_EN, align 4
  %134 = or i32 %132, %133
  %135 = and i32 %131, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %124
  %138 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %139 = load i32, i32* @ALX_PMCTRL, align 4
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @alx_write_mem32(%struct.alx_hw* %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %137, %124
  br label %143

143:                                              ; preds = %142, %120
  %144 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @alx_reset_osc(%struct.alx_hw* %144, i32 %145)
  %147 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %148 = load i32, i32* @ALX_MISC3, align 4
  %149 = call i32 @alx_read_mem32(%struct.alx_hw* %147, i32 %148)
  store i32 %149, i32* %4, align 4
  %150 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %151 = load i32, i32* @ALX_MISC3, align 4
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @ALX_MISC3_25M_BY_SW, align 4
  %154 = xor i32 %153, -1
  %155 = and i32 %152, %154
  %156 = load i32, i32* @ALX_MISC3_25M_NOTO_INTNL, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @alx_write_mem32(%struct.alx_hw* %150, i32 %151, i32 %157)
  %159 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %160 = load i32, i32* @ALX_MISC, align 4
  %161 = call i32 @alx_read_mem32(%struct.alx_hw* %159, i32 %160)
  store i32 %161, i32* %4, align 4
  %162 = load i32, i32* @ALX_MISC_INTNLOSC_OPEN, align 4
  %163 = xor i32 %162, -1
  %164 = load i32, i32* %4, align 4
  %165 = and i32 %164, %163
  store i32 %165, i32* %4, align 4
  %166 = load i32, i32* %8, align 4
  %167 = call i64 @alx_is_rev_a(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %143
  %170 = load i32, i32* @ALX_MISC_ISO_EN, align 4
  %171 = xor i32 %170, -1
  %172 = load i32, i32* %4, align 4
  %173 = and i32 %172, %171
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %169, %143
  %175 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %176 = load i32, i32* @ALX_MISC, align 4
  %177 = load i32, i32* %4, align 4
  %178 = call i32 @alx_write_mem32(%struct.alx_hw* %175, i32 %176, i32 %177)
  %179 = call i32 @udelay(i32 20)
  %180 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %181 = load i32, i32* @ALX_MAC_CTRL, align 4
  %182 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %183 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @alx_write_mem32(%struct.alx_hw* %180, i32 %181, i32 %184)
  %186 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %187 = load i32, i32* @ALX_SERDES, align 4
  %188 = call i32 @alx_read_mem32(%struct.alx_hw* %186, i32 %187)
  store i32 %188, i32* %4, align 4
  %189 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %190 = load i32, i32* @ALX_SERDES, align 4
  %191 = load i32, i32* %4, align 4
  %192 = load i32, i32* @ALX_SERDES_MACCLK_SLWDWN, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @ALX_SERDES_PHYCLK_SLWDWN, align 4
  %195 = or i32 %193, %194
  %196 = call i32 @alx_write_mem32(%struct.alx_hw* %189, i32 %190, i32 %195)
  store i32 0, i32* %2, align 4
  br label %197

197:                                              ; preds = %174, %117, %36
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local i32 @alx_hw_revision(%struct.alx_hw*) #1

declare dso_local i64 @alx_is_rev_a(i32) #1

declare dso_local i64 @alx_hw_with_cr(%struct.alx_hw*) #1

declare dso_local i32 @alx_write_mem32(%struct.alx_hw*, i32, i32) #1

declare dso_local i32 @alx_stop_mac(%struct.alx_hw*) #1

declare dso_local i32 @alx_read_mem32(%struct.alx_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @alx_reset_osc(%struct.alx_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
