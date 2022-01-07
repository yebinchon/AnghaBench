; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_mbox_handler_vf_flr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_mbox_handler_vf_flr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.msg_req = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.msg_rsp = type { i32 }

@RVU_PFVF_FUNC_MASK = common dso_local global i32 0, align 4
@BLKADDR_RVUM = common dso_local global i32 0, align 4
@RVU_INVALID_VF_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, %struct.msg_req*, %struct.msg_rsp*)* @rvu_mbox_handler_vf_flr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvu_mbox_handler_vf_flr(%struct.rvu* %0, %struct.msg_req* %1, %struct.msg_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.msg_req*, align 8
  %7 = alloca %struct.msg_rsp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.msg_req* %1, %struct.msg_req** %6, align 8
  store %struct.msg_rsp* %2, %struct.msg_rsp** %7, align 8
  %12 = load %struct.msg_req*, %struct.msg_req** %6, align 8
  %13 = getelementptr inbounds %struct.msg_req, %struct.msg_req* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @RVU_PFVF_FUNC_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.rvu*, %struct.rvu** %5, align 8
  %20 = load i32, i32* @BLKADDR_RVUM, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @rvu_get_pf(i32 %21)
  %23 = call i32 @RVU_PRIV_PFX_CFG(i32 %22)
  %24 = call i32 @rvu_read64(%struct.rvu* %19, i32 %20, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = ashr i32 %25, 12
  %27 = and i32 %26, 255
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.rvu*, %struct.rvu** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @__rvu_flr_handler(%struct.rvu* %35, i32 %36)
  br label %40

38:                                               ; preds = %30, %3
  %39 = load i32, i32* @RVU_INVALID_VF_ID, align 4
  store i32 %39, i32* %4, align 4
  br label %41

40:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %38
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @RVU_PRIV_PFX_CFG(i32) #1

declare dso_local i32 @rvu_get_pf(i32) #1

declare dso_local i32 @__rvu_flr_handler(%struct.rvu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
