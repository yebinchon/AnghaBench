; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_aq_enqueue_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_aq_enqueue_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.rvu_block = type { i32, %struct.admin_queue* }
%struct.admin_queue = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.nix_aq_inst_s = type { i32 }
%struct.nix_aq_res_s = type { i64 }

@NIX_AF_AQ_STATUS = common dso_local global i32 0, align 4
@AQ_PTR_MASK = common dso_local global i32 0, align 4
@NIX_AF_AQ_DOOR = common dso_local global i32 0, align 4
@NIX_AQ_COMP_NOTDONE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@NIX_AQ_COMP_GOOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, %struct.rvu_block*, %struct.nix_aq_inst_s*)* @nix_aq_enqueue_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nix_aq_enqueue_wait(%struct.rvu* %0, %struct.rvu_block* %1, %struct.nix_aq_inst_s* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.rvu_block*, align 8
  %7 = alloca %struct.nix_aq_inst_s*, align 8
  %8 = alloca %struct.admin_queue*, align 8
  %9 = alloca %struct.nix_aq_res_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.rvu_block* %1, %struct.rvu_block** %6, align 8
  store %struct.nix_aq_inst_s* %2, %struct.nix_aq_inst_s** %7, align 8
  %13 = load %struct.rvu_block*, %struct.rvu_block** %6, align 8
  %14 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %13, i32 0, i32 1
  %15 = load %struct.admin_queue*, %struct.admin_queue** %14, align 8
  store %struct.admin_queue* %15, %struct.admin_queue** %8, align 8
  store i32 1000, i32* %10, align 4
  %16 = load %struct.admin_queue*, %struct.admin_queue** %8, align 8
  %17 = getelementptr inbounds %struct.admin_queue, %struct.admin_queue* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.nix_aq_res_s*
  store %struct.nix_aq_res_s* %21, %struct.nix_aq_res_s** %9, align 8
  %22 = load %struct.rvu*, %struct.rvu** %5, align 8
  %23 = load %struct.rvu_block*, %struct.rvu_block** %6, align 8
  %24 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @NIX_AF_AQ_STATUS, align 4
  %27 = call i32 @rvu_read64(%struct.rvu* %22, i32 %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = ashr i32 %28, 4
  %30 = load i32, i32* @AQ_PTR_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load %struct.admin_queue*, %struct.admin_queue** %8, align 8
  %33 = getelementptr inbounds %struct.admin_queue, %struct.admin_queue* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.admin_queue*, %struct.admin_queue** %8, align 8
  %39 = getelementptr inbounds %struct.admin_queue, %struct.admin_queue* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %37, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %36, %44
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.nix_aq_inst_s*, %struct.nix_aq_inst_s** %7, align 8
  %48 = bitcast %struct.nix_aq_inst_s* %47 to i8*
  %49 = load %struct.admin_queue*, %struct.admin_queue** %8, align 8
  %50 = getelementptr inbounds %struct.admin_queue, %struct.admin_queue* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @memcpy(i8* %46, i8* %48, i32 %53)
  %55 = load %struct.nix_aq_res_s*, %struct.nix_aq_res_s** %9, align 8
  %56 = call i32 @memset(%struct.nix_aq_res_s* %55, i32 0, i32 8)
  %57 = call i32 (...) @wmb()
  %58 = load %struct.rvu*, %struct.rvu** %5, align 8
  %59 = load %struct.rvu_block*, %struct.rvu_block** %6, align 8
  %60 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @NIX_AF_AQ_DOOR, align 4
  %63 = call i32 @rvu_write64(%struct.rvu* %58, i32 %61, i32 %62, i32 1)
  br label %64

64:                                               ; preds = %80, %3
  %65 = load %struct.nix_aq_res_s*, %struct.nix_aq_res_s** %9, align 8
  %66 = getelementptr inbounds %struct.nix_aq_res_s, %struct.nix_aq_res_s* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NIX_AQ_COMP_NOTDONE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = call i32 (...) @cpu_relax()
  %72 = call i32 @udelay(i32 1)
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* @EBUSY, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %91

80:                                               ; preds = %70
  br label %64

81:                                               ; preds = %64
  %82 = load %struct.nix_aq_res_s*, %struct.nix_aq_res_s** %9, align 8
  %83 = getelementptr inbounds %struct.nix_aq_res_s, %struct.nix_aq_res_s* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NIX_AQ_COMP_GOOD, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @EBUSY, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %91

90:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %87, %77
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(%struct.nix_aq_res_s*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
