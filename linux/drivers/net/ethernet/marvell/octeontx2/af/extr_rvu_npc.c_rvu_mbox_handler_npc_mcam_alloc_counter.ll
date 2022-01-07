; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_mbox_handler_npc_mcam_alloc_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_mbox_handler_npc_mcam_alloc_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.npc_mcam }
%struct.npc_mcam = type { i32*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.npc_mcam_alloc_counter_req = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.npc_mcam_alloc_counter_rsp = type { i32, i32, i32* }

@BLKTYPE_NPC = common dso_local global i32 0, align 4
@NPC_MCAM_INVALID_REQ = common dso_local global i32 0, align 4
@NPC_MAX_NONCONTIG_COUNTERS = common dso_local global i32 0, align 4
@NPC_MCAM_ALLOC_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_npc_mcam_alloc_counter(%struct.rvu* %0, %struct.npc_mcam_alloc_counter_req* %1, %struct.npc_mcam_alloc_counter_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.npc_mcam_alloc_counter_req*, align 8
  %7 = alloca %struct.npc_mcam_alloc_counter_rsp*, align 8
  %8 = alloca %struct.npc_mcam*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.npc_mcam_alloc_counter_req* %1, %struct.npc_mcam_alloc_counter_req** %6, align 8
  store %struct.npc_mcam_alloc_counter_rsp* %2, %struct.npc_mcam_alloc_counter_rsp** %7, align 8
  %14 = load %struct.rvu*, %struct.rvu** %5, align 8
  %15 = getelementptr inbounds %struct.rvu, %struct.rvu* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.npc_mcam* %17, %struct.npc_mcam** %8, align 8
  %18 = load %struct.npc_mcam_alloc_counter_req*, %struct.npc_mcam_alloc_counter_req** %6, align 8
  %19 = getelementptr inbounds %struct.npc_mcam_alloc_counter_req, %struct.npc_mcam_alloc_counter_req* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.rvu*, %struct.rvu** %5, align 8
  %23 = load i32, i32* @BLKTYPE_NPC, align 4
  %24 = call i32 @rvu_get_blkaddr(%struct.rvu* %22, i32 %23, i32 0)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @NPC_MCAM_INVALID_REQ, align 4
  store i32 %28, i32* %4, align 4
  br label %154

29:                                               ; preds = %3
  %30 = load %struct.rvu*, %struct.rvu** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @is_nixlf_attached(%struct.rvu* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @NPC_MCAM_INVALID_REQ, align 4
  store i32 %35, i32* %4, align 4
  br label %154

36:                                               ; preds = %29
  %37 = load %struct.npc_mcam_alloc_counter_req*, %struct.npc_mcam_alloc_counter_req** %6, align 8
  %38 = getelementptr inbounds %struct.npc_mcam_alloc_counter_req, %struct.npc_mcam_alloc_counter_req* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  %42 = load %struct.npc_mcam_alloc_counter_req*, %struct.npc_mcam_alloc_counter_req** %6, align 8
  %43 = getelementptr inbounds %struct.npc_mcam_alloc_counter_req, %struct.npc_mcam_alloc_counter_req* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @NPC_MAX_NONCONTIG_COUNTERS, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @NPC_MCAM_INVALID_REQ, align 4
  store i32 %48, i32* %4, align 4
  br label %154

49:                                               ; preds = %41, %36
  %50 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %51 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %50, i32 0, i32 1
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %54 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %53, i32 0, i32 2
  %55 = call i32 @rvu_rsrc_free_count(%struct.TYPE_7__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %49
  %58 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %59 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %58, i32 0, i32 1
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* @NPC_MCAM_ALLOC_FAILED, align 4
  store i32 %61, i32* %4, align 4
  br label %154

62:                                               ; preds = %49
  %63 = load %struct.npc_mcam_alloc_counter_rsp*, %struct.npc_mcam_alloc_counter_rsp** %7, align 8
  %64 = getelementptr inbounds %struct.npc_mcam_alloc_counter_rsp, %struct.npc_mcam_alloc_counter_rsp* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.npc_mcam_alloc_counter_req*, %struct.npc_mcam_alloc_counter_req** %6, align 8
  %66 = getelementptr inbounds %struct.npc_mcam_alloc_counter_req, %struct.npc_mcam_alloc_counter_req* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %113

69:                                               ; preds = %62
  %70 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %71 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %75 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.npc_mcam_alloc_counter_req*, %struct.npc_mcam_alloc_counter_req** %6, align 8
  %79 = getelementptr inbounds %struct.npc_mcam_alloc_counter_req, %struct.npc_mcam_alloc_counter_req* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @npc_mcam_find_zero_area(i32 %73, i32 %77, i32 0, i32 %80, i32* %10)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.npc_mcam_alloc_counter_rsp*, %struct.npc_mcam_alloc_counter_rsp** %7, align 8
  %84 = getelementptr inbounds %struct.npc_mcam_alloc_counter_rsp, %struct.npc_mcam_alloc_counter_rsp* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.npc_mcam_alloc_counter_rsp*, %struct.npc_mcam_alloc_counter_rsp** %7, align 8
  %87 = getelementptr inbounds %struct.npc_mcam_alloc_counter_rsp, %struct.npc_mcam_alloc_counter_rsp* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %109, %69
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %91, %92
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %89
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %98 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @__set_bit(i32 %96, i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %104 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %102, i32* %108, align 4
  br label %109

109:                                              ; preds = %95
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %89

112:                                              ; preds = %89
  br label %150

113:                                              ; preds = %62
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %146, %113
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.npc_mcam_alloc_counter_req*, %struct.npc_mcam_alloc_counter_req** %6, align 8
  %117 = getelementptr inbounds %struct.npc_mcam_alloc_counter_req, %struct.npc_mcam_alloc_counter_req* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %149

120:                                              ; preds = %114
  %121 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %122 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %121, i32 0, i32 2
  %123 = call i32 @rvu_alloc_rsrc(%struct.TYPE_7__* %122)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %149

127:                                              ; preds = %120
  %128 = load i32, i32* %13, align 4
  %129 = load %struct.npc_mcam_alloc_counter_rsp*, %struct.npc_mcam_alloc_counter_rsp** %7, align 8
  %130 = getelementptr inbounds %struct.npc_mcam_alloc_counter_rsp, %struct.npc_mcam_alloc_counter_rsp* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %128, i32* %134, align 4
  %135 = load %struct.npc_mcam_alloc_counter_rsp*, %struct.npc_mcam_alloc_counter_rsp** %7, align 8
  %136 = getelementptr inbounds %struct.npc_mcam_alloc_counter_rsp, %struct.npc_mcam_alloc_counter_rsp* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %141 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %139, i32* %145, align 4
  br label %146

146:                                              ; preds = %127
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  br label %114

149:                                              ; preds = %126, %114
  br label %150

150:                                              ; preds = %149, %112
  %151 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %152 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %151, i32 0, i32 1
  %153 = call i32 @mutex_unlock(i32* %152)
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %150, %57, %47, %34, %27
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @is_nixlf_attached(%struct.rvu*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rvu_rsrc_free_count(%struct.TYPE_7__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @npc_mcam_find_zero_area(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @rvu_alloc_rsrc(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
