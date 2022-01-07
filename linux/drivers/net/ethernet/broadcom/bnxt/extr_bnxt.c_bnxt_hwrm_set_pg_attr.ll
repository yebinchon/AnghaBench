; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_set_pg_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_set_pg_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_ring_mem_info = type { i32, i32*, i32 }

@BNXT_PAGE_SHIFT = common dso_local global i32 0, align 4
@BNXT_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_ring_mem_info*, i32*, i32*)* @bnxt_hwrm_set_pg_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_hwrm_set_pg_attr(%struct.bnxt_ring_mem_info* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.bnxt_ring_mem_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.bnxt_ring_mem_info* %0, %struct.bnxt_ring_mem_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @BNXT_PAGE_SHIFT, align 4
  %9 = icmp eq i32 %8, 13
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 16, i32* %7, align 4
  br label %16

11:                                               ; preds = %3
  %12 = load i32, i32* @BNXT_PAGE_SIZE, align 4
  %13 = icmp eq i32 %12, 16
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 32, i32* %7, align 4
  br label %15

15:                                               ; preds = %14, %11
  br label %16

16:                                               ; preds = %15, %10
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  %19 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %20 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %21, 1
  br i1 %22, label %23, label %42

23:                                               ; preds = %16
  %24 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %25 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, 2
  store i32 %31, i32* %29, align 4
  br label %36

32:                                               ; preds = %23
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %38 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @cpu_to_le64(i32 %39)
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  br label %50

42:                                               ; preds = %16
  %43 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %44 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cpu_to_le64(i32 %47)
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %42, %36
  ret void
}

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
