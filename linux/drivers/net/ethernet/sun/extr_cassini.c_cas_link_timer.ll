; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_link_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_link_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32*, i32, i32, i32, i64 }
%struct.timer_list = type { i32 }

@link_timer = common dso_local global i32 0, align 4
@link_transition_timeout = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@CAS_FLAG_RXD_POST_MASK = common dso_local global i32 0, align 4
@MAX_RX_DESC_RINGS = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@REG_MIF_STATUS = common dso_local global i64 0, align 8
@REG_MAC_TX_STATUS = common dso_local global i64 0, align 8
@MAC_TX_FRAME_XMIT = common dso_local global i32 0, align 4
@REG_MAC_STATE_MACHINE = common dso_local global i64 0, align 8
@MAC_SM_TLM = common dso_local global i32 0, align 4
@MAC_SM_ENCAP_SM = common dso_local global i32 0, align 4
@tx_err = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"tx err: MAC_STATE[%08x]\0A\00", align 1
@REG_TX_FIFO_PKT_CNT = common dso_local global i64 0, align 8
@REG_TX_FIFO_WRITE_PTR = common dso_local global i64 0, align 8
@REG_TX_FIFO_READ_PTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"tx err: TX_FIFO[%08x:%08x:%08x]\0A\00", align 1
@CAS_LINK_TIMEOUT = common dso_local global i64 0, align 8
@CAS_RESET_ALL = common dso_local global i32 0, align 4
@cp = common dso_local global %struct.cas* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @cas_link_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_link_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.cas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %15 = load %struct.cas*, %struct.cas** %3, align 8
  %16 = ptrtoint %struct.cas* %15 to i32
  %17 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %18 = load i32, i32* @link_timer, align 4
  %19 = call %struct.cas* @from_timer(i32 %16, %struct.timer_list* %17, i32 %18)
  store %struct.cas* %19, %struct.cas** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %20 = load i64, i64* @link_transition_timeout, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %1
  %23 = load %struct.cas*, %struct.cas** %3, align 8
  %24 = getelementptr inbounds %struct.cas, %struct.cas* %23, i32 0, i32 14
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load i64, i64* @jiffies, align 8
  %29 = load %struct.cas*, %struct.cas** %3, align 8
  %30 = getelementptr inbounds %struct.cas, %struct.cas* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = load i64, i64* @link_transition_timeout, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.cas*, %struct.cas** %3, align 8
  %37 = getelementptr inbounds %struct.cas, %struct.cas* %36, i32 0, i32 14
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %35, %27, %22, %1
  %39 = load %struct.cas*, %struct.cas** %3, align 8
  %40 = getelementptr inbounds %struct.cas, %struct.cas* %39, i32 0, i32 13
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %258

