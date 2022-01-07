; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_mbox_handler_npc_mcam_unmap_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_mbox_handler_npc_mcam_unmap_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.npc_mcam }
%struct.npc_mcam = type { i64, i64*, i32, i32, i32* }
%struct.npc_mcam_unmap_counter_req = type { i64, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.msg_rsp = type { i32 }

@BLKTYPE_NPC = common dso_local global i32 0, align 4
@NPC_MCAM_INVALID_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_npc_mcam_unmap_counter(%struct.rvu* %0, %struct.npc_mcam_unmap_counter_req* %1, %struct.msg_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.npc_mcam_unmap_counter_req*, align 8
  %7 = alloca %struct.msg_rsp*, align 8
  %8 = alloca %struct.npc_mcam*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.npc_mcam_unmap_counter_req* %1, %struct.npc_mcam_unmap_counter_req** %6, align 8
  store %struct.msg_rsp* %2, %struct.msg_rsp** %7, align 8
  %13 = load %struct.rvu*, %struct.rvu** %5, align 8
  %14 = getelementptr inbounds %struct.rvu, %struct.rvu* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.npc_mcam* %16, %struct.npc_mcam** %8, align 8
  store i64 0, i64* %10, align 8
  %17 = load %struct.rvu*, %struct.rvu** %5, align 8
  %18 = load i32, i32* @BLKTYPE_NPC, align 4
  %19 = call i32 @rvu_get_blkaddr(%struct.rvu* %17, i32 %18, i32 0)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @NPC_MCAM_INVALID_REQ, align 4
  store i32 %23, i32* %4, align 4
  br label %131

24:                                               ; preds = %3
  %25 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %26 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %25, i32 0, i32 2
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %29 = load %struct.npc_mcam_unmap_counter_req*, %struct.npc_mcam_unmap_counter_req** %6, align 8
  %30 = getelementptr inbounds %struct.npc_mcam_unmap_counter_req, %struct.npc_mcam_unmap_counter_req* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.npc_mcam_unmap_counter_req*, %struct.npc_mcam_unmap_counter_req** %6, align 8
  %34 = getelementptr inbounds %struct.npc_mcam_unmap_counter_req, %struct.npc_mcam_unmap_counter_req* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @npc_mcam_verify_counter(%struct.npc_mcam* %28, i32 %32, i64 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  br label %126

40:                                               ; preds = %24
  %41 = load %struct.npc_mcam_unmap_counter_req*, %struct.npc_mcam_unmap_counter_req** %6, align 8
  %42 = getelementptr inbounds %struct.npc_mcam_unmap_counter_req, %struct.npc_mcam_unmap_counter_req* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %69, label %45

45:                                               ; preds = %40
  %46 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %47 = load %struct.npc_mcam_unmap_counter_req*, %struct.npc_mcam_unmap_counter_req** %6, align 8
  %48 = getelementptr inbounds %struct.npc_mcam_unmap_counter_req, %struct.npc_mcam_unmap_counter_req* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.npc_mcam_unmap_counter_req*, %struct.npc_mcam_unmap_counter_req** %6, align 8
  %52 = getelementptr inbounds %struct.npc_mcam_unmap_counter_req, %struct.npc_mcam_unmap_counter_req* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @npc_mcam_verify_entry(%struct.npc_mcam* %46, i32 %50, i64 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %126

58:                                               ; preds = %45
  %59 = load %struct.rvu*, %struct.rvu** %5, align 8
  %60 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.npc_mcam_unmap_counter_req*, %struct.npc_mcam_unmap_counter_req** %6, align 8
  %63 = getelementptr inbounds %struct.npc_mcam_unmap_counter_req, %struct.npc_mcam_unmap_counter_req* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.npc_mcam_unmap_counter_req*, %struct.npc_mcam_unmap_counter_req** %6, align 8
  %66 = getelementptr inbounds %struct.npc_mcam_unmap_counter_req, %struct.npc_mcam_unmap_counter_req* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @npc_unmap_mcam_entry_and_cntr(%struct.rvu* %59, %struct.npc_mcam* %60, i32 %61, i64 %64, i64 %67)
  br label %126

69:                                               ; preds = %40
  br label %70

70:                                               ; preds = %114, %113, %69
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %73 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %71, %74
  br i1 %75, label %76, label %125

76:                                               ; preds = %70
  %77 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %78 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.npc_mcam_unmap_counter_req*, %struct.npc_mcam_unmap_counter_req** %6, align 8
  %81 = getelementptr inbounds %struct.npc_mcam_unmap_counter_req, %struct.npc_mcam_unmap_counter_req* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %76
  br label %125

87:                                               ; preds = %76
  %88 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %89 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %92 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %10, align 8
  %95 = call i64 @find_next_bit(i32 %90, i64 %93, i64 %94)
  store i64 %95, i64* %9, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %98 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp uge i64 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %87
  br label %125

102:                                              ; preds = %87
  %103 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %104 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* %9, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.npc_mcam_unmap_counter_req*, %struct.npc_mcam_unmap_counter_req** %6, align 8
  %110 = getelementptr inbounds %struct.npc_mcam_unmap_counter_req, %struct.npc_mcam_unmap_counter_req* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  br label %70

114:                                              ; preds = %102
  %115 = load i64, i64* %9, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %10, align 8
  %117 = load %struct.rvu*, %struct.rvu** %5, align 8
  %118 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load i64, i64* %9, align 8
  %121 = load %struct.npc_mcam_unmap_counter_req*, %struct.npc_mcam_unmap_counter_req** %6, align 8
  %122 = getelementptr inbounds %struct.npc_mcam_unmap_counter_req, %struct.npc_mcam_unmap_counter_req* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @npc_unmap_mcam_entry_and_cntr(%struct.rvu* %117, %struct.npc_mcam* %118, i32 %119, i64 %120, i64 %123)
  br label %70

125:                                              ; preds = %101, %86, %70
  br label %126

126:                                              ; preds = %125, %58, %57, %39
  %127 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %128 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %127, i32 0, i32 2
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %126, %22
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @npc_mcam_verify_counter(%struct.npc_mcam*, i32, i64) #1

declare dso_local i32 @npc_mcam_verify_entry(%struct.npc_mcam*, i32, i64) #1

declare dso_local i32 @npc_unmap_mcam_entry_and_cntr(%struct.rvu*, %struct.npc_mcam*, i32, i64, i64) #1

declare dso_local i64 @find_next_bit(i32, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
