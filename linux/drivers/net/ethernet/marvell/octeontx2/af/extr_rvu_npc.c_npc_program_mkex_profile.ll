; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_program_mkex_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_program_mkex_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.npc_mcam_kex = type { i32***, i32****, i32*, i32* }

@NIX_INTF_RX = common dso_local global i64 0, align 8
@NIX_INTF_TX = common dso_local global i64 0, align 8
@NPC_MAX_LD = common dso_local global i32 0, align 4
@NPC_MAX_LID = common dso_local global i32 0, align 4
@NPC_MAX_LT = common dso_local global i32 0, align 4
@NPC_MAX_LFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, i32, %struct.npc_mcam_kex*)* @npc_program_mkex_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npc_program_mkex_profile(%struct.rvu* %0, i32 %1, %struct.npc_mcam_kex* %2) #0 {
  %4 = alloca %struct.rvu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.npc_mcam_kex*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.npc_mcam_kex* %2, %struct.npc_mcam_kex** %6, align 8
  %11 = load %struct.rvu*, %struct.rvu** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i64, i64* @NIX_INTF_RX, align 8
  %14 = call i32 @NPC_AF_INTFX_KEX_CFG(i64 %13)
  %15 = load %struct.npc_mcam_kex*, %struct.npc_mcam_kex** %6, align 8
  %16 = getelementptr inbounds %struct.npc_mcam_kex, %struct.npc_mcam_kex* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @NIX_INTF_RX, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @rvu_write64(%struct.rvu* %11, i32 %12, i32 %14, i32 %20)
  %22 = load %struct.rvu*, %struct.rvu** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i64, i64* @NIX_INTF_TX, align 8
  %25 = call i32 @NPC_AF_INTFX_KEX_CFG(i64 %24)
  %26 = load %struct.npc_mcam_kex*, %struct.npc_mcam_kex** %6, align 8
  %27 = getelementptr inbounds %struct.npc_mcam_kex, %struct.npc_mcam_kex* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @NIX_INTF_TX, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @rvu_write64(%struct.rvu* %22, i32 %23, i32 %25, i32 %31)
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %50, %3
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @NPC_MAX_LD, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load %struct.rvu*, %struct.rvu** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @NPC_AF_KEX_LDATAX_FLAGS_CFG(i32 %40)
  %42 = load %struct.npc_mcam_kex*, %struct.npc_mcam_kex** %6, align 8
  %43 = getelementptr inbounds %struct.npc_mcam_kex, %struct.npc_mcam_kex* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @rvu_write64(%struct.rvu* %38, i32 %39, i32 %41, i32 %48)
  br label %50

50:                                               ; preds = %37
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %33

53:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %123, %53
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @NPC_MAX_LID, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %126

58:                                               ; preds = %54
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %119, %58
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @NPC_MAX_LT, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %122

63:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %115, %63
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @NPC_MAX_LD, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %118

68:                                               ; preds = %64
  %69 = load i64, i64* @NIX_INTF_RX, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.npc_mcam_kex*, %struct.npc_mcam_kex** %6, align 8
  %74 = getelementptr inbounds %struct.npc_mcam_kex, %struct.npc_mcam_kex* %73, i32 0, i32 1
  %75 = load i32****, i32***** %74, align 8
  %76 = load i64, i64* @NIX_INTF_RX, align 8
  %77 = getelementptr inbounds i32***, i32**** %75, i64 %76
  %78 = load i32***, i32**** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32**, i32*** %78, i64 %80
  %82 = load i32**, i32*** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @SET_KEX_LD(i64 %69, i32 %70, i32 %71, i32 %72, i32 %90)
  %92 = load i64, i64* @NIX_INTF_TX, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.npc_mcam_kex*, %struct.npc_mcam_kex** %6, align 8
  %97 = getelementptr inbounds %struct.npc_mcam_kex, %struct.npc_mcam_kex* %96, i32 0, i32 1
  %98 = load i32****, i32***** %97, align 8
  %99 = load i64, i64* @NIX_INTF_TX, align 8
  %100 = getelementptr inbounds i32***, i32**** %98, i64 %99
  %101 = load i32***, i32**** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32**, i32*** %101, i64 %103
  %105 = load i32**, i32*** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @SET_KEX_LD(i64 %92, i32 %93, i32 %94, i32 %95, i32 %113)
  br label %115

115:                                              ; preds = %68
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %64

118:                                              ; preds = %64
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %59

122:                                              ; preds = %59
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %54

126:                                              ; preds = %54
  store i32 0, i32* %9, align 4
  br label %127

127:                                              ; preds = %177, %126
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @NPC_MAX_LD, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %180

131:                                              ; preds = %127
  store i32 0, i32* %10, align 4
  br label %132

132:                                              ; preds = %173, %131
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @NPC_MAX_LFL, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %176

136:                                              ; preds = %132
  %137 = load i64, i64* @NIX_INTF_RX, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load %struct.npc_mcam_kex*, %struct.npc_mcam_kex** %6, align 8
  %141 = getelementptr inbounds %struct.npc_mcam_kex, %struct.npc_mcam_kex* %140, i32 0, i32 0
  %142 = load i32***, i32**** %141, align 8
  %143 = load i64, i64* @NIX_INTF_RX, align 8
  %144 = getelementptr inbounds i32**, i32*** %142, i64 %143
  %145 = load i32**, i32*** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @SET_KEX_LDFLAGS(i64 %137, i32 %138, i32 %139, i32 %153)
  %155 = load i64, i64* @NIX_INTF_TX, align 8
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load %struct.npc_mcam_kex*, %struct.npc_mcam_kex** %6, align 8
  %159 = getelementptr inbounds %struct.npc_mcam_kex, %struct.npc_mcam_kex* %158, i32 0, i32 0
  %160 = load i32***, i32**** %159, align 8
  %161 = load i64, i64* @NIX_INTF_TX, align 8
  %162 = getelementptr inbounds i32**, i32*** %160, i64 %161
  %163 = load i32**, i32*** %162, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32*, i32** %163, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @SET_KEX_LDFLAGS(i64 %155, i32 %156, i32 %157, i32 %171)
  br label %173

173:                                              ; preds = %136
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %10, align 4
  br label %132

176:                                              ; preds = %132
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %9, align 4
  br label %127

180:                                              ; preds = %127
  ret void
}

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @NPC_AF_INTFX_KEX_CFG(i64) #1

declare dso_local i32 @NPC_AF_KEX_LDATAX_FLAGS_CFG(i32) #1

declare dso_local i32 @SET_KEX_LD(i64, i32, i32, i32, i32) #1

declare dso_local i32 @SET_KEX_LDFLAGS(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