44:                                               ; preds = %38
  %45 = load %struct.cas*, %struct.cas** %3, align 8
  %46 = getelementptr inbounds %struct.cas, %struct.cas* %45, i32 0, i32 2
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.cas*, %struct.cas** %3, align 8
  %50 = call i32 @cas_lock_tx(%struct.cas* %49)
  %51 = load %struct.cas*, %struct.cas** %3, align 8
  %52 = call i32 @cas_entropy_gather(%struct.cas* %51)
  %53 = load %struct.cas*, %struct.cas** %3, align 8
  %54 = getelementptr inbounds %struct.cas, %struct.cas* %53, i32 0, i32 6
  %55 = call i64 @atomic_read(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %44
  %58 = load %struct.cas*, %struct.cas** %3, align 8
  %59 = getelementptr inbounds %struct.cas, %struct.cas* %58, i32 0, i32 12
  %60 = call i64 @atomic_read(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.cas*, %struct.cas** %3, align 8
  %64 = getelementptr inbounds %struct.cas, %struct.cas* %63, i32 0, i32 11
  %65 = call i64 @atomic_read(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %57, %44
  br label %228

68:                                               ; preds = %62
  %69 = load %struct.cas*, %struct.cas** %3, align 8
  %70 = getelementptr inbounds %struct.cas, %struct.cas* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CAS_FLAG_RXD_POST_MASK, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %112

75:                                               ; preds = %68
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %108, %75
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @MAX_RX_DESC_RINGS, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %111

80:                                               ; preds = %76
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @CAS_FLAG_RXD_POST(i32 %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %9, align 4
  %85 = and i32 %83, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %108

88:                                               ; preds = %80
  %89 = load %struct.cas*, %struct.cas** %3, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.cas*, %struct.cas** %3, align 8
  %92 = getelementptr inbounds %struct.cas, %struct.cas* %91, i32 0, i32 10
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @cas_post_rxds_ringN(%struct.cas* %89, i32 %90, i32 %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %88
  store i32 1, i32* %5, align 4
  br label %108

101:                                              ; preds = %88
  %102 = load i32, i32* %9, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.cas*, %struct.cas** %3, align 8
  %105 = getelementptr inbounds %struct.cas, %struct.cas* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %101, %100, %87
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %76

111:                                              ; preds = %76
  br label %112

112:                                              ; preds = %111, %68
  %113 = load %struct.cas*, %struct.cas** %3, align 8
  %114 = getelementptr inbounds %struct.cas, %struct.cas* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @CAS_PHY_MII(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %138

118:                                              ; preds = %112
  %119 = load %struct.cas*, %struct.cas** %3, align 8
  %120 = call i32 @cas_mif_poll(%struct.cas* %119, i32 0)
  %121 = load %struct.cas*, %struct.cas** %3, align 8
  %122 = load i32, i32* @MII_BMSR, align 4
  %123 = call i32 @cas_phy_read(%struct.cas* %121, i32 %122)
  store i32 %123, i32* %10, align 4
  %124 = load %struct.cas*, %struct.cas** %3, align 8
  %125 = load i32, i32* @MII_BMSR, align 4
  %126 = call i32 @cas_phy_read(%struct.cas* %124, i32 %125)
  store i32 %126, i32* %10, align 4
  %127 = load %struct.cas*, %struct.cas** %3, align 8
  %128 = call i32 @cas_mif_poll(%struct.cas* %127, i32 1)
  %129 = load %struct.cas*, %struct.cas** %3, align 8
  %130 = getelementptr inbounds %struct.cas, %struct.cas* %129, i32 0, i32 8
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @REG_MIF_STATUS, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @readl(i64 %133)
  %135 = load %struct.cas*, %struct.cas** %3, align 8
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @cas_mii_link_check(%struct.cas* %135, i32 %136)
  store i32 %137, i32* %6, align 4
  br label %141

138:                                              ; preds = %112
  %139 = load %struct.cas*, %struct.cas** %3, align 8
  %140 = call i32 @cas_pcs_link_check(%struct.cas* %139)
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %138, %118
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  br label %228

145:                                              ; preds = %141
  %146 = load %struct.cas*, %struct.cas** %3, align 8
  %147 = getelementptr inbounds %struct.cas, %struct.cas* %146, i32 0, i32 8
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @REG_MAC_TX_STATUS, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @readl(i64 %150)
  %152 = load i32, i32* @MAC_TX_FRAME_XMIT, align 4
  %153 = and i32 %151, %152
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %227

155:                                              ; preds = %145
  %156 = load %struct.cas*, %struct.cas** %3, align 8
  %157 = getelementptr inbounds %struct.cas, %struct.cas* %156, i32 0, i32 8
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @REG_MAC_STATE_MACHINE, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @readl(i64 %160)
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* @MAC_SM_TLM, align 4
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @CAS_VAL(i32 %162, i32 %163)
  store i32 %164, i32* %14, align 4
  %165 = load i32, i32* %14, align 4
  %166 = icmp eq i32 %165, 5
  br i1 %166, label %170, label %167

167:                                              ; preds = %155
  %168 = load i32, i32* %14, align 4
  %169 = icmp eq i32 %168, 3
  br i1 %169, label %170, label %184

170:                                              ; preds = %167, %155
  %171 = load i32, i32* @MAC_SM_ENCAP_SM, align 4
  %172 = load i32, i32* %11, align 4
  %173 = call i32 @CAS_VAL(i32 %171, i32 %172)
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %170
  %176 = load %struct.cas*, %struct.cas** %3, align 8
  %177 = load i32, i32* @tx_err, align 4
  %178 = load i32, i32* @KERN_DEBUG, align 4
  %179 = load %struct.cas*, %struct.cas** %3, align 8
  %180 = getelementptr inbounds %struct.cas, %struct.cas* %179, i32 0, i32 7
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %11, align 4
  %183 = call i32 (%struct.cas*, i32, i32, i32, i8*, i32, ...) @netif_printk(%struct.cas* %176, i32 %177, i32 %178, i32 %181, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %182)
  store i32 1, i32* %6, align 4
  br label %228

184:                                              ; preds = %170, %167
  %185 = load %struct.cas*, %struct.cas** %3, align 8
  %186 = getelementptr inbounds %struct.cas, %struct.cas* %185, i32 0, i32 8
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @REG_TX_FIFO_PKT_CNT, align 8
  %189 = add nsw i64 %187, %188
  %190 = call i32 @readl(i64 %189)
  store i32 %190, i32* %11, align 4
  %191 = load %struct.cas*, %struct.cas** %3, align 8
  %192 = getelementptr inbounds %struct.cas, %struct.cas* %191, i32 0, i32 8
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @REG_TX_FIFO_WRITE_PTR, align 8
  %195 = add nsw i64 %193, %194
  %196 = call i32 @readl(i64 %195)
  store i32 %196, i32* %12, align 4
  %197 = load %struct.cas*, %struct.cas** %3, align 8
  %198 = getelementptr inbounds %struct.cas, %struct.cas* %197, i32 0, i32 8
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @REG_TX_FIFO_READ_PTR, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i32 @readl(i64 %201)
  store i32 %202, i32* %13, align 4
  %203 = load i32, i32* %11, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %220

205:                                              ; preds = %184
  %206 = load i32, i32* %12, align 4
  %207 = load i32, i32* %13, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %220

209:                                              ; preds = %205
  %210 = load %struct.cas*, %struct.cas** %3, align 8
  %211 = load i32, i32* @tx_err, align 4
  %212 = load i32, i32* @KERN_DEBUG, align 4
  %213 = load %struct.cas*, %struct.cas** %3, align 8
  %214 = getelementptr inbounds %struct.cas, %struct.cas* %213, i32 0, i32 7
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* %13, align 4
  %219 = call i32 (%struct.cas*, i32, i32, i32, i8*, i32, ...) @netif_printk(%struct.cas* %210, i32 %211, i32 %212, i32 %215, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %216, i32 %217, i32 %218)
  store i32 1, i32* %6, align 4
  br label %220

220:                                              ; preds = %209, %205, %184
  %221 = load i32, i32* %6, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load %struct.cas*, %struct.cas** %3, align 8
  %225 = call i32 @cas_hard_reset(%struct.cas* %224)
  br label %226

226:                                              ; preds = %223, %220
  br label %227

227:                                              ; preds = %226, %145
  br label %228

228:                                              ; preds = %227, %175, %144, %67
  %229 = load i32, i32* %6, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %228
  %232 = load %struct.cas*, %struct.cas** %3, align 8
  %233 = getelementptr inbounds %struct.cas, %struct.cas* %232, i32 0, i32 5
  %234 = call i32 @atomic_inc(i32* %233)
  %235 = load %struct.cas*, %struct.cas** %3, align 8
  %236 = getelementptr inbounds %struct.cas, %struct.cas* %235, i32 0, i32 6
  %237 = call i32 @atomic_inc(i32* %236)
  %238 = load %struct.cas*, %struct.cas** %3, align 8
  %239 = getelementptr inbounds %struct.cas, %struct.cas* %238, i32 0, i32 4
  %240 = call i32 @schedule_work(i32* %239)
  br label %241

241:                                              ; preds = %231, %228
  %242 = load i32, i32* %5, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %251, label %244

244:                                              ; preds = %241
  %245 = load %struct.cas*, %struct.cas** %3, align 8
  %246 = getelementptr inbounds %struct.cas, %struct.cas* %245, i32 0, i32 3
  %247 = load i64, i64* @jiffies, align 8
  %248 = load i64, i64* @CAS_LINK_TIMEOUT, align 8
  %249 = add nsw i64 %247, %248
  %250 = call i32 @mod_timer(i32* %246, i64 %249)
  br label %251

251:                                              ; preds = %244, %241
  %252 = load %struct.cas*, %struct.cas** %3, align 8
  %253 = call i32 @cas_unlock_tx(%struct.cas* %252)
  %254 = load %struct.cas*, %struct.cas** %3, align 8
  %255 = getelementptr inbounds %struct.cas, %struct.cas* %254, i32 0, i32 2
  %256 = load i64, i64* %7, align 8
  %257 = call i32 @spin_unlock_irqrestore(i32* %255, i64 %256)
  br label %258

258:                                              ; preds = %251, %43
  ret void
}

declare dso_local %struct.cas* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cas_lock_tx(%struct.cas*) #1

declare dso_local i32 @cas_entropy_gather(%struct.cas*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @CAS_FLAG_RXD_POST(i32) #1

declare dso_local i64 @cas_post_rxds_ringN(%struct.cas*, i32, i32) #1

declare dso_local i64 @CAS_PHY_MII(i32) #1

declare dso_local i32 @cas_mif_poll(%struct.cas*, i32) #1

declare dso_local i32 @cas_phy_read(%struct.cas*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cas_mii_link_check(%struct.cas*, i32) #1

declare dso_local i32 @cas_pcs_link_check(%struct.cas*) #1

declare dso_local i32 @CAS_VAL(i32, i32) #1

declare dso_local i32 @netif_printk(%struct.cas*, i32, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @cas_hard_reset(%struct.cas*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @cas_unlock_tx(%struct.cas*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
