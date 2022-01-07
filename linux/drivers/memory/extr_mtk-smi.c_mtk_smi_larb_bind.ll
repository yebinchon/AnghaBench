; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_mtk-smi.c_mtk_smi_larb_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_mtk-smi.c_mtk_smi_larb_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mtk_smi_larb = type { i32, i32* }
%struct.mtk_smi_larb_iommu = type { i32, %struct.device* }

@MTK_LARB_NR_MAX = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @mtk_smi_larb_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_smi_larb_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mtk_smi_larb*, align 8
  %9 = alloca %struct.mtk_smi_larb_iommu*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.mtk_smi_larb* @dev_get_drvdata(%struct.device* %11)
  store %struct.mtk_smi_larb* %12, %struct.mtk_smi_larb** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.mtk_smi_larb_iommu*
  store %struct.mtk_smi_larb_iommu* %14, %struct.mtk_smi_larb_iommu** %9, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %40, %3
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @MTK_LARB_NR_MAX, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %15
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load %struct.mtk_smi_larb_iommu*, %struct.mtk_smi_larb_iommu** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mtk_smi_larb_iommu, %struct.mtk_smi_larb_iommu* %21, i64 %23
  %25 = getelementptr inbounds %struct.mtk_smi_larb_iommu, %struct.mtk_smi_larb_iommu* %24, i32 0, i32 1
  %26 = load %struct.device*, %struct.device** %25, align 8
  %27 = icmp eq %struct.device* %20, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %19
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %8, align 8
  %31 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.mtk_smi_larb_iommu*, %struct.mtk_smi_larb_iommu** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mtk_smi_larb_iommu, %struct.mtk_smi_larb_iommu* %32, i64 %34
  %36 = getelementptr inbounds %struct.mtk_smi_larb_iommu, %struct.mtk_smi_larb_iommu* %35, i32 0, i32 0
  %37 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %8, align 8
  %38 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  store i32 0, i32* %4, align 4
  br label %46

39:                                               ; preds = %19
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %10, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %15

43:                                               ; preds = %15
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %28
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.mtk_smi_larb* @dev_get_drvdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
