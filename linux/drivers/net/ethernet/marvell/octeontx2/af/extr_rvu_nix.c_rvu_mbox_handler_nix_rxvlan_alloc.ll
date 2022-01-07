; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_rxvlan_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_rxvlan_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.msg_req = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.msg_rsp = type { i32 }
%struct.npc_mcam_alloc_entry_req = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.npc_mcam_alloc_entry_rsp = type { i32* }
%struct.npc_mcam_free_entry_req = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }
%struct.rvu_pfvf = type { i32, i32 }

@BLKTYPE_NIX = common dso_local global i32 0, align 4
@NIX_AF_ERR_AF_LF_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_nix_rxvlan_alloc(%struct.rvu* %0, %struct.msg_req* %1, %struct.msg_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.msg_req*, align 8
  %7 = alloca %struct.msg_rsp*, align 8
  %8 = alloca %struct.npc_mcam_alloc_entry_req, align 8
  %9 = alloca %struct.npc_mcam_alloc_entry_rsp, align 8
  %10 = alloca %struct.npc_mcam_free_entry_req, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rvu_pfvf*, align 8
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.msg_req* %1, %struct.msg_req** %6, align 8
  store %struct.msg_rsp* %2, %struct.msg_rsp** %7, align 8
  %16 = bitcast %struct.npc_mcam_alloc_entry_req* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = bitcast %struct.npc_mcam_alloc_entry_rsp* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 8, i1 false)
  %18 = bitcast %struct.npc_mcam_free_entry_req* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  %19 = load %struct.msg_req*, %struct.msg_req** %6, align 8
  %20 = getelementptr inbounds %struct.msg_req, %struct.msg_req* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = call i64 @is_afvf(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %104

27:                                               ; preds = %3
  %28 = load %struct.rvu*, %struct.rvu** %5, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = call %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu* %28, i8* %29)
  store %struct.rvu_pfvf* %30, %struct.rvu_pfvf** %15, align 8
  %31 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %15, align 8
  %32 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %104

36:                                               ; preds = %27
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %8, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %8, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.rvu*, %struct.rvu** %5, align 8
  %42 = call i32 @rvu_mbox_handler_npc_mcam_alloc_entry(%struct.rvu* %41, %struct.npc_mcam_alloc_entry_req* %8, %struct.npc_mcam_alloc_entry_rsp* %9)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %4, align 4
  br label %104

47:                                               ; preds = %36
  %48 = load %struct.rvu*, %struct.rvu** %5, align 8
  %49 = load i32, i32* @BLKTYPE_NIX, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @rvu_get_blkaddr(%struct.rvu* %48, i32 %49, i8* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %55, i32* %14, align 4
  br label %89

56:                                               ; preds = %47
  %57 = load %struct.rvu*, %struct.rvu** %5, align 8
  %58 = load %struct.rvu*, %struct.rvu** %5, align 8
  %59 = getelementptr inbounds %struct.rvu, %struct.rvu* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 @rvu_get_lf(%struct.rvu* %57, i32* %65, i8* %66, i32 0)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %56
  %71 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %71, i32* %14, align 4
  br label %89

72:                                               ; preds = %56
  %73 = getelementptr inbounds %struct.npc_mcam_alloc_entry_rsp, %struct.npc_mcam_alloc_entry_rsp* %9, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %15, align 8
  %78 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %15, align 8
  %80 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  %81 = load %struct.rvu*, %struct.rvu** %5, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @rvu_npc_update_rxvlan(%struct.rvu* %81, i8* %82, i32 %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %72
  br label %89

88:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %104

89:                                               ; preds = %87, %70, %54
  %90 = load i8*, i8** %11, align 8
  %91 = getelementptr inbounds %struct.npc_mcam_free_entry_req, %struct.npc_mcam_free_entry_req* %10, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = getelementptr inbounds %struct.npc_mcam_alloc_entry_rsp, %struct.npc_mcam_alloc_entry_rsp* %9, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.npc_mcam_free_entry_req, %struct.npc_mcam_free_entry_req* %10, i32 0, i32 0
  store i32 %96, i32* %97, align 8
  %98 = load %struct.rvu*, %struct.rvu** %5, align 8
  %99 = load %struct.msg_rsp*, %struct.msg_rsp** %7, align 8
  %100 = call i32 @rvu_mbox_handler_npc_mcam_free_entry(%struct.rvu* %98, %struct.npc_mcam_free_entry_req* %10, %struct.msg_rsp* %99)
  %101 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %15, align 8
  %102 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %101, i32 0, i32 0
  store i32 0, i32* %102, align 4
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %89, %88, %45, %35, %26
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @is_afvf(i8*) #2

declare dso_local %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu*, i8*) #2

declare dso_local i32 @rvu_mbox_handler_npc_mcam_alloc_entry(%struct.rvu*, %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_rsp*) #2

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i8*) #2

declare dso_local i32 @rvu_get_lf(%struct.rvu*, i32*, i8*, i32) #2

declare dso_local i32 @rvu_npc_update_rxvlan(%struct.rvu*, i8*, i32) #2

declare dso_local i32 @rvu_mbox_handler_npc_mcam_free_entry(%struct.rvu*, %struct.npc_mcam_free_entry_req*, %struct.msg_rsp*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
