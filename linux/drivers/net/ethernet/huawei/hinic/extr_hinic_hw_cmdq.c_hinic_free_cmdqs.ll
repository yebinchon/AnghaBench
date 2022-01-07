; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_hinic_free_cmdqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_hinic_free_cmdqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_cmdqs = type { i32, i32, i32, i32*, %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_func_to_io = type { i32 }

@HINIC_CEQ_CMDQ = common dso_local global i32 0, align 4
@HINIC_CMDQ_SYNC = common dso_local global i32 0, align 4
@HINIC_MAX_CMDQ_TYPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hinic_free_cmdqs(%struct.hinic_cmdqs* %0) #0 {
  %2 = alloca %struct.hinic_cmdqs*, align 8
  %3 = alloca %struct.hinic_func_to_io*, align 8
  %4 = alloca %struct.hinic_hwif*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.hinic_cmdqs* %0, %struct.hinic_cmdqs** %2, align 8
  %7 = load %struct.hinic_cmdqs*, %struct.hinic_cmdqs** %2, align 8
  %8 = call %struct.hinic_func_to_io* @cmdqs_to_func_to_io(%struct.hinic_cmdqs* %7)
  store %struct.hinic_func_to_io* %8, %struct.hinic_func_to_io** %3, align 8
  %9 = load %struct.hinic_cmdqs*, %struct.hinic_cmdqs** %2, align 8
  %10 = getelementptr inbounds %struct.hinic_cmdqs, %struct.hinic_cmdqs* %9, i32 0, i32 4
  %11 = load %struct.hinic_hwif*, %struct.hinic_hwif** %10, align 8
  store %struct.hinic_hwif* %11, %struct.hinic_hwif** %4, align 8
  %12 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %13 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %5, align 8
  %15 = load %struct.hinic_func_to_io*, %struct.hinic_func_to_io** %3, align 8
  %16 = getelementptr inbounds %struct.hinic_func_to_io, %struct.hinic_func_to_io* %15, i32 0, i32 0
  %17 = load i32, i32* @HINIC_CEQ_CMDQ, align 4
  %18 = call i32 @hinic_ceq_unregister_cb(i32* %16, i32 %17)
  %19 = load i32, i32* @HINIC_CMDQ_SYNC, align 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %32, %1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @HINIC_MAX_CMDQ_TYPES, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.hinic_cmdqs*, %struct.hinic_cmdqs** %2, align 8
  %26 = getelementptr inbounds %struct.hinic_cmdqs, %struct.hinic_cmdqs* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @free_cmdq(i32* %30)
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %20

35:                                               ; preds = %20
  %36 = load %struct.hinic_cmdqs*, %struct.hinic_cmdqs** %2, align 8
  %37 = getelementptr inbounds %struct.hinic_cmdqs, %struct.hinic_cmdqs* %36, i32 0, i32 2
  %38 = load %struct.hinic_cmdqs*, %struct.hinic_cmdqs** %2, align 8
  %39 = getelementptr inbounds %struct.hinic_cmdqs, %struct.hinic_cmdqs* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @HINIC_MAX_CMDQ_TYPES, align 4
  %42 = call i32 @hinic_wqs_cmdq_free(i32* %37, i32 %40, i32 %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = load %struct.hinic_cmdqs*, %struct.hinic_cmdqs** %2, align 8
  %46 = getelementptr inbounds %struct.hinic_cmdqs, %struct.hinic_cmdqs* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @devm_kfree(i32* %44, i32 %47)
  %49 = load %struct.hinic_cmdqs*, %struct.hinic_cmdqs** %2, align 8
  %50 = getelementptr inbounds %struct.hinic_cmdqs, %struct.hinic_cmdqs* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dma_pool_destroy(i32 %51)
  ret void
}

declare dso_local %struct.hinic_func_to_io* @cmdqs_to_func_to_io(%struct.hinic_cmdqs*) #1

declare dso_local i32 @hinic_ceq_unregister_cb(i32*, i32) #1

declare dso_local i32 @free_cmdq(i32*) #1

declare dso_local i32 @hinic_wqs_cmdq_free(i32*, i32, i32) #1

declare dso_local i32 @devm_kfree(i32*, i32) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
