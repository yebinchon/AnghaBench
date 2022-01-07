; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_dev.c_get_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_dev.c_get_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_hwdev = type { i32, %struct.hinic_cap }
%struct.hinic_cap = type { i32, i32 }
%struct.hinic_dev_cap = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@INTR_MSIX_TYPE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@HINIC_Q_CTXT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_hwdev*, %struct.hinic_dev_cap*)* @get_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_capability(%struct.hinic_hwdev* %0, %struct.hinic_dev_cap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hinic_hwdev*, align 8
  %5 = alloca %struct.hinic_dev_cap*, align 8
  %6 = alloca %struct.hinic_cap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hinic_hwdev* %0, %struct.hinic_hwdev** %4, align 8
  store %struct.hinic_dev_cap* %1, %struct.hinic_dev_cap** %5, align 8
  %10 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %4, align 8
  %11 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %10, i32 0, i32 1
  store %struct.hinic_cap* %11, %struct.hinic_cap** %6, align 8
  %12 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %4, align 8
  %13 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @HINIC_IS_PF(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %2
  %18 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %4, align 8
  %19 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @HINIC_IS_PPF(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %98

26:                                               ; preds = %17, %2
  %27 = load %struct.hinic_dev_cap*, %struct.hinic_dev_cap** %5, align 8
  %28 = getelementptr inbounds %struct.hinic_dev_cap, %struct.hinic_dev_cap* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @INTR_MSIX_TYPE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EFAULT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %98

35:                                               ; preds = %26
  %36 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %4, align 8
  %37 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @HINIC_HWIF_NUM_AEQS(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %4, align 8
  %41 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @HINIC_HWIF_NUM_CEQS(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %4, align 8
  %45 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @HINIC_HWIF_NUM_IRQS(i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %49, %50
  %52 = sub nsw i32 %48, %51
  %53 = sdiv i32 %52, 2
  %54 = load %struct.hinic_cap*, %struct.hinic_cap** %6, align 8
  %55 = getelementptr inbounds %struct.hinic_cap, %struct.hinic_cap* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.hinic_cap*, %struct.hinic_cap** %6, align 8
  %57 = getelementptr inbounds %struct.hinic_cap, %struct.hinic_cap* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @HINIC_Q_CTXT_MAX, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %35
  %62 = load i32, i32* @HINIC_Q_CTXT_MAX, align 4
  %63 = load %struct.hinic_cap*, %struct.hinic_cap** %6, align 8
  %64 = getelementptr inbounds %struct.hinic_cap, %struct.hinic_cap* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %35
  %66 = load %struct.hinic_dev_cap*, %struct.hinic_dev_cap** %5, align 8
  %67 = getelementptr inbounds %struct.hinic_dev_cap, %struct.hinic_dev_cap* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  %70 = load %struct.hinic_cap*, %struct.hinic_cap** %6, align 8
  %71 = getelementptr inbounds %struct.hinic_cap, %struct.hinic_cap* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.hinic_cap*, %struct.hinic_cap** %6, align 8
  %73 = getelementptr inbounds %struct.hinic_cap, %struct.hinic_cap* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.hinic_dev_cap*, %struct.hinic_dev_cap** %5, align 8
  %76 = getelementptr inbounds %struct.hinic_dev_cap, %struct.hinic_dev_cap* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  %79 = icmp ne i32 %74, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %65
  %81 = load i32, i32* @EFAULT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %98

83:                                               ; preds = %65
  %84 = load %struct.hinic_cap*, %struct.hinic_cap** %6, align 8
  %85 = getelementptr inbounds %struct.hinic_cap, %struct.hinic_cap* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.hinic_cap*, %struct.hinic_cap** %6, align 8
  %88 = getelementptr inbounds %struct.hinic_cap, %struct.hinic_cap* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %86, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = load %struct.hinic_cap*, %struct.hinic_cap** %6, align 8
  %93 = getelementptr inbounds %struct.hinic_cap, %struct.hinic_cap* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.hinic_cap*, %struct.hinic_cap** %6, align 8
  %96 = getelementptr inbounds %struct.hinic_cap, %struct.hinic_cap* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %91, %83
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %80, %32, %23
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @HINIC_IS_PF(i32) #1

declare dso_local i32 @HINIC_IS_PPF(i32) #1

declare dso_local i32 @HINIC_HWIF_NUM_AEQS(i32) #1

declare dso_local i32 @HINIC_HWIF_NUM_CEQS(i32) #1

declare dso_local i32 @HINIC_HWIF_NUM_IRQS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
