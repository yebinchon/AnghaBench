; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_internal.h_iwl_pcie_get_num_sections.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_internal.h_iwl_pcie_get_num_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_img = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@CPU1_CPU2_SEPARATOR_SECTION = common dso_local global i64 0, align 8
@PAGING_SEPARATOR_SECTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_img*, i32)* @iwl_pcie_get_num_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_get_num_sections(%struct.fw_img* %0, i32 %1) #0 {
  %3 = alloca %struct.fw_img*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fw_img* %0, %struct.fw_img** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %36, %2
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.fw_img*, %struct.fw_img** %3, align 8
  %9 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %6
  %13 = load %struct.fw_img*, %struct.fw_img** %3, align 8
  %14 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CPU1_CPU2_SEPARATOR_SECTION, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %12
  %24 = load %struct.fw_img*, %struct.fw_img** %3, align 8
  %25 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PAGING_SEPARATOR_SECTION, align 8
  %33 = icmp ne i64 %31, %32
  br label %34

34:                                               ; preds = %23, %12, %6
  %35 = phi i1 [ false, %12 ], [ false, %6 ], [ %33, %23 ]
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %6

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
