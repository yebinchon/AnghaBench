; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_socram_ramsize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_socram_ramsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_core_priv = type { %struct.TYPE_6__*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@SRCI_SRNB_MASK = common dso_local global i32 0, align 4
@SRCI_SRNB_SHIFT = common dso_local global i32 0, align 4
@SRCI_SRBSZ_MASK = common dso_local global i32 0, align 4
@SRCI_LSS_MASK = common dso_local global i32 0, align 4
@SRCI_LSS_SHIFT = common dso_local global i32 0, align 4
@SR_BSZ_BASE = common dso_local global i32 0, align 4
@SRCI_SRNB_MASK_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_core_priv*, i32*, i32*)* @brcmf_chip_socram_ramsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_chip_socram_ramsize(%struct.brcmf_core_priv* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.brcmf_core_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.brcmf_core_priv* %0, %struct.brcmf_core_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32*, i32** %5, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %6, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %4, align 8
  %16 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 4
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %154

24:                                               ; preds = %3
  %25 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %4, align 8
  %26 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %25, i32 0, i32 1
  %27 = call i32 @brcmf_chip_iscoreup(%struct.TYPE_7__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %4, align 8
  %31 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %30, i32 0, i32 1
  %32 = call i32 @brcmf_chip_resetcore(%struct.TYPE_7__* %31, i32 0, i32 0, i32 0)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @SOCRAMREGOFFS(i32 %35)
  %37 = call i32 @brcmf_chip_core_read32(%struct.brcmf_core_priv* %34, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @SRCI_SRNB_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @SRCI_SRNB_SHIFT, align 4
  %42 = ashr i32 %40, %41
  store i32 %42, i32* %8, align 4
  %43 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %4, align 8
  %44 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sle i32 %46, 7
  br i1 %47, label %54, label %48

48:                                               ; preds = %33
  %49 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %4, align 8
  %50 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 12
  br i1 %53, label %54, label %88

54:                                               ; preds = %48, %33
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @SRCI_SRBSZ_MASK, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @SRCI_LSS_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @SRCI_LSS_SHIFT, align 4
  %62 = ashr i32 %60, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %65, %54
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @SR_BSZ_BASE, align 4
  %72 = add nsw i32 %70, %71
  %73 = shl i32 1, %72
  %74 = mul nsw i32 %69, %73
  %75 = load i32*, i32** %5, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %68
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %79, 1
  %81 = load i32, i32* @SR_BSZ_BASE, align 4
  %82 = add nsw i32 %80, %81
  %83 = shl i32 1, %82
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, %83
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %78, %68
  br label %133

88:                                               ; preds = %48
  %89 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %4, align 8
  %90 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp sge i32 %92, 23
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @SRCI_SRNB_MASK, align 4
  %97 = load i32, i32* @SRCI_SRNB_MASK_EXT, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %95, %98
  %100 = load i32, i32* @SRCI_SRNB_SHIFT, align 4
  %101 = ashr i32 %99, %100
  store i32 %101, i32* %8, align 4
  br label %108

102:                                              ; preds = %88
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @SRCI_SRNB_MASK, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* @SRCI_SRNB_SHIFT, align 4
  %107 = ashr i32 %105, %106
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %102, %94
  store i32 0, i32* %12, align 4
  br label %109

109:                                              ; preds = %129, %108
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %132

113:                                              ; preds = %109
  %114 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %4, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @brcmf_chip_socram_banksize(%struct.brcmf_core_priv* %114, i32 %115, i32* %9)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %117
  store i32 %120, i32* %118, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %113
  %124 = load i32, i32* %9, align 4
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, %124
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %123, %113
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %109

132:                                              ; preds = %109
  br label %133

133:                                              ; preds = %132, %87
  %134 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %4, align 8
  %135 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %134, i32 0, i32 0
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  switch i32 %139, label %153 [
    i32 129, label %140
    i32 128, label %151
  ]

140:                                              ; preds = %133
  %141 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %4, align 8
  %142 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %146, 2
  br i1 %147, label %148, label %150

148:                                              ; preds = %140
  %149 = load i32*, i32** %6, align 8
  store i32 32768, i32* %149, align 4
  br label %150

150:                                              ; preds = %148, %140
  br label %154

151:                                              ; preds = %133
  %152 = load i32*, i32** %6, align 8
  store i32 65536, i32* %152, align 4
  br label %154

153:                                              ; preds = %133
  br label %154

154:                                              ; preds = %23, %153, %151, %150
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @brcmf_chip_iscoreup(%struct.TYPE_7__*) #1

declare dso_local i32 @brcmf_chip_resetcore(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @brcmf_chip_core_read32(%struct.brcmf_core_priv*, i32) #1

declare dso_local i32 @SOCRAMREGOFFS(i32) #1

declare dso_local i32 @brcmf_chip_socram_banksize(%struct.brcmf_core_priv*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
