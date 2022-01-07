; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_rma_ep_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_rma_ep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_endpt = type { %struct.scif_endpt_rma_info }
%struct.scif_endpt_rma_info = type { i32, i32, i32, i32*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@SCIF_IOVA_START_PFN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_rma_ep_init(%struct.scif_endpt* %0) #0 {
  %2 = alloca %struct.scif_endpt*, align 8
  %3 = alloca %struct.scif_endpt_rma_info*, align 8
  store %struct.scif_endpt* %0, %struct.scif_endpt** %2, align 8
  %4 = load %struct.scif_endpt*, %struct.scif_endpt** %2, align 8
  %5 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %4, i32 0, i32 0
  store %struct.scif_endpt_rma_info* %5, %struct.scif_endpt_rma_info** %3, align 8
  %6 = load %struct.scif_endpt_rma_info*, %struct.scif_endpt_rma_info** %3, align 8
  %7 = getelementptr inbounds %struct.scif_endpt_rma_info, %struct.scif_endpt_rma_info* %6, i32 0, i32 14
  %8 = call i32 @mutex_init(i32* %7)
  %9 = load %struct.scif_endpt_rma_info*, %struct.scif_endpt_rma_info** %3, align 8
  %10 = getelementptr inbounds %struct.scif_endpt_rma_info, %struct.scif_endpt_rma_info* %9, i32 0, i32 13
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = load i32, i32* @SCIF_IOVA_START_PFN, align 4
  %13 = call i32 @init_iova_domain(i32* %10, i32 %11, i32 %12)
  %14 = load %struct.scif_endpt_rma_info*, %struct.scif_endpt_rma_info** %3, align 8
  %15 = getelementptr inbounds %struct.scif_endpt_rma_info, %struct.scif_endpt_rma_info* %14, i32 0, i32 12
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.scif_endpt_rma_info*, %struct.scif_endpt_rma_info** %3, align 8
  %18 = getelementptr inbounds %struct.scif_endpt_rma_info, %struct.scif_endpt_rma_info* %17, i32 0, i32 11
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.scif_endpt_rma_info*, %struct.scif_endpt_rma_info** %3, align 8
  %21 = getelementptr inbounds %struct.scif_endpt_rma_info, %struct.scif_endpt_rma_info* %20, i32 0, i32 10
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.scif_endpt_rma_info*, %struct.scif_endpt_rma_info** %3, align 8
  %24 = getelementptr inbounds %struct.scif_endpt_rma_info, %struct.scif_endpt_rma_info* %23, i32 0, i32 9
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.scif_endpt_rma_info*, %struct.scif_endpt_rma_info** %3, align 8
  %27 = getelementptr inbounds %struct.scif_endpt_rma_info, %struct.scif_endpt_rma_info* %26, i32 0, i32 8
  %28 = call i32 @atomic_set(i32* %27, i32 0)
  %29 = load %struct.scif_endpt_rma_info*, %struct.scif_endpt_rma_info** %3, align 8
  %30 = getelementptr inbounds %struct.scif_endpt_rma_info, %struct.scif_endpt_rma_info* %29, i32 0, i32 7
  %31 = call i32 @atomic_set(i32* %30, i32 0)
  %32 = load %struct.scif_endpt_rma_info*, %struct.scif_endpt_rma_info** %3, align 8
  %33 = getelementptr inbounds %struct.scif_endpt_rma_info, %struct.scif_endpt_rma_info* %32, i32 0, i32 6
  %34 = call i32 @atomic_set(i32* %33, i32 0)
  %35 = load %struct.scif_endpt_rma_info*, %struct.scif_endpt_rma_info** %3, align 8
  %36 = getelementptr inbounds %struct.scif_endpt_rma_info, %struct.scif_endpt_rma_info* %35, i32 0, i32 5
  %37 = call i32 @atomic_set(i32* %36, i32 0)
  %38 = load %struct.scif_endpt_rma_info*, %struct.scif_endpt_rma_info** %3, align 8
  %39 = getelementptr inbounds %struct.scif_endpt_rma_info, %struct.scif_endpt_rma_info* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load %struct.scif_endpt_rma_info*, %struct.scif_endpt_rma_info** %3, align 8
  %41 = getelementptr inbounds %struct.scif_endpt_rma_info, %struct.scif_endpt_rma_info* %40, i32 0, i32 3
  store i32* null, i32** %41, align 8
  %42 = load %struct.scif_endpt_rma_info*, %struct.scif_endpt_rma_info** %3, align 8
  %43 = getelementptr inbounds %struct.scif_endpt_rma_info, %struct.scif_endpt_rma_info* %42, i32 0, i32 2
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.scif_endpt_rma_info*, %struct.scif_endpt_rma_info** %3, align 8
  %46 = getelementptr inbounds %struct.scif_endpt_rma_info, %struct.scif_endpt_rma_info* %45, i32 0, i32 1
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.scif_endpt_rma_info*, %struct.scif_endpt_rma_info** %3, align 8
  %49 = getelementptr inbounds %struct.scif_endpt_rma_info, %struct.scif_endpt_rma_info* %48, i32 0, i32 0
  %50 = call i32 @init_waitqueue_head(i32* %49)
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_iova_domain(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
