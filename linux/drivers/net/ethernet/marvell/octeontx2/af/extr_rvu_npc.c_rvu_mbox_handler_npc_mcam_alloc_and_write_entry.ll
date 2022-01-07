; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_mbox_handler_npc_mcam_alloc_and_write_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_mbox_handler_npc_mcam_alloc_and_write_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.npc_mcam }
%struct.npc_mcam = type { i32, i64* }
%struct.npc_mcam_alloc_and_write_entry_req = type { i64, i32, i32, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.npc_mcam_alloc_and_write_entry_rsp = type { i64, i64 }
%struct.npc_mcam_alloc_counter_req = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.npc_mcam_alloc_counter_rsp = type { i64 }
%struct.npc_mcam_alloc_entry_req = type { i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.npc_mcam_alloc_entry_rsp = type { i64, i32 }

@NPC_MCAM_ENTRY_INVALID = common dso_local global i64 0, align 8
@BLKTYPE_NPC = common dso_local global i32 0, align 4
@NPC_MCAM_INVALID_REQ = common dso_local global i32 0, align 4
@NIX_INTF_RX = common dso_local global i32 0, align 4
@NIX_INTF_TX = common dso_local global i32 0, align 4
@NPC_MCAM_ALLOC_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_npc_mcam_alloc_and_write_entry(%struct.rvu* %0, %struct.npc_mcam_alloc_and_write_entry_req* %1, %struct.npc_mcam_alloc_and_write_entry_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.npc_mcam_alloc_and_write_entry_req*, align 8
  %7 = alloca %struct.npc_mcam_alloc_and_write_entry_rsp*, align 8
  %8 = alloca %struct.npc_mcam_alloc_counter_req, align 4
  %9 = alloca %struct.npc_mcam_alloc_counter_rsp, align 8
  %10 = alloca %struct.npc_mcam_alloc_entry_req, align 4
  %11 = alloca %struct.npc_mcam_alloc_entry_rsp, align 8
  %12 = alloca %struct.npc_mcam*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.npc_mcam_alloc_and_write_entry_req* %1, %struct.npc_mcam_alloc_and_write_entry_req** %6, align 8
  store %struct.npc_mcam_alloc_and_write_entry_rsp* %2, %struct.npc_mcam_alloc_and_write_entry_rsp** %7, align 8
  %17 = load %struct.rvu*, %struct.rvu** %5, align 8
  %18 = getelementptr inbounds %struct.rvu, %struct.rvu* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store %struct.npc_mcam* %20, %struct.npc_mcam** %12, align 8
  %21 = load i64, i64* @NPC_MCAM_ENTRY_INVALID, align 8
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* @NPC_MCAM_ENTRY_INVALID, align 8
  store i64 %22, i64* %14, align 8
  %23 = load %struct.rvu*, %struct.rvu** %5, align 8
  %24 = load i32, i32* @BLKTYPE_NPC, align 4
  %25 = call i32 @rvu_get_blkaddr(%struct.rvu* %23, i32 %24, i32 0)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @NPC_MCAM_INVALID_REQ, align 4
  store i32 %29, i32* %4, align 4
  br label %151

30:                                               ; preds = %3
  %31 = load %struct.npc_mcam_alloc_and_write_entry_req*, %struct.npc_mcam_alloc_and_write_entry_req** %6, align 8
  %32 = getelementptr inbounds %struct.npc_mcam_alloc_and_write_entry_req, %struct.npc_mcam_alloc_and_write_entry_req* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @NIX_INTF_RX, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.npc_mcam_alloc_and_write_entry_req*, %struct.npc_mcam_alloc_and_write_entry_req** %6, align 8
  %38 = getelementptr inbounds %struct.npc_mcam_alloc_and_write_entry_req, %struct.npc_mcam_alloc_and_write_entry_req* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @NIX_INTF_TX, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @NPC_MCAM_INVALID_REQ, align 4
  store i32 %43, i32* %4, align 4
  br label %151

44:                                               ; preds = %36, %30
  %45 = load %struct.npc_mcam_alloc_and_write_entry_req*, %struct.npc_mcam_alloc_and_write_entry_req** %6, align 8
  %46 = getelementptr inbounds %struct.npc_mcam_alloc_and_write_entry_req, %struct.npc_mcam_alloc_and_write_entry_req* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %10, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %10, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load %struct.npc_mcam_alloc_and_write_entry_req*, %struct.npc_mcam_alloc_and_write_entry_req** %6, align 8
  %53 = getelementptr inbounds %struct.npc_mcam_alloc_and_write_entry_req, %struct.npc_mcam_alloc_and_write_entry_req* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %10, i32 0, i32 3
  store i32 %54, i32* %55, align 4
  %56 = load %struct.npc_mcam_alloc_and_write_entry_req*, %struct.npc_mcam_alloc_and_write_entry_req** %6, align 8
  %57 = getelementptr inbounds %struct.npc_mcam_alloc_and_write_entry_req, %struct.npc_mcam_alloc_and_write_entry_req* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %10, i32 0, i32 2
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %10, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = load %struct.rvu*, %struct.rvu** %5, align 8
  %62 = call i32 @rvu_mbox_handler_npc_mcam_alloc_entry(%struct.rvu* %61, %struct.npc_mcam_alloc_entry_req* %10, %struct.npc_mcam_alloc_entry_rsp* %11)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %44
  %66 = load i32, i32* %16, align 4
  store i32 %66, i32* %4, align 4
  br label %151

67:                                               ; preds = %44
  %68 = getelementptr inbounds %struct.npc_mcam_alloc_entry_rsp, %struct.npc_mcam_alloc_entry_rsp* %11, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @NPC_MCAM_ALLOC_FAILED, align 4
  store i32 %72, i32* %4, align 4
  br label %151

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.npc_mcam_alloc_entry_rsp, %struct.npc_mcam_alloc_entry_rsp* %11, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %13, align 8
  %76 = load %struct.npc_mcam_alloc_and_write_entry_req*, %struct.npc_mcam_alloc_and_write_entry_req** %6, align 8
  %77 = getelementptr inbounds %struct.npc_mcam_alloc_and_write_entry_req, %struct.npc_mcam_alloc_and_write_entry_req* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  br label %113

81:                                               ; preds = %73
  %82 = load %struct.npc_mcam_alloc_and_write_entry_req*, %struct.npc_mcam_alloc_and_write_entry_req** %6, align 8
  %83 = getelementptr inbounds %struct.npc_mcam_alloc_and_write_entry_req, %struct.npc_mcam_alloc_and_write_entry_req* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.npc_mcam_alloc_counter_req, %struct.npc_mcam_alloc_counter_req* %8, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = getelementptr inbounds %struct.npc_mcam_alloc_counter_req, %struct.npc_mcam_alloc_counter_req* %8, i32 0, i32 0
  store i32 1, i32* %88, align 4
  %89 = getelementptr inbounds %struct.npc_mcam_alloc_counter_req, %struct.npc_mcam_alloc_counter_req* %8, i32 0, i32 1
  store i32 1, i32* %89, align 4
  %90 = load %struct.rvu*, %struct.rvu** %5, align 8
  %91 = call i32 @rvu_mbox_handler_npc_mcam_alloc_counter(%struct.rvu* %90, %struct.npc_mcam_alloc_counter_req* %8, %struct.npc_mcam_alloc_counter_rsp* %9)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %81
  %95 = load %struct.npc_mcam*, %struct.npc_mcam** %12, align 8
  %96 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %95, i32 0, i32 0
  %97 = call i32 @mutex_lock(i32* %96)
  %98 = load %struct.npc_mcam*, %struct.npc_mcam** %12, align 8
  %99 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %98, i32 0, i32 1
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* %13, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  store i64 0, i64* %102, align 8
  %103 = load %struct.npc_mcam*, %struct.npc_mcam** %12, align 8
  %104 = load i64, i64* %13, align 8
  %105 = call i32 @npc_mcam_clear_bit(%struct.npc_mcam* %103, i64 %104)
  %106 = load %struct.npc_mcam*, %struct.npc_mcam** %12, align 8
  %107 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load i32, i32* %16, align 4
  store i32 %109, i32* %4, align 4
  br label %151

110:                                              ; preds = %81
  %111 = getelementptr inbounds %struct.npc_mcam_alloc_counter_rsp, %struct.npc_mcam_alloc_counter_rsp* %9, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %14, align 8
  br label %113

113:                                              ; preds = %110, %80
  %114 = load %struct.npc_mcam*, %struct.npc_mcam** %12, align 8
  %115 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %114, i32 0, i32 0
  %116 = call i32 @mutex_lock(i32* %115)
  %117 = load %struct.rvu*, %struct.rvu** %5, align 8
  %118 = load %struct.npc_mcam*, %struct.npc_mcam** %12, align 8
  %119 = load i32, i32* %15, align 4
  %120 = load i64, i64* %13, align 8
  %121 = load %struct.npc_mcam_alloc_and_write_entry_req*, %struct.npc_mcam_alloc_and_write_entry_req** %6, align 8
  %122 = getelementptr inbounds %struct.npc_mcam_alloc_and_write_entry_req, %struct.npc_mcam_alloc_and_write_entry_req* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.npc_mcam_alloc_and_write_entry_req*, %struct.npc_mcam_alloc_and_write_entry_req** %6, align 8
  %125 = getelementptr inbounds %struct.npc_mcam_alloc_and_write_entry_req, %struct.npc_mcam_alloc_and_write_entry_req* %124, i32 0, i32 2
  %126 = load %struct.npc_mcam_alloc_and_write_entry_req*, %struct.npc_mcam_alloc_and_write_entry_req** %6, align 8
  %127 = getelementptr inbounds %struct.npc_mcam_alloc_and_write_entry_req, %struct.npc_mcam_alloc_and_write_entry_req* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @npc_config_mcam_entry(%struct.rvu* %117, %struct.npc_mcam* %118, i32 %119, i64 %120, i32 %123, i32* %125, i32 %128)
  %130 = load %struct.npc_mcam_alloc_and_write_entry_req*, %struct.npc_mcam_alloc_and_write_entry_req** %6, align 8
  %131 = getelementptr inbounds %struct.npc_mcam_alloc_and_write_entry_req, %struct.npc_mcam_alloc_and_write_entry_req* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %113
  %135 = load %struct.rvu*, %struct.rvu** %5, align 8
  %136 = load %struct.npc_mcam*, %struct.npc_mcam** %12, align 8
  %137 = load i32, i32* %15, align 4
  %138 = load i64, i64* %13, align 8
  %139 = load i64, i64* %14, align 8
  %140 = call i32 @npc_map_mcam_entry_and_cntr(%struct.rvu* %135, %struct.npc_mcam* %136, i32 %137, i64 %138, i64 %139)
  br label %141

141:                                              ; preds = %134, %113
  %142 = load %struct.npc_mcam*, %struct.npc_mcam** %12, align 8
  %143 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %142, i32 0, i32 0
  %144 = call i32 @mutex_unlock(i32* %143)
  %145 = load i64, i64* %13, align 8
  %146 = load %struct.npc_mcam_alloc_and_write_entry_rsp*, %struct.npc_mcam_alloc_and_write_entry_rsp** %7, align 8
  %147 = getelementptr inbounds %struct.npc_mcam_alloc_and_write_entry_rsp, %struct.npc_mcam_alloc_and_write_entry_rsp* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  %148 = load i64, i64* %14, align 8
  %149 = load %struct.npc_mcam_alloc_and_write_entry_rsp*, %struct.npc_mcam_alloc_and_write_entry_rsp** %7, align 8
  %150 = getelementptr inbounds %struct.npc_mcam_alloc_and_write_entry_rsp, %struct.npc_mcam_alloc_and_write_entry_rsp* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  store i32 0, i32* %4, align 4
  br label %151

151:                                              ; preds = %141, %94, %71, %65, %42, %28
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_mbox_handler_npc_mcam_alloc_entry(%struct.rvu*, %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_rsp*) #1

declare dso_local i32 @rvu_mbox_handler_npc_mcam_alloc_counter(%struct.rvu*, %struct.npc_mcam_alloc_counter_req*, %struct.npc_mcam_alloc_counter_rsp*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @npc_mcam_clear_bit(%struct.npc_mcam*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @npc_config_mcam_entry(%struct.rvu*, %struct.npc_mcam*, i32, i64, i32, i32*, i32) #1

declare dso_local i32 @npc_map_mcam_entry_and_cntr(%struct.rvu*, %struct.npc_mcam*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
