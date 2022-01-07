; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_declance.c_lance_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_declance.c_lance_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.lance_private = type { i32, i32, i32, i32, %struct.lance_regs* }
%struct.lance_regs = type { i32, i32 }

@btx_ring = common dso_local global i32* null, align 8
@tmd1 = common dso_local global i32 0, align 4
@LE_T1_OWN = common dso_local global i32 0, align 4
@LE_T1_ERR = common dso_local global i32 0, align 4
@misc = common dso_local global i32 0, align 4
@LE_T3_RTY = common dso_local global i32 0, align 4
@LE_T3_LCOL = common dso_local global i32 0, align 4
@LE_T3_CLOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s: Carrier Lost\0A\00", align 1
@LE_CSR0 = common dso_local global i32 0, align 4
@LE_C0_STOP = common dso_local global i32 0, align 4
@LE_T3_BUF = common dso_local global i32 0, align 4
@LE_T3_UFL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: Tx: ERR_BUF|ERR_UFL, restarting\0A\00", align 1
@LE_T1_POK = common dso_local global i32 0, align 4
@LE_T1_EONE = common dso_local global i32 0, align 4
@LE_T1_EMORE = common dso_local global i32 0, align 4
@TX_RING_MOD_MASK = common dso_local global i32 0, align 4
@TX_BUFFS_AVAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @lance_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lance_tx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.lance_private*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.lance_regs*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.lance_private* @netdev_priv(%struct.net_device* %10)
  store %struct.lance_private* %11, %struct.lance_private** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %4, align 8
  %16 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %17 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %16, i32 0, i32 4
  %18 = load %struct.lance_regs*, %struct.lance_regs** %17, align 8
  store %struct.lance_regs* %18, %struct.lance_regs** %5, align 8
  %19 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %20 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %23 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %22, i32 0, i32 2
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %228, %1
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %29 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %230

32:                                               ; preds = %26
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** @btx_ring, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %40 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32* @lib_ptr(i32* %33, i32 %38, i32 %41)
  store i32* %42, i32** %6, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @tmd1, align 4
  %45 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %46 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @tds_ptr(i32* %43, i32 %44, i32 %47)
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @LE_T1_OWN, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %32
  br label %230

54:                                               ; preds = %32
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @tmd1, align 4
  %57 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %58 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32* @tds_ptr(i32* %55, i32 %56, i32 %59)
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @LE_T1_ERR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %160

65:                                               ; preds = %54
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @misc, align 4
  %68 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %69 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32* @tds_ptr(i32* %66, i32 %67, i32 %70)
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %9, align 4
  %73 = load %struct.net_device*, %struct.net_device** %2, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @LE_T3_RTY, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %65
  %83 = load %struct.net_device*, %struct.net_device** %2, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %65
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @LE_T3_LCOL, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.net_device*, %struct.net_device** %2, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %93, %88
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @LE_T3_CLOS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %128

104:                                              ; preds = %99
  %105 = load %struct.net_device*, %struct.net_device** %2, align 8
  %106 = getelementptr inbounds %struct.net_device, %struct.net_device* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = load %struct.net_device*, %struct.net_device** %2, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %112)
  %114 = load %struct.lance_regs*, %struct.lance_regs** %5, align 8
  %115 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %114, i32 0, i32 1
  %116 = load i32, i32* @LE_CSR0, align 4
  %117 = call i32 @writereg(i32* %115, i32 %116)
  %118 = load %struct.lance_regs*, %struct.lance_regs** %5, align 8
  %119 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %118, i32 0, i32 0
  %120 = load i32, i32* @LE_C0_STOP, align 4
  %121 = call i32 @writereg(i32* %119, i32 %120)
  %122 = load %struct.net_device*, %struct.net_device** %2, align 8
  %123 = call i32 @lance_init_ring(%struct.net_device* %122)
  %124 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %125 = call i32 @load_csrs(%struct.lance_private* %124)
  %126 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %127 = call i32 @init_restart_lance(%struct.lance_private* %126)
  br label %234

128:                                              ; preds = %99
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @LE_T3_BUF, align 4
  %131 = load i32, i32* @LE_T3_UFL, align 4
  %132 = or i32 %130, %131
  %133 = and i32 %129, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %159

