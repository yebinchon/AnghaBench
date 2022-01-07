; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_pci_vpd_get_nports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_pci_vpd_get_nports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NIU_QGC_LP_MDL_STR = common dso_local global i32 0, align 4
@NIU_QGC_PEM_MDL_STR = common dso_local global i32 0, align 4
@NIU_MARAMBA_MDL_STR = common dso_local global i32 0, align 4
@NIU_KIMI_MDL_STR = common dso_local global i32 0, align 4
@NIU_ALONSO_MDL_STR = common dso_local global i32 0, align 4
@NIU_2XGF_LP_MDL_STR = common dso_local global i32 0, align 4
@NIU_2XGF_PEM_MDL_STR = common dso_local global i32 0, align 4
@NIU_FOXXY_MDL_STR = common dso_local global i32 0, align 4
@NIU_2XGF_MRVL_MDL_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @niu_pci_vpd_get_nports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_pci_vpd_get_nports(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.niu*, %struct.niu** %2, align 8
  %5 = getelementptr inbounds %struct.niu, %struct.niu* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @NIU_QGC_LP_MDL_STR, align 4
  %9 = call i32 @strcmp(i32 %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %1
  %12 = load %struct.niu*, %struct.niu** %2, align 8
  %13 = getelementptr inbounds %struct.niu, %struct.niu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NIU_QGC_PEM_MDL_STR, align 4
  %17 = call i32 @strcmp(i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %11
  %20 = load %struct.niu*, %struct.niu** %2, align 8
  %21 = getelementptr inbounds %struct.niu, %struct.niu* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NIU_MARAMBA_MDL_STR, align 4
  %25 = call i32 @strcmp(i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %19
  %28 = load %struct.niu*, %struct.niu** %2, align 8
  %29 = getelementptr inbounds %struct.niu, %struct.niu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NIU_KIMI_MDL_STR, align 4
  %33 = call i32 @strcmp(i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.niu*, %struct.niu** %2, align 8
  %37 = getelementptr inbounds %struct.niu, %struct.niu* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @NIU_ALONSO_MDL_STR, align 4
  %41 = call i32 @strcmp(i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %35, %27, %19, %11, %1
  store i32 4, i32* %3, align 4
  br label %78

44:                                               ; preds = %35
  %45 = load %struct.niu*, %struct.niu** %2, align 8
  %46 = getelementptr inbounds %struct.niu, %struct.niu* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NIU_2XGF_LP_MDL_STR, align 4
  %50 = call i32 @strcmp(i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %44
  %53 = load %struct.niu*, %struct.niu** %2, align 8
  %54 = getelementptr inbounds %struct.niu, %struct.niu* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @NIU_2XGF_PEM_MDL_STR, align 4
  %58 = call i32 @strcmp(i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %52
  %61 = load %struct.niu*, %struct.niu** %2, align 8
  %62 = getelementptr inbounds %struct.niu, %struct.niu* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @NIU_FOXXY_MDL_STR, align 4
  %66 = call i32 @strcmp(i32 %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = load %struct.niu*, %struct.niu** %2, align 8
  %70 = getelementptr inbounds %struct.niu, %struct.niu* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @NIU_2XGF_MRVL_MDL_STR, align 4
  %74 = call i32 @strcmp(i32 %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %68, %60, %52, %44
  store i32 2, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %68
  br label %78

78:                                               ; preds = %77, %43
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
