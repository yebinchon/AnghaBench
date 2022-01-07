; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_sb_coredisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_sb_coredisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_core_priv = type { %struct.TYPE_3__, %struct.brcmf_chip_priv* }
%struct.TYPE_3__ = type { i32 }
%struct.brcmf_chip_priv = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32)*, i32 (i32, i32, i32)* }

@sbtmstatelow = common dso_local global i32 0, align 4
@SSB_TMSLOW_RESET = common dso_local global i32 0, align 4
@SSB_TMSLOW_CLOCK = common dso_local global i32 0, align 4
@SSB_TMSLOW_REJECT = common dso_local global i32 0, align 4
@sbtmstatehigh = common dso_local global i32 0, align 4
@SSB_TMSHIGH_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"core state still busy\0A\00", align 1
@sbidlow = common dso_local global i32 0, align 4
@SSB_IDLOW_INITIATOR = common dso_local global i32 0, align 4
@sbimstate = common dso_local global i32 0, align 4
@SSB_IMSTATE_REJECT = common dso_local global i32 0, align 4
@SSB_IMSTATE_BUSY = common dso_local global i32 0, align 4
@SSB_TMSLOW_FGC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_core_priv*, i32, i32)* @brcmf_chip_sb_coredisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_chip_sb_coredisable(%struct.brcmf_core_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcmf_core_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcmf_chip_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.brcmf_core_priv* %0, %struct.brcmf_core_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %4, align 8
  %11 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %10, i32 0, i32 1
  %12 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %11, align 8
  store %struct.brcmf_chip_priv* %12, %struct.brcmf_chip_priv** %7, align 8
  %13 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %4, align 8
  %14 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %18 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (i32, i32)*, i32 (i32, i32)** %20, align 8
  %22 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %23 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @sbtmstatelow, align 4
  %27 = call i32 @CORE_SB(i32 %25, i32 %26)
  %28 = call i32 %21(i32 %24, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @SSB_TMSLOW_RESET, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %297

34:                                               ; preds = %3
  %35 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %36 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (i32, i32)*, i32 (i32, i32)** %38, align 8
  %40 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %41 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @sbtmstatelow, align 4
  %45 = call i32 @CORE_SB(i32 %43, i32 %44)
  %46 = call i32 %39(i32 %42, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @SSB_TMSLOW_CLOCK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %280

51:                                               ; preds = %34
  %52 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %53 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32 (i32, i32)*, i32 (i32, i32)** %55, align 8
  %57 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %58 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @sbtmstatelow, align 4
  %62 = call i32 @CORE_SB(i32 %60, i32 %61)
  %63 = call i32 %56(i32 %59, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %65 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %67, align 8
  %69 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %70 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @sbtmstatelow, align 4
  %74 = call i32 @CORE_SB(i32 %72, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @SSB_TMSLOW_REJECT, align 4
  %77 = or i32 %75, %76
  %78 = call i32 %68(i32 %71, i32 %74, i32 %77)
  %79 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %80 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32 (i32, i32)*, i32 (i32, i32)** %82, align 8
  %84 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %85 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @sbtmstatelow, align 4
  %89 = call i32 @CORE_SB(i32 %87, i32 %88)
  %90 = call i32 %83(i32 %86, i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = call i32 @udelay(i32 1)
  %92 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %93 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32 (i32, i32)*, i32 (i32, i32)** %95, align 8
  %97 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %98 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @sbtmstatehigh, align 4
  %102 = call i32 @CORE_SB(i32 %100, i32 %101)
  %103 = call i32 %96(i32 %99, i32 %102)
  %104 = load i32, i32* @SSB_TMSHIGH_BUSY, align 4
  %105 = and i32 %103, %104
  %106 = call i32 @SPINWAIT(i32 %105, i32 100000)
  %107 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %108 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32 (i32, i32)*, i32 (i32, i32)** %110, align 8
  %112 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %113 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @sbtmstatehigh, align 4
  %117 = call i32 @CORE_SB(i32 %115, i32 %116)
  %118 = call i32 %111(i32 %114, i32 %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @SSB_TMSHIGH_BUSY, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %51
  %124 = call i32 @brcmf_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %51
  %126 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %127 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32 (i32, i32)*, i32 (i32, i32)** %129, align 8
  %131 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %132 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @sbidlow, align 4
  %136 = call i32 @CORE_SB(i32 %134, i32 %135)
  %137 = call i32 %130(i32 %133, i32 %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @SSB_IDLOW_INITIATOR, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %199

142:                                              ; preds = %125
  %143 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %144 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %143, i32 0, i32 1
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32 (i32, i32)*, i32 (i32, i32)** %146, align 8
  %148 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %149 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @sbimstate, align 4
  %153 = call i32 @CORE_SB(i32 %151, i32 %152)
  %154 = call i32 %147(i32 %150, i32 %153)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* @SSB_IMSTATE_REJECT, align 4
  %156 = load i32, i32* %8, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %8, align 4
  %158 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %159 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %158, i32 0, i32 1
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %161, align 8
  %163 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %164 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @sbimstate, align 4
  %168 = call i32 @CORE_SB(i32 %166, i32 %167)
  %169 = load i32, i32* %8, align 4
  %170 = call i32 %162(i32 %165, i32 %168, i32 %169)
  %171 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %172 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %171, i32 0, i32 1
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32 (i32, i32)*, i32 (i32, i32)** %174, align 8
  %176 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %177 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @sbimstate, align 4
  %181 = call i32 @CORE_SB(i32 %179, i32 %180)
  %182 = call i32 %175(i32 %178, i32 %181)
  store i32 %182, i32* %8, align 4
  %183 = call i32 @udelay(i32 1)
  %184 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %185 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %184, i32 0, i32 1
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32 (i32, i32)*, i32 (i32, i32)** %187, align 8
  %189 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %190 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* @sbimstate, align 4
  %194 = call i32 @CORE_SB(i32 %192, i32 %193)
  %195 = call i32 %188(i32 %191, i32 %194)
  %196 = load i32, i32* @SSB_IMSTATE_BUSY, align 4
  %197 = and i32 %195, %196
  %198 = call i32 @SPINWAIT(i32 %197, i32 100000)
  br label %199

199:                                              ; preds = %142, %125
  %200 = load i32, i32* @SSB_TMSLOW_FGC, align 4
  %201 = load i32, i32* @SSB_TMSLOW_CLOCK, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @SSB_TMSLOW_REJECT, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @SSB_TMSLOW_RESET, align 4
  %206 = or i32 %204, %205
  store i32 %206, i32* %8, align 4
  %207 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %208 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %207, i32 0, i32 1
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 1
  %211 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %210, align 8
  %212 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %213 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* @sbtmstatelow, align 4
  %217 = call i32 @CORE_SB(i32 %215, i32 %216)
  %218 = load i32, i32* %8, align 4
  %219 = call i32 %211(i32 %214, i32 %217, i32 %218)
  %220 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %221 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %220, i32 0, i32 1
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = load i32 (i32, i32)*, i32 (i32, i32)** %223, align 8
  %225 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %226 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* %9, align 4
  %229 = load i32, i32* @sbtmstatelow, align 4
  %230 = call i32 @CORE_SB(i32 %228, i32 %229)
  %231 = call i32 %224(i32 %227, i32 %230)
  store i32 %231, i32* %8, align 4
  %232 = call i32 @udelay(i32 10)
  %233 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %234 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %233, i32 0, i32 1
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load i32 (i32, i32)*, i32 (i32, i32)** %236, align 8
  %238 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %239 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* %9, align 4
  %242 = load i32, i32* @sbidlow, align 4
  %243 = call i32 @CORE_SB(i32 %241, i32 %242)
  %244 = call i32 %237(i32 %240, i32 %243)
  store i32 %244, i32* %8, align 4
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* @SSB_IDLOW_INITIATOR, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %279

249:                                              ; preds = %199
  %250 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %251 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %250, i32 0, i32 1
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  %254 = load i32 (i32, i32)*, i32 (i32, i32)** %253, align 8
  %255 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %256 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* %9, align 4
  %259 = load i32, i32* @sbimstate, align 4
  %260 = call i32 @CORE_SB(i32 %258, i32 %259)
  %261 = call i32 %254(i32 %257, i32 %260)
  store i32 %261, i32* %8, align 4
  %262 = load i32, i32* @SSB_IMSTATE_REJECT, align 4
  %263 = xor i32 %262, -1
  %264 = load i32, i32* %8, align 4
  %265 = and i32 %264, %263
  store i32 %265, i32* %8, align 4
  %266 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %267 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %266, i32 0, i32 1
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 1
  %270 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %269, align 8
  %271 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %272 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* %9, align 4
  %275 = load i32, i32* @sbimstate, align 4
  %276 = call i32 @CORE_SB(i32 %274, i32 %275)
  %277 = load i32, i32* %8, align 4
  %278 = call i32 %270(i32 %273, i32 %276, i32 %277)
  br label %279

279:                                              ; preds = %249, %199
  br label %280

280:                                              ; preds = %279, %34
  %281 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %282 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %281, i32 0, i32 1
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 1
  %285 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %284, align 8
  %286 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %287 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* %9, align 4
  %290 = load i32, i32* @sbtmstatelow, align 4
  %291 = call i32 @CORE_SB(i32 %289, i32 %290)
  %292 = load i32, i32* @SSB_TMSLOW_REJECT, align 4
  %293 = load i32, i32* @SSB_TMSLOW_RESET, align 4
  %294 = or i32 %292, %293
  %295 = call i32 %285(i32 %288, i32 %291, i32 %294)
  %296 = call i32 @udelay(i32 1)
  br label %297

297:                                              ; preds = %280, %33
  ret void
}

declare dso_local i32 @CORE_SB(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @SPINWAIT(i32, i32) #1

declare dso_local i32 @brcmf_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
