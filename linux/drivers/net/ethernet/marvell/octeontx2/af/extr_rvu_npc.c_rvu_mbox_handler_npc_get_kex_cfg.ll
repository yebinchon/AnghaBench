; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_mbox_handler_npc_get_kex_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_mbox_handler_npc_get_kex_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.msg_req = type { i32 }
%struct.npc_get_kex_cfg_rsp = type { i32, i8****, i32*, i8*****, i8*, i8* }

@NIX_INTF_RX = common dso_local global i64 0, align 8
@NIX_INTF_TX = common dso_local global i64 0, align 8
@NPC_MAX_LID = common dso_local global i32 0, align 4
@NPC_MAX_LT = common dso_local global i32 0, align 4
@NPC_MAX_LD = common dso_local global i32 0, align 4
@NPC_MAX_LFL = common dso_local global i32 0, align 4
@MKEX_NAME_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_npc_get_kex_cfg(%struct.rvu* %0, %struct.msg_req* %1, %struct.npc_get_kex_cfg_rsp* %2) #0 {
  %4 = alloca %struct.rvu*, align 8
  %5 = alloca %struct.msg_req*, align 8
  %6 = alloca %struct.npc_get_kex_cfg_rsp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %4, align 8
  store %struct.msg_req* %1, %struct.msg_req** %5, align 8
  store %struct.npc_get_kex_cfg_rsp* %2, %struct.npc_get_kex_cfg_rsp** %6, align 8
  %11 = load i64, i64* @NIX_INTF_RX, align 8
  %12 = call i8* @GET_KEX_CFG(i64 %11)
  %13 = load %struct.npc_get_kex_cfg_rsp*, %struct.npc_get_kex_cfg_rsp** %6, align 8
  %14 = getelementptr inbounds %struct.npc_get_kex_cfg_rsp, %struct.npc_get_kex_cfg_rsp* %13, i32 0, i32 5
  store i8* %12, i8** %14, align 8
  %15 = load i64, i64* @NIX_INTF_TX, align 8
  %16 = call i8* @GET_KEX_CFG(i64 %15)
  %17 = load %struct.npc_get_kex_cfg_rsp*, %struct.npc_get_kex_cfg_rsp** %6, align 8
  %18 = getelementptr inbounds %struct.npc_get_kex_cfg_rsp, %struct.npc_get_kex_cfg_rsp* %17, i32 0, i32 4
  store i8* %16, i8** %18, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %86, %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @NPC_MAX_LID, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %89

23:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %82, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @NPC_MAX_LT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %85

28:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %78, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @NPC_MAX_LD, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %81

