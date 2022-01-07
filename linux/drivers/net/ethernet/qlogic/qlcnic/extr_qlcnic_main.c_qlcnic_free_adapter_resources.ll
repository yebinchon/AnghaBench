; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_free_adapter_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_free_adapter_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_6__*, %struct.TYPE_4__*, i32* }
%struct.TYPE_6__ = type { %struct.qlcnic_fw_dump, %struct.TYPE_5__ }
%struct.qlcnic_fw_dump = type { i32*, i32*, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@QLC_PEX_DMA_READ_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*)* @qlcnic_free_adapter_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_free_adapter_resources(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.qlcnic_fw_dump*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %4 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %4, i32 0, i32 0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store %struct.qlcnic_fw_dump* %7, %struct.qlcnic_fw_dump** %3, align 8
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @kfree(i32* %10)
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 2
  store i32* null, i32** %13, align 8
  %14 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %3, align 8
  %15 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %3, align 8
  %20 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @vfree(i32* %21)
  %23 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %3, align 8
  %24 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %18, %1
  %26 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %3, align 8
  %27 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* @QLC_PEX_DMA_READ_SIZE, align 4
  %36 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %3, align 8
  %37 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %3, align 8
  %40 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dma_free_coherent(i32* %34, i32 %35, i32* %38, i32 %41)
  %43 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %3, align 8
  %44 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %30, %25
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @kfree(i32* %51)
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %54 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  ret void
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
