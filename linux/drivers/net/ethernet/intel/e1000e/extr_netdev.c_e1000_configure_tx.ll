; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_configure_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_configure_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32, i32, i32, i32, %struct.e1000_hw, %struct.e1000_ring* }
%struct.e1000_hw = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_ring = type { i32, i32, i64, i64 }

@FLAG2_PCIM2PCI_ARBITER_WA = common dso_local global i32 0, align 4
@TIDV = common dso_local global i32 0, align 4
@TADV = common dso_local global i32 0, align 4
@FLAG2_DMA_BURST = common dso_local global i32 0, align 4
@E1000_TXDCTL_PTHRESH = common dso_local global i32 0, align 4
@E1000_TXDCTL_HTHRESH = common dso_local global i32 0, align 4
@E1000_TXDCTL_WTHRESH = common dso_local global i32 0, align 4
@E1000_TXDCTL_DMA_BURST_ENABLE = common dso_local global i32 0, align 4
@TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_CT = common dso_local global i32 0, align 4
@E1000_TCTL_PSP = common dso_local global i32 0, align 4
@E1000_TCTL_RTLC = common dso_local global i32 0, align 4
@E1000_COLLISION_THRESHOLD = common dso_local global i32 0, align 4
@E1000_CT_SHIFT = common dso_local global i32 0, align 4
@FLAG_TARC_SPEED_MODE_BIT = common dso_local global i32 0, align 4
@FLAG_TARC_SET_BIT_ZERO = common dso_local global i32 0, align 4
@E1000_TXD_CMD_EOP = common dso_local global i32 0, align 4
@E1000_TXD_CMD_IFCS = common dso_local global i32 0, align 4
@E1000_TXD_CMD_IDE = common dso_local global i32 0, align 4
@E1000_TXD_CMD_RS = common dso_local global i32 0, align 4
@e1000_pch_spt = common dso_local global i64 0, align 8
@IOSFPC = common dso_local global i32 0, align 4
@E1000_RCTL_RDMTS_HEX = common dso_local global i32 0, align 4
@E1000_TARC0_CB_MULTIQ_3_REQ = common dso_local global i32 0, align 4
@E1000_TARC0_CB_MULTIQ_2_REQ = common dso_local global i32 0, align 4
@SPEED_MODE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_configure_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_configure_tx(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %11, i32 0, i32 5
  store %struct.e1000_hw* %12, %struct.e1000_hw** %3, align 8
  %13 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %13, i32 0, i32 6
  %15 = load %struct.e1000_ring*, %struct.e1000_ring** %14, align 8
  store %struct.e1000_ring* %15, %struct.e1000_ring** %4, align 8
  %16 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %17 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %20 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = call i32 @TDBAL(i32 0)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @DMA_BIT_MASK(i32 32)
  %28 = and i32 %26, %27
  %29 = call i32 @ew32(i32 %25, i32 %28)
  %30 = call i32 @TDBAH(i32 0)
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 32
  %33 = call i32 @ew32(i32 %30, i32 %32)
  %34 = call i32 @TDLEN(i32 0)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @ew32(i32 %34, i32 %35)
  %37 = call i32 @TDH(i32 0)
  %38 = call i32 @ew32(i32 %37, i32 0)
  %39 = call i32 @TDT(i32 0)
  %40 = call i32 @ew32(i32 %39, i32 0)
  %41 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @E1000_TDH(i32 0)
  %46 = add nsw i64 %44, %45
  %47 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %48 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %47, i32 0, i32 3
  store i64 %46, i64* %48, align 8
  %49 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @E1000_TDT(i32 0)
  %54 = add nsw i64 %52, %53
  %55 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %56 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %58 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @writel(i32 0, i64 %59)
  %61 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @FLAG2_PCIM2PCI_ARBITER_WA, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %1
  %68 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %69 = call i32 @e1000e_update_tdt_wa(%struct.e1000_ring* %68, i32 0)
  br label %75

70:                                               ; preds = %1
  %71 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %72 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @writel(i32 0, i64 %73)
  br label %75

75:                                               ; preds = %70, %67
  %76 = load i32, i32* @TIDV, align 4
  %77 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %78 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ew32(i32 %76, i32 %79)
  %81 = load i32, i32* @TADV, align 4
  %82 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %83 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @ew32(i32 %81, i32 %84)
  %86 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %87 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @FLAG2_DMA_BURST, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %75
  %93 = call i32 @TXDCTL(i32 0)
  %94 = call i32 @er32(i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* @E1000_TXDCTL_PTHRESH, align 4
  %96 = load i32, i32* @E1000_TXDCTL_HTHRESH, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @E1000_TXDCTL_WTHRESH, align 4
  %99 = or i32 %97, %98
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %9, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* @E1000_TXDCTL_DMA_BURST_ENABLE, align 4
  %104 = load i32, i32* %9, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %9, align 4
  %106 = call i32 @TXDCTL(i32 0)
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @ew32(i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %92, %75
  %110 = call i32 @TXDCTL(i32 1)
  %111 = call i32 @TXDCTL(i32 0)
  %112 = call i32 @er32(i32 %111)
  %113 = call i32 @ew32(i32 %110, i32 %112)
  %114 = load i32, i32* @TCTL, align 4
  %115 = call i32 @er32(i32 %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* @E1000_TCTL_CT, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %7, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* @E1000_TCTL_PSP, align 4
  %121 = load i32, i32* @E1000_TCTL_RTLC, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @E1000_COLLISION_THRESHOLD, align 4
  %124 = load i32, i32* @E1000_CT_SHIFT, align 4
  %125 = shl i32 %123, %124
  %126 = or i32 %122, %125
  %127 = load i32, i32* %7, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %7, align 4
  %129 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %130 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @FLAG_TARC_SPEED_MODE_BIT, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %109
  %136 = call i32 @TARC(i32 0)
  %137 = call i32 @er32(i32 %136)
  store i32 %137, i32* %8, align 4
  %138 = call i32 (i32, ...) bitcast (i32 (...)* @BIT to i32 (i32, ...)*)(i32 21)
  %139 = load i32, i32* %8, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %8, align 4
  %141 = call i32 @TARC(i32 0)
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @ew32(i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %135, %109
  %145 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %146 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @FLAG_TARC_SET_BIT_ZERO, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %166

151:                                              ; preds = %144
  %152 = call i32 @TARC(i32 0)
  %153 = call i32 @er32(i32 %152)
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %8, align 4
  %155 = or i32 %154, 1
  store i32 %155, i32* %8, align 4
  %156 = call i32 @TARC(i32 0)
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @ew32(i32 %156, i32 %157)
  %159 = call i32 @TARC(i32 1)
  %160 = call i32 @er32(i32 %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = or i32 %161, 1
  store i32 %162, i32* %8, align 4
  %163 = call i32 @TARC(i32 1)
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @ew32(i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %151, %144
  %167 = load i32, i32* @E1000_TXD_CMD_EOP, align 4
  %168 = load i32, i32* @E1000_TXD_CMD_IFCS, align 4
  %169 = or i32 %167, %168
  %170 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %171 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 8
  %172 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %173 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %166
  %177 = load i32, i32* @E1000_TXD_CMD_IDE, align 4
  %178 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %179 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 8
  br label %182

182:                                              ; preds = %176, %166
  %183 = load i32, i32* @E1000_TXD_CMD_RS, align 4
  %184 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %185 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 8
  %188 = load i32, i32* @TCTL, align 4
  %189 = load i32, i32* %7, align 4
  %190 = call i32 @ew32(i32 %188, i32 %189)
  %191 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %192 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %194, align 8
  %196 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %197 = bitcast %struct.e1000_hw* %196 to %struct.e1000_hw.0*
  %198 = call i32 %195(%struct.e1000_hw.0* %197)
  %199 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %200 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @e1000_pch_spt, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %226

205:                                              ; preds = %182
  %206 = load i32, i32* @IOSFPC, align 4
  %207 = call i32 @er32(i32 %206)
  store i32 %207, i32* %10, align 4
  %208 = load i32, i32* @E1000_RCTL_RDMTS_HEX, align 4
  %209 = load i32, i32* %10, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %10, align 4
  %211 = load i32, i32* @IOSFPC, align 4
  %212 = load i32, i32* %10, align 4
  %213 = call i32 @ew32(i32 %211, i32 %212)
  %214 = call i32 @TARC(i32 0)
  %215 = call i32 @er32(i32 %214)
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* @E1000_TARC0_CB_MULTIQ_3_REQ, align 4
  %217 = xor i32 %216, -1
  %218 = load i32, i32* %10, align 4
  %219 = and i32 %218, %217
  store i32 %219, i32* %10, align 4
  %220 = load i32, i32* @E1000_TARC0_CB_MULTIQ_2_REQ, align 4
  %221 = load i32, i32* %10, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %10, align 4
  %223 = call i32 @TARC(i32 0)
  %224 = load i32, i32* %10, align 4
  %225 = call i32 @ew32(i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %205, %182
  ret void
}

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @TDBAL(i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @TDBAH(i32) #1

declare dso_local i32 @TDLEN(i32) #1

declare dso_local i32 @TDH(i32) #1

declare dso_local i32 @TDT(i32) #1

declare dso_local i64 @E1000_TDH(i32) #1

declare dso_local i64 @E1000_TDT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @e1000e_update_tdt_wa(%struct.e1000_ring*, i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @TXDCTL(i32) #1

declare dso_local i32 @TARC(i32) #1

declare dso_local i32 @BIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
