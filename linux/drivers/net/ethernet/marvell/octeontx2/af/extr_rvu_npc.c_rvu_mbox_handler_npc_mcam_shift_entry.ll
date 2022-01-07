; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_mbox_handler_npc_mcam_shift_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_mbox_handler_npc_mcam_shift_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.npc_mcam }
%struct.npc_mcam = type { i64*, i32 }
%struct.npc_mcam_shift_entry_req = type { i64, i64*, i64*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.npc_mcam_shift_entry_rsp = type { i64 }

@BLKTYPE_NPC = common dso_local global i32 0, align 4
@NPC_MCAM_INVALID_REQ = common dso_local global i32 0, align 4
@NPC_MCAM_MAX_SHIFTS = common dso_local global i64 0, align 8
@NPC_MCAM_INVALID_MAP = common dso_local global i64 0, align 8
@NPC_MCAM_PERM_DENIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_npc_mcam_shift_entry(%struct.rvu* %0, %struct.npc_mcam_shift_entry_req* %1, %struct.npc_mcam_shift_entry_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.npc_mcam_shift_entry_req*, align 8
  %7 = alloca %struct.npc_mcam_shift_entry_rsp*, align 8
  %8 = alloca %struct.npc_mcam*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.npc_mcam_shift_entry_req* %1, %struct.npc_mcam_shift_entry_req** %6, align 8
  store %struct.npc_mcam_shift_entry_rsp* %2, %struct.npc_mcam_shift_entry_rsp** %7, align 8
  %16 = load %struct.rvu*, %struct.rvu** %5, align 8
  %17 = getelementptr inbounds %struct.rvu, %struct.rvu* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.npc_mcam* %19, %struct.npc_mcam** %8, align 8
  %20 = load %struct.npc_mcam_shift_entry_req*, %struct.npc_mcam_shift_entry_req** %6, align 8
  %21 = getelementptr inbounds %struct.npc_mcam_shift_entry_req, %struct.npc_mcam_shift_entry_req* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load %struct.rvu*, %struct.rvu** %5, align 8
  %25 = load i32, i32* @BLKTYPE_NPC, align 4
  %26 = call i32 @rvu_get_blkaddr(%struct.rvu* %24, i32 %25, i32 0)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @NPC_MCAM_INVALID_REQ, align 4
  store i32 %30, i32* %4, align 4
  br label %152

31:                                               ; preds = %3
  %32 = load %struct.npc_mcam_shift_entry_req*, %struct.npc_mcam_shift_entry_req** %6, align 8
  %33 = getelementptr inbounds %struct.npc_mcam_shift_entry_req, %struct.npc_mcam_shift_entry_req* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NPC_MCAM_MAX_SHIFTS, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @NPC_MCAM_INVALID_REQ, align 4
  store i32 %38, i32* %4, align 4
  br label %152

39:                                               ; preds = %31
  %40 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %41 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %40, i32 0, i32 1
  %42 = call i32 @mutex_lock(i32* %41)
  store i64 0, i64* %12, align 8
  br label %43

43:                                               ; preds = %133, %39
  %44 = load i64, i64* %12, align 8
  %45 = load %struct.npc_mcam_shift_entry_req*, %struct.npc_mcam_shift_entry_req** %6, align 8
  %46 = getelementptr inbounds %struct.npc_mcam_shift_entry_req, %struct.npc_mcam_shift_entry_req* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %136

49:                                               ; preds = %43
  %50 = load %struct.npc_mcam_shift_entry_req*, %struct.npc_mcam_shift_entry_req** %6, align 8
  %51 = getelementptr inbounds %struct.npc_mcam_shift_entry_req, %struct.npc_mcam_shift_entry_req* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %10, align 8
  %56 = load %struct.npc_mcam_shift_entry_req*, %struct.npc_mcam_shift_entry_req** %6, align 8
  %57 = getelementptr inbounds %struct.npc_mcam_shift_entry_req, %struct.npc_mcam_shift_entry_req* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %11, align 8
  %62 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @npc_mcam_verify_entry(%struct.npc_mcam* %62, i64 %63, i64 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %49
  br label %136

69:                                               ; preds = %49
  %70 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @npc_mcam_verify_entry(%struct.npc_mcam* %70, i64 %71, i64 %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %136

77:                                               ; preds = %69
  %78 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %79 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %11, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @NPC_MCAM_INVALID_MAP, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i32, i32* @NPC_MCAM_PERM_DENIED, align 4
  store i32 %87, i32* %15, align 4
  br label %136

88:                                               ; preds = %77
  %89 = load %struct.rvu*, %struct.rvu** %5, align 8
  %90 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %91 = load i32, i32* %14, align 4
  %92 = load i64, i64* %11, align 8
  %93 = call i32 @npc_enable_mcam_entry(%struct.rvu* %89, %struct.npc_mcam* %90, i32 %91, i64 %92, i32 0)
  %94 = load %struct.rvu*, %struct.rvu** %5, align 8
  %95 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %96 = load i32, i32* %14, align 4
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* %11, align 8
  %99 = call i32 @npc_copy_mcam_entry(%struct.rvu* %94, %struct.npc_mcam* %95, i32 %96, i64 %97, i64 %98)
  %100 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %101 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = load i64, i64* %10, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %13, align 8
  %106 = load i64, i64* %13, align 8
  %107 = load i64, i64* @NPC_MCAM_INVALID_MAP, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %88
  %110 = load %struct.rvu*, %struct.rvu** %5, align 8
  %111 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %112 = load i32, i32* %14, align 4
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* %13, align 8
  %115 = call i32 @npc_unmap_mcam_entry_and_cntr(%struct.rvu* %110, %struct.npc_mcam* %111, i32 %112, i64 %113, i64 %114)
  %116 = load %struct.rvu*, %struct.rvu** %5, align 8
  %117 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %118 = load i32, i32* %14, align 4
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* %13, align 8
  %121 = call i32 @npc_map_mcam_entry_and_cntr(%struct.rvu* %116, %struct.npc_mcam* %117, i32 %118, i64 %119, i64 %120)
  br label %122

122:                                              ; preds = %109, %88
  %123 = load %struct.rvu*, %struct.rvu** %5, align 8
  %124 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %125 = load i32, i32* %14, align 4
  %126 = load i64, i64* %11, align 8
  %127 = call i32 @npc_enable_mcam_entry(%struct.rvu* %123, %struct.npc_mcam* %124, i32 %125, i64 %126, i32 1)
  %128 = load %struct.rvu*, %struct.rvu** %5, align 8
  %129 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %130 = load i32, i32* %14, align 4
  %131 = load i64, i64* %10, align 8
  %132 = call i32 @npc_enable_mcam_entry(%struct.rvu* %128, %struct.npc_mcam* %129, i32 %130, i64 %131, i32 0)
  br label %133

133:                                              ; preds = %122
  %134 = load i64, i64* %12, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %12, align 8
  br label %43

136:                                              ; preds = %86, %76, %68, %43
  %137 = load i64, i64* %12, align 8
  %138 = load %struct.npc_mcam_shift_entry_req*, %struct.npc_mcam_shift_entry_req** %6, align 8
  %139 = getelementptr inbounds %struct.npc_mcam_shift_entry_req, %struct.npc_mcam_shift_entry_req* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %137, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %136
  %143 = load i32, i32* @NPC_MCAM_PERM_DENIED, align 4
  store i32 %143, i32* %15, align 4
  %144 = load i64, i64* %12, align 8
  %145 = load %struct.npc_mcam_shift_entry_rsp*, %struct.npc_mcam_shift_entry_rsp** %7, align 8
  %146 = getelementptr inbounds %struct.npc_mcam_shift_entry_rsp, %struct.npc_mcam_shift_entry_rsp* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %142, %136
  %148 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %149 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %148, i32 0, i32 1
  %150 = call i32 @mutex_unlock(i32* %149)
  %151 = load i32, i32* %15, align 4
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %147, %37, %29
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @npc_mcam_verify_entry(%struct.npc_mcam*, i64, i64) #1

declare dso_local i32 @npc_enable_mcam_entry(%struct.rvu*, %struct.npc_mcam*, i32, i64, i32) #1

declare dso_local i32 @npc_copy_mcam_entry(%struct.rvu*, %struct.npc_mcam*, i32, i64, i64) #1

declare dso_local i32 @npc_unmap_mcam_entry_and_cntr(%struct.rvu*, %struct.npc_mcam*, i32, i64, i64) #1

declare dso_local i32 @npc_map_mcam_entry_and_cntr(%struct.rvu*, %struct.npc_mcam*, i32, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