33:                                               ; preds = %29
  %34 = load i64, i64* @NIX_INTF_RX, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i8* @GET_KEX_LD(i64 %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.npc_get_kex_cfg_rsp*, %struct.npc_get_kex_cfg_rsp** %6, align 8
  %40 = getelementptr inbounds %struct.npc_get_kex_cfg_rsp, %struct.npc_get_kex_cfg_rsp* %39, i32 0, i32 3
  %41 = load i8*****, i8****** %40, align 8
  %42 = load i64, i64* @NIX_INTF_RX, align 8
  %43 = getelementptr inbounds i8****, i8***** %41, i64 %42
  %44 = load i8****, i8***** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8***, i8**** %44, i64 %46
  %48 = load i8***, i8**** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8**, i8*** %48, i64 %50
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  store i8* %38, i8** %55, align 8
  %56 = load i64, i64* @NIX_INTF_TX, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i8* @GET_KEX_LD(i64 %56, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.npc_get_kex_cfg_rsp*, %struct.npc_get_kex_cfg_rsp** %6, align 8
  %62 = getelementptr inbounds %struct.npc_get_kex_cfg_rsp, %struct.npc_get_kex_cfg_rsp* %61, i32 0, i32 3
  %63 = load i8*****, i8****** %62, align 8
  %64 = load i64, i64* @NIX_INTF_TX, align 8
  %65 = getelementptr inbounds i8****, i8***** %63, i64 %64
  %66 = load i8****, i8***** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8***, i8**** %66, i64 %68
  %70 = load i8***, i8**** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8**, i8*** %70, i64 %72
  %74 = load i8**, i8*** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  store i8* %60, i8** %77, align 8
  br label %78

78:                                               ; preds = %33
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %29

81:                                               ; preds = %29
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %24

85:                                               ; preds = %24
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %19

89:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %103, %89
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @NPC_MAX_LD, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @GET_KEX_FLAGS(i32 %95)
  %97 = load %struct.npc_get_kex_cfg_rsp*, %struct.npc_get_kex_cfg_rsp** %6, align 8
  %98 = getelementptr inbounds %struct.npc_get_kex_cfg_rsp, %struct.npc_get_kex_cfg_rsp* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %96, i32* %102, align 4
  br label %103

103:                                              ; preds = %94
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %90

106:                                              ; preds = %90
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %155, %106
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @NPC_MAX_LD, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %158

111:                                              ; preds = %107
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %151, %111
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @NPC_MAX_LFL, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %154

116:                                              ; preds = %112
  %117 = load i64, i64* @NIX_INTF_RX, align 8
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i8* @GET_KEX_LDFLAGS(i64 %117, i32 %118, i32 %119)
  %121 = load %struct.npc_get_kex_cfg_rsp*, %struct.npc_get_kex_cfg_rsp** %6, align 8
  %122 = getelementptr inbounds %struct.npc_get_kex_cfg_rsp, %struct.npc_get_kex_cfg_rsp* %121, i32 0, i32 1
  %123 = load i8****, i8***** %122, align 8
  %124 = load i64, i64* @NIX_INTF_RX, align 8
  %125 = getelementptr inbounds i8***, i8**** %123, i64 %124
  %126 = load i8***, i8**** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8**, i8*** %126, i64 %128
  %130 = load i8**, i8*** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  store i8* %120, i8** %133, align 8
  %134 = load i64, i64* @NIX_INTF_TX, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %10, align 4
  %137 = call i8* @GET_KEX_LDFLAGS(i64 %134, i32 %135, i32 %136)
  %138 = load %struct.npc_get_kex_cfg_rsp*, %struct.npc_get_kex_cfg_rsp** %6, align 8
  %139 = getelementptr inbounds %struct.npc_get_kex_cfg_rsp, %struct.npc_get_kex_cfg_rsp* %138, i32 0, i32 1
  %140 = load i8****, i8***** %139, align 8
  %141 = load i64, i64* @NIX_INTF_TX, align 8
  %142 = getelementptr inbounds i8***, i8**** %140, i64 %141
  %143 = load i8***, i8**** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8**, i8*** %143, i64 %145
  %147 = load i8**, i8*** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  store i8* %137, i8** %150, align 8
  br label %151

151:                                              ; preds = %116
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %10, align 4
  br label %112

154:                                              ; preds = %112
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %9, align 4
  br label %107

158:                                              ; preds = %107
  %159 = load %struct.npc_get_kex_cfg_rsp*, %struct.npc_get_kex_cfg_rsp** %6, align 8
  %160 = getelementptr inbounds %struct.npc_get_kex_cfg_rsp, %struct.npc_get_kex_cfg_rsp* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.rvu*, %struct.rvu** %4, align 8
  %163 = getelementptr inbounds %struct.rvu, %struct.rvu* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @MKEX_NAME_LEN, align 4
  %166 = call i32 @memcpy(i32 %161, i32 %164, i32 %165)
  ret i32 0
}

declare dso_local i8* @GET_KEX_CFG(i64) #1

declare dso_local i8* @GET_KEX_LD(i64, i32, i32, i32) #1

declare dso_local i32 @GET_KEX_FLAGS(i32) #1

declare dso_local i8* @GET_KEX_LDFLAGS(i64, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
