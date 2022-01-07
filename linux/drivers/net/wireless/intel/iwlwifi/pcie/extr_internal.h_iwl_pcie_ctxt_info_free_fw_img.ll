; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_internal.h_iwl_pcie_ctxt_info_free_fw_img.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_internal.h_iwl_pcie_ctxt_info_free_fw_img.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32, %struct.iwl_self_init_dram }
%struct.iwl_self_init_dram = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*)* @iwl_pcie_ctxt_info_free_fw_img to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_ctxt_info_free_fw_img(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_self_init_dram*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %5 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %6 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %5, i32 0, i32 1
  store %struct.iwl_self_init_dram* %6, %struct.iwl_self_init_dram** %3, align 8
  %7 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %3, align 8
  %8 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @WARN_ON(i32 %14)
  br label %64

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %52, %16
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %3, align 8
  %20 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %17
  %24 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %25 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %3, align 8
  %28 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %3, align 8
  %36 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %3, align 8
  %44 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dma_free_coherent(i32 %26, i32 %34, i32 %42, i32 %50)
  br label %52

52:                                               ; preds = %23
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %17

55:                                               ; preds = %17
  %56 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %3, align 8
  %57 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = call i32 @kfree(%struct.TYPE_2__* %58)
  %60 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %3, align 8
  %61 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %3, align 8
  %63 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %62, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %63, align 8
  br label %64

64:                                               ; preds = %55, %11
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
