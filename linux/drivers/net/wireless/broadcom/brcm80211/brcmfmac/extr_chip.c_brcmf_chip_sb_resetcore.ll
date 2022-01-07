; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_sb_resetcore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_sb_resetcore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_core_priv = type { %struct.TYPE_3__, %struct.brcmf_chip_priv* }
%struct.TYPE_3__ = type { i32 }
%struct.brcmf_chip_priv = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32)*, i32 (i32, i32, i32)* }

@sbtmstatelow = common dso_local global i32 0, align 4
@SSB_TMSLOW_FGC = common dso_local global i32 0, align 4
@SSB_TMSLOW_CLOCK = common dso_local global i32 0, align 4
@SSB_TMSLOW_RESET = common dso_local global i32 0, align 4
@sbtmstatehigh = common dso_local global i32 0, align 4
@SSB_TMSHIGH_SERR = common dso_local global i32 0, align 4
@sbimstate = common dso_local global i32 0, align 4
@SSB_IMSTATE_IBE = common dso_local global i32 0, align 4
@SSB_IMSTATE_TO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_core_priv*, i32, i32, i32)* @brcmf_chip_sb_resetcore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_chip_sb_resetcore(%struct.brcmf_core_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.brcmf_core_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.brcmf_chip_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.brcmf_core_priv* %0, %struct.brcmf_core_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %5, align 8
  %13 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %12, i32 0, i32 1
  %14 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %13, align 8
  store %struct.brcmf_chip_priv* %14, %struct.brcmf_chip_priv** %9, align 8
  %15 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %5, align 8
  %16 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %11, align 4
  %19 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %5, align 8
  %20 = call i32 @brcmf_chip_sb_coredisable(%struct.brcmf_core_priv* %19, i32 0, i32 0)
  %21 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %22 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %24, align 8
  %26 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %27 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @sbtmstatelow, align 4
  %31 = call i32 @CORE_SB(i32 %29, i32 %30)
  %32 = load i32, i32* @SSB_TMSLOW_FGC, align 4
  %33 = load i32, i32* @SSB_TMSLOW_CLOCK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SSB_TMSLOW_RESET, align 4
  %36 = or i32 %34, %35
  %37 = call i32 %25(i32 %28, i32 %31, i32 %36)
  %38 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %39 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (i32, i32)*, i32 (i32, i32)** %41, align 8
  %43 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %44 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @sbtmstatelow, align 4
  %48 = call i32 @CORE_SB(i32 %46, i32 %47)
  %49 = call i32 %42(i32 %45, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = call i32 @udelay(i32 1)
  %51 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %52 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32 (i32, i32)*, i32 (i32, i32)** %54, align 8
  %56 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %57 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @sbtmstatehigh, align 4
  %61 = call i32 @CORE_SB(i32 %59, i32 %60)
  %62 = call i32 %55(i32 %58, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @SSB_TMSHIGH_SERR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %4
  %68 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %69 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %71, align 8
  %73 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %74 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @sbtmstatehigh, align 4
  %78 = call i32 @CORE_SB(i32 %76, i32 %77)
  %79 = call i32 %72(i32 %75, i32 %78, i32 0)
  br label %80

80:                                               ; preds = %67, %4
  %81 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %82 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32 (i32, i32)*, i32 (i32, i32)** %84, align 8
  %86 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %87 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @sbimstate, align 4
  %91 = call i32 @CORE_SB(i32 %89, i32 %90)
  %92 = call i32 %85(i32 %88, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @SSB_IMSTATE_IBE, align 4
  %95 = load i32, i32* @SSB_IMSTATE_TO, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %80
  %100 = load i32, i32* @SSB_IMSTATE_IBE, align 4
  %101 = load i32, i32* @SSB_IMSTATE_TO, align 4
  %102 = or i32 %100, %101
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %10, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %10, align 4
  %106 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %107 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %109, align 8
  %111 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %112 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @sbimstate, align 4
  %116 = call i32 @CORE_SB(i32 %114, i32 %115)
  %117 = load i32, i32* %10, align 4
  %118 = call i32 %110(i32 %113, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %99, %80
  %120 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %121 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %123, align 8
  %125 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %126 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @sbtmstatelow, align 4
  %130 = call i32 @CORE_SB(i32 %128, i32 %129)
  %131 = load i32, i32* @SSB_TMSLOW_FGC, align 4
  %132 = load i32, i32* @SSB_TMSLOW_CLOCK, align 4
  %133 = or i32 %131, %132
  %134 = call i32 %124(i32 %127, i32 %130, i32 %133)
  %135 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %136 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %135, i32 0, i32 1
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32 (i32, i32)*, i32 (i32, i32)** %138, align 8
  %140 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %141 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @sbtmstatelow, align 4
  %145 = call i32 @CORE_SB(i32 %143, i32 %144)
  %146 = call i32 %139(i32 %142, i32 %145)
  store i32 %146, i32* %10, align 4
  %147 = call i32 @udelay(i32 1)
  %148 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %149 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %148, i32 0, i32 1
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %151, align 8
  %153 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %154 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* @sbtmstatelow, align 4
  %158 = call i32 @CORE_SB(i32 %156, i32 %157)
  %159 = load i32, i32* @SSB_TMSLOW_CLOCK, align 4
  %160 = call i32 %152(i32 %155, i32 %158, i32 %159)
  %161 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %162 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %161, i32 0, i32 1
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32 (i32, i32)*, i32 (i32, i32)** %164, align 8
  %166 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %167 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @sbtmstatelow, align 4
  %171 = call i32 @CORE_SB(i32 %169, i32 %170)
  %172 = call i32 %165(i32 %168, i32 %171)
  store i32 %172, i32* %10, align 4
  %173 = call i32 @udelay(i32 1)
  ret void
}

declare dso_local i32 @brcmf_chip_sb_coredisable(%struct.brcmf_core_priv*, i32, i32) #1

declare dso_local i32 @CORE_SB(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
