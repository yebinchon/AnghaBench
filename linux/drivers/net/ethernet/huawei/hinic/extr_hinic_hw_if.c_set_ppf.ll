; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_if.c_set_ppf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_if.c_set_ppf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_hwif = type { %struct.hinic_func_attr }
%struct.hinic_func_attr = type { i64, i32 }

@IDX = common dso_local global i32 0, align 4
@HINIC_PPF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_hwif*)* @set_ppf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ppf(%struct.hinic_hwif* %0) #0 {
  %2 = alloca %struct.hinic_hwif*, align 8
  %3 = alloca %struct.hinic_func_attr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hinic_hwif* %0, %struct.hinic_hwif** %2, align 8
  %7 = load %struct.hinic_hwif*, %struct.hinic_hwif** %2, align 8
  %8 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %7, i32 0, i32 0
  store %struct.hinic_func_attr* %8, %struct.hinic_func_attr** %3, align 8
  %9 = load %struct.hinic_hwif*, %struct.hinic_hwif** %2, align 8
  %10 = call i32 @HINIC_HWIF_PCI_INTF(%struct.hinic_hwif* %9)
  %11 = call i32 @HINIC_CSR_PPF_ELECTION_ADDR(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.hinic_hwif*, %struct.hinic_hwif** %2, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @hinic_hwif_read_reg(%struct.hinic_hwif* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @IDX, align 4
  %17 = call i32 @HINIC_PPF_ELECTION_CLEAR(i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.hinic_hwif*, %struct.hinic_hwif** %2, align 8
  %19 = call i64 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif* %18)
  %20 = load i32, i32* @IDX, align 4
  %21 = call i32 @HINIC_PPF_ELECTION_SET(i64 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.hinic_hwif*, %struct.hinic_hwif** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @hinic_hwif_write_reg(%struct.hinic_hwif* %25, i32 %26, i32 %27)
  %29 = load %struct.hinic_hwif*, %struct.hinic_hwif** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @hinic_hwif_read_reg(%struct.hinic_hwif* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @IDX, align 4
  %34 = call i64 @HINIC_PPF_ELECTION_GET(i32 %32, i32 %33)
  %35 = load %struct.hinic_func_attr*, %struct.hinic_func_attr** %3, align 8
  %36 = getelementptr inbounds %struct.hinic_func_attr, %struct.hinic_func_attr* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.hinic_func_attr*, %struct.hinic_func_attr** %3, align 8
  %38 = getelementptr inbounds %struct.hinic_func_attr, %struct.hinic_func_attr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.hinic_hwif*, %struct.hinic_hwif** %2, align 8
  %41 = call i64 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif* %40)
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %1
  %44 = load i32, i32* @HINIC_PPF, align 4
  %45 = load %struct.hinic_func_attr*, %struct.hinic_func_attr** %3, align 8
  %46 = getelementptr inbounds %struct.hinic_func_attr, %struct.hinic_func_attr* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %1
  ret void
}

declare dso_local i32 @HINIC_CSR_PPF_ELECTION_ADDR(i32) #1

declare dso_local i32 @HINIC_HWIF_PCI_INTF(%struct.hinic_hwif*) #1

declare dso_local i32 @hinic_hwif_read_reg(%struct.hinic_hwif*, i32) #1

declare dso_local i32 @HINIC_PPF_ELECTION_CLEAR(i32, i32) #1

declare dso_local i32 @HINIC_PPF_ELECTION_SET(i64, i32) #1

declare dso_local i64 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif*) #1

declare dso_local i32 @hinic_hwif_write_reg(%struct.hinic_hwif*, i32, i32) #1

declare dso_local i64 @HINIC_PPF_ELECTION_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
