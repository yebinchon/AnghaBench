; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_get_misc_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_get_misc_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { i32, i32, i32*, i64*, %struct.TYPE_2__, i32, %struct.hclgevf_misc_vector }
%struct.TYPE_2__ = type { i64 }
%struct.hclgevf_misc_vector = type { i32, i64 }

@HCLGEVF_MISC_VECTOR_NUM = common dso_local global i64 0, align 8
@HCLGEVF_MISC_VECTOR_REG_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclgevf_dev*)* @hclgevf_get_misc_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclgevf_get_misc_vector(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca %struct.hclgevf_dev*, align 8
  %3 = alloca %struct.hclgevf_misc_vector*, align 8
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %2, align 8
  %4 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %5 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %4, i32 0, i32 6
  store %struct.hclgevf_misc_vector* %5, %struct.hclgevf_misc_vector** %3, align 8
  %6 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %7 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = load i64, i64* @HCLGEVF_MISC_VECTOR_NUM, align 8
  %10 = call i32 @pci_irq_vector(i32 %8, i64 %9)
  %11 = load %struct.hclgevf_misc_vector*, %struct.hclgevf_misc_vector** %3, align 8
  %12 = getelementptr inbounds %struct.hclgevf_misc_vector, %struct.hclgevf_misc_vector* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %14 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HCLGEVF_MISC_VECTOR_REG_BASE, align 8
  %18 = add nsw i64 %16, %17
  %19 = load %struct.hclgevf_misc_vector*, %struct.hclgevf_misc_vector** %3, align 8
  %20 = getelementptr inbounds %struct.hclgevf_misc_vector, %struct.hclgevf_misc_vector* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %22 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %21, i32 0, i32 3
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @HCLGEVF_MISC_VECTOR_NUM, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  store i64 0, i64* %25, align 8
  %26 = load %struct.hclgevf_misc_vector*, %struct.hclgevf_misc_vector** %3, align 8
  %27 = getelementptr inbounds %struct.hclgevf_misc_vector, %struct.hclgevf_misc_vector* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %30 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @HCLGEVF_MISC_VECTOR_NUM, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 %28, i32* %33, align 4
  %34 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %35 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %39 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  ret void
}

declare dso_local i32 @pci_irq_vector(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
