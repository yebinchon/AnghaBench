; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_if.c_set_hwif_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_if.c_set_hwif_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_hwif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@FUNC_IDX = common dso_local global i32 0, align 4
@PF_IDX = common dso_local global i32 0, align 4
@PCI_INTF_IDX = common dso_local global i32 0, align 4
@FUNC_TYPE = common dso_local global i32 0, align 4
@AEQS_PER_FUNC = common dso_local global i32 0, align 4
@CEQS_PER_FUNC = common dso_local global i32 0, align 4
@IRQS_PER_FUNC = common dso_local global i32 0, align 4
@DMA_ATTR_PER_FUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_hwif*, i32, i32)* @set_hwif_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_hwif_attr(%struct.hinic_hwif* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hinic_hwif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hinic_hwif* %0, %struct.hinic_hwif** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @FUNC_IDX, align 4
  %9 = call i8* @HINIC_FA0_GET(i32 %7, i32 %8)
  %10 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %11 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 7
  store i8* %9, i8** %12, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @PF_IDX, align 4
  %15 = call i8* @HINIC_FA0_GET(i32 %13, i32 %14)
  %16 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %17 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 6
  store i8* %15, i8** %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PCI_INTF_IDX, align 4
  %21 = call i8* @HINIC_FA0_GET(i32 %19, i32 %20)
  %22 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %23 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  store i8* %21, i8** %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @FUNC_TYPE, align 4
  %27 = call i8* @HINIC_FA0_GET(i32 %25, i32 %26)
  %28 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %29 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  store i8* %27, i8** %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @AEQS_PER_FUNC, align 4
  %33 = call i32 @HINIC_FA1_GET(i32 %31, i32 %32)
  %34 = call i8* @BIT(i32 %33)
  %35 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %36 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  store i8* %34, i8** %37, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @CEQS_PER_FUNC, align 4
  %40 = call i32 @HINIC_FA1_GET(i32 %38, i32 %39)
  %41 = call i8* @BIT(i32 %40)
  %42 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %43 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i8* %41, i8** %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @IRQS_PER_FUNC, align 4
  %47 = call i32 @HINIC_FA1_GET(i32 %45, i32 %46)
  %48 = call i8* @BIT(i32 %47)
  %49 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %50 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i8* %48, i8** %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @DMA_ATTR_PER_FUNC, align 4
  %54 = call i32 @HINIC_FA1_GET(i32 %52, i32 %53)
  %55 = call i8* @BIT(i32 %54)
  %56 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %57 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  ret void
}

declare dso_local i8* @HINIC_FA0_GET(i32, i32) #1

declare dso_local i8* @BIT(i32) #1

declare dso_local i32 @HINIC_FA1_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