135:                                              ; preds = %128
  %136 = load %struct.net_device*, %struct.net_device** %2, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  %141 = load %struct.net_device*, %struct.net_device** %2, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  %145 = load %struct.lance_regs*, %struct.lance_regs** %5, align 8
  %146 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %145, i32 0, i32 1
  %147 = load i32, i32* @LE_CSR0, align 4
  %148 = call i32 @writereg(i32* %146, i32 %147)
  %149 = load %struct.lance_regs*, %struct.lance_regs** %5, align 8
  %150 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %149, i32 0, i32 0
  %151 = load i32, i32* @LE_C0_STOP, align 4
  %152 = call i32 @writereg(i32* %150, i32 %151)
  %153 = load %struct.net_device*, %struct.net_device** %2, align 8
  %154 = call i32 @lance_init_ring(%struct.net_device* %153)
  %155 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %156 = call i32 @load_csrs(%struct.lance_private* %155)
  %157 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %158 = call i32 @init_restart_lance(%struct.lance_private* %157)
  br label %234

159:                                              ; preds = %128
  br label %223

160:                                              ; preds = %54
  %161 = load i32*, i32** %6, align 8
  %162 = load i32, i32* @tmd1, align 4
  %163 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %164 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = call i32* @tds_ptr(i32* %161, i32 %162, i32 %165)
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @LE_T1_POK, align 4
  %169 = and i32 %167, %168
  %170 = load i32, i32* @LE_T1_POK, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %222

172:                                              ; preds = %160
  %173 = load i32, i32* @LE_T1_POK, align 4
  %174 = xor i32 %173, -1
  %175 = load i32*, i32** %6, align 8
  %176 = load i32, i32* @tmd1, align 4
  %177 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %178 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = call i32* @tds_ptr(i32* %175, i32 %176, i32 %179)
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, %174
  store i32 %182, i32* %180, align 4
  %183 = load i32*, i32** %6, align 8
  %184 = load i32, i32* @tmd1, align 4
  %185 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %186 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = call i32* @tds_ptr(i32* %183, i32 %184, i32 %187)
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @LE_T1_EONE, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %172
  %194 = load %struct.net_device*, %struct.net_device** %2, align 8
  %195 = getelementptr inbounds %struct.net_device, %struct.net_device* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %197, 1
  store i64 %198, i64* %196, align 8
  br label %199

199:                                              ; preds = %193, %172
  %200 = load i32*, i32** %6, align 8
  %201 = load i32, i32* @tmd1, align 4
  %202 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %203 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = call i32* @tds_ptr(i32* %200, i32 %201, i32 %204)
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @LE_T1_EMORE, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %199
  %211 = load %struct.net_device*, %struct.net_device** %2, align 8
  %212 = getelementptr inbounds %struct.net_device, %struct.net_device* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %214, 2
  store i64 %215, i64* %213, align 8
  br label %216

216:                                              ; preds = %210, %199
  %217 = load %struct.net_device*, %struct.net_device** %2, align 8
  %218 = getelementptr inbounds %struct.net_device, %struct.net_device* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 8
  br label %222

222:                                              ; preds = %216, %160
  br label %223

223:                                              ; preds = %222, %159
  %224 = load i32, i32* %8, align 4
  %225 = add nsw i32 %224, 1
  %226 = load i32, i32* @TX_RING_MOD_MASK, align 4
  %227 = and i32 %225, %226
  store i32 %227, i32* %8, align 4
  br label %228

228:                                              ; preds = %223
  %229 = load i32, i32* %8, align 4
  store i32 %229, i32* %7, align 4
  br label %26

230:                                              ; preds = %53, %26
  %231 = load i32, i32* %8, align 4
  %232 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %233 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  br label %234

234:                                              ; preds = %230, %135, %104
  %235 = load %struct.net_device*, %struct.net_device** %2, align 8
  %236 = call i64 @netif_queue_stopped(%struct.net_device* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %234
  %239 = load i64, i64* @TX_BUFFS_AVAIL, align 8
  %240 = icmp sgt i64 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  %242 = load %struct.net_device*, %struct.net_device** %2, align 8
  %243 = call i32 @netif_wake_queue(%struct.net_device* %242)
  br label %244

244:                                              ; preds = %241, %238, %234
  %245 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %246 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %245, i32 0, i32 2
  %247 = call i32 @spin_unlock(i32* %246)
  ret void
}

declare dso_local %struct.lance_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32* @lib_ptr(i32*, i32, i32) #1

declare dso_local i32* @tds_ptr(i32*, i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @writereg(i32*, i32) #1

declare dso_local i32 @lance_init_ring(%struct.net_device*) #1

declare dso_local i32 @load_csrs(%struct.lance_private*) #1

declare dso_local i32 @init_restart_lance(%struct.lance_private*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
