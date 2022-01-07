; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_setup_mce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_setup_mce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.nix_aq_enq_req = type { i32, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@NIX_AQ_CTYPE_MCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to setup Bcast MCE for PF%d:VF%d\0A\00", align 1
@RVU_PFVF_FUNC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, i32, i32, i32, i32, i32)* @nix_setup_mce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nix_setup_mce(%struct.rvu* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rvu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nix_aq_enq_req, align 8
  %15 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = getelementptr inbounds %struct.nix_aq_enq_req, %struct.nix_aq_enq_req* %14, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @NIX_AQ_CTYPE_MCE, align 4
  %19 = getelementptr inbounds %struct.nix_aq_enq_req, %struct.nix_aq_enq_req* %14, i32 0, i32 4
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %10, align 4
  %21 = getelementptr inbounds %struct.nix_aq_enq_req, %struct.nix_aq_enq_req* %14, i32 0, i32 3
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds %struct.nix_aq_enq_req, %struct.nix_aq_enq_req* %14, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.nix_aq_enq_req, %struct.nix_aq_enq_req* %14, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.nix_aq_enq_req, %struct.nix_aq_enq_req* %14, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* %13, align 4
  %29 = getelementptr inbounds %struct.nix_aq_enq_req, %struct.nix_aq_enq_req* %14, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %11, align 4
  %32 = getelementptr inbounds %struct.nix_aq_enq_req, %struct.nix_aq_enq_req* %14, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %12, align 4
  %35 = getelementptr inbounds %struct.nix_aq_enq_req, %struct.nix_aq_enq_req* %14, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = getelementptr inbounds %struct.nix_aq_enq_req, %struct.nix_aq_enq_req* %14, i32 0, i32 1
  %38 = bitcast i32* %37 to i64*
  store i64 -1, i64* %38, align 4
  %39 = load %struct.rvu*, %struct.rvu** %8, align 8
  %40 = call i32 @rvu_nix_aq_enq_inst(%struct.rvu* %39, %struct.nix_aq_enq_req* %14, i32* null)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %6
  %44 = load %struct.rvu*, %struct.rvu** %8, align 8
  %45 = getelementptr inbounds %struct.rvu, %struct.rvu* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @rvu_get_pf(i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @RVU_PFVF_FUNC_MASK, align 4
  %51 = and i32 %49, %50
  %52 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51)
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %7, align 4
  br label %55

54:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %43
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @rvu_nix_aq_enq_inst(%struct.rvu*, %struct.nix_aq_enq_req*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @rvu_get_pf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
