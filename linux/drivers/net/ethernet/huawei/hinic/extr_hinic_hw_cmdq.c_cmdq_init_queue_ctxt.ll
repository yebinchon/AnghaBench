; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_cmdq_init_queue_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_cmdq_init_queue_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_cmdq_ctxt = type { i32, i32, %struct.hinic_cmdq_ctxt_info }
%struct.hinic_cmdq_ctxt_info = type { i32, i32 }
%struct.hinic_cmdq = type { i32, i32, %struct.hinic_wq* }
%struct.hinic_wq = type { i32, i32, i32* }
%struct.hinic_cmdq_pages = type { i32 }
%struct.hinic_cmdqs = type { i32 }

@CURR_WQE_PAGE_PFN = common dso_local global i32 0, align 4
@HINIC_CEQ_ID_CMDQ = common dso_local global i32 0, align 4
@EQ_ID = common dso_local global i32 0, align 4
@CEQ_ARM = common dso_local global i32 0, align 4
@CEQ_EN = common dso_local global i32 0, align 4
@WRAPPED = common dso_local global i32 0, align 4
@WQ_BLOCK_PFN = common dso_local global i32 0, align 4
@CI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_cmdq_ctxt*, %struct.hinic_cmdq*, %struct.hinic_cmdq_pages*)* @cmdq_init_queue_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmdq_init_queue_ctxt(%struct.hinic_cmdq_ctxt* %0, %struct.hinic_cmdq* %1, %struct.hinic_cmdq_pages* %2) #0 {
  %4 = alloca %struct.hinic_cmdq_ctxt*, align 8
  %5 = alloca %struct.hinic_cmdq*, align 8
  %6 = alloca %struct.hinic_cmdq_pages*, align 8
  %7 = alloca %struct.hinic_cmdq_ctxt_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hinic_cmdqs*, align 8
  %12 = alloca %struct.hinic_wq*, align 8
  store %struct.hinic_cmdq_ctxt* %0, %struct.hinic_cmdq_ctxt** %4, align 8
  store %struct.hinic_cmdq* %1, %struct.hinic_cmdq** %5, align 8
  store %struct.hinic_cmdq_pages* %2, %struct.hinic_cmdq_pages** %6, align 8
  %13 = load %struct.hinic_cmdq_ctxt*, %struct.hinic_cmdq_ctxt** %4, align 8
  %14 = getelementptr inbounds %struct.hinic_cmdq_ctxt, %struct.hinic_cmdq_ctxt* %13, i32 0, i32 2
  store %struct.hinic_cmdq_ctxt_info* %14, %struct.hinic_cmdq_ctxt_info** %7, align 8
  %15 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %5, align 8
  %16 = call %struct.hinic_cmdqs* @cmdq_to_cmdqs(%struct.hinic_cmdq* %15)
  store %struct.hinic_cmdqs* %16, %struct.hinic_cmdqs** %11, align 8
  %17 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %5, align 8
  %18 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %17, i32 0, i32 2
  %19 = load %struct.hinic_wq*, %struct.hinic_wq** %18, align 8
  store %struct.hinic_wq* %19, %struct.hinic_wq** %12, align 8
  %20 = load %struct.hinic_wq*, %struct.hinic_wq** %12, align 8
  %21 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @be64_to_cpu(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.hinic_wq*, %struct.hinic_wq** %12, align 8
  %27 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @CMDQ_PFN(i32 %25, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @CURR_WQE_PAGE_PFN, align 4
  %32 = call i32 @HINIC_CMDQ_CTXT_PAGE_INFO_SET(i32 %30, i32 %31)
  %33 = load i32, i32* @HINIC_CEQ_ID_CMDQ, align 4
  %34 = load i32, i32* @EQ_ID, align 4
  %35 = call i32 @HINIC_CMDQ_CTXT_PAGE_INFO_SET(i32 %33, i32 %34)
  %36 = or i32 %32, %35
  %37 = load i32, i32* @CEQ_ARM, align 4
  %38 = call i32 @HINIC_CMDQ_CTXT_PAGE_INFO_SET(i32 1, i32 %37)
  %39 = or i32 %36, %38
  %40 = load i32, i32* @CEQ_EN, align 4
  %41 = call i32 @HINIC_CMDQ_CTXT_PAGE_INFO_SET(i32 1, i32 %40)
  %42 = or i32 %39, %41
  %43 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %5, align 8
  %44 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @WRAPPED, align 4
  %47 = call i32 @HINIC_CMDQ_CTXT_PAGE_INFO_SET(i32 %45, i32 %46)
  %48 = or i32 %42, %47
  %49 = load %struct.hinic_cmdq_ctxt_info*, %struct.hinic_cmdq_ctxt_info** %7, align 8
  %50 = getelementptr inbounds %struct.hinic_cmdq_ctxt_info, %struct.hinic_cmdq_ctxt_info* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.hinic_cmdq_pages*, %struct.hinic_cmdq_pages** %6, align 8
  %52 = getelementptr inbounds %struct.hinic_cmdq_pages, %struct.hinic_cmdq_pages* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.hinic_wq*, %struct.hinic_wq** %12, align 8
  %56 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @CMDQ_PFN(i32 %54, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @WQ_BLOCK_PFN, align 4
  %61 = call i32 @HINIC_CMDQ_CTXT_BLOCK_INFO_SET(i32 %59, i32 %60)
  %62 = load %struct.hinic_wq*, %struct.hinic_wq** %12, align 8
  %63 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %62, i32 0, i32 0
  %64 = call i32 @atomic_read(i32* %63)
  %65 = load i32, i32* @CI, align 4
  %66 = call i32 @HINIC_CMDQ_CTXT_BLOCK_INFO_SET(i32 %64, i32 %65)
  %67 = or i32 %61, %66
  %68 = load %struct.hinic_cmdq_ctxt_info*, %struct.hinic_cmdq_ctxt_info** %7, align 8
  %69 = getelementptr inbounds %struct.hinic_cmdq_ctxt_info, %struct.hinic_cmdq_ctxt_info* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.hinic_cmdqs*, %struct.hinic_cmdqs** %11, align 8
  %71 = getelementptr inbounds %struct.hinic_cmdqs, %struct.hinic_cmdqs* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @HINIC_HWIF_FUNC_IDX(i32 %72)
  %74 = load %struct.hinic_cmdq_ctxt*, %struct.hinic_cmdq_ctxt** %4, align 8
  %75 = getelementptr inbounds %struct.hinic_cmdq_ctxt, %struct.hinic_cmdq_ctxt* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %5, align 8
  %77 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.hinic_cmdq_ctxt*, %struct.hinic_cmdq_ctxt** %4, align 8
  %80 = getelementptr inbounds %struct.hinic_cmdq_ctxt, %struct.hinic_cmdq_ctxt* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  ret void
}

declare dso_local %struct.hinic_cmdqs* @cmdq_to_cmdqs(%struct.hinic_cmdq*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @CMDQ_PFN(i32, i32) #1

declare dso_local i32 @HINIC_CMDQ_CTXT_PAGE_INFO_SET(i32, i32) #1

declare dso_local i32 @HINIC_CMDQ_CTXT_BLOCK_INFO_SET(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @HINIC_HWIF_FUNC_IDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
