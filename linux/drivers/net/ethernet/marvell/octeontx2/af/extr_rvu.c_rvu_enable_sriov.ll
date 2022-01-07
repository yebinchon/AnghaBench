; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_enable_sriov.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_enable_sriov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"Skipping SRIOV enablement since not enough IRQs are available\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Number of VFs should be even. Enabling %d out of %d.\0A\00", align 1
@TYPE_AFVF = common dso_local global i32 0, align 4
@rvu_afvf_mbox_handler = common dso_local global i32 0, align 4
@rvu_afvf_mbox_up_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*)* @rvu_enable_sriov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvu_enable_sriov(%struct.rvu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rvu*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %3, align 8
  %8 = load %struct.rvu*, %struct.rvu** %3, align 8
  %9 = getelementptr inbounds %struct.rvu, %struct.rvu* %8, i32 0, i32 2
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load %struct.rvu*, %struct.rvu** %3, align 8
  %12 = call i32 @rvu_afvf_msix_vectors_num_ok(%struct.rvu* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = call i32 (i32*, i8*, ...) @dev_warn(i32* %16, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %82

18:                                               ; preds = %1
  %19 = call i32 (...) @lbk_get_num_chans()
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %82

24:                                               ; preds = %18
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = call i32 @pci_sriov_get_totalvfs(%struct.pci_dev* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i32*, i8*, ...) @dev_warn(i32* %38, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %36, %32
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %82

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.rvu*, %struct.rvu** %3, align 8
  %52 = getelementptr inbounds %struct.rvu, %struct.rvu* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.rvu*, %struct.rvu** %3, align 8
  %54 = load %struct.rvu*, %struct.rvu** %3, align 8
  %55 = getelementptr inbounds %struct.rvu, %struct.rvu* %54, i32 0, i32 1
  %56 = load i32, i32* @TYPE_AFVF, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @rvu_afvf_mbox_handler, align 4
  %59 = load i32, i32* @rvu_afvf_mbox_up_handler, align 4
  %60 = call i32 @rvu_mbox_init(%struct.rvu* %53, i32* %55, i32 %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %49
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %82

65:                                               ; preds = %49
  %66 = load %struct.rvu*, %struct.rvu** %3, align 8
  %67 = call i32 @rvu_enable_afvf_intr(%struct.rvu* %66)
  %68 = call i32 (...) @mb()
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @pci_enable_sriov(%struct.pci_dev* %69, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %65
  %75 = load %struct.rvu*, %struct.rvu** %3, align 8
  %76 = call i32 @rvu_disable_afvf_intr(%struct.rvu* %75)
  %77 = load %struct.rvu*, %struct.rvu** %3, align 8
  %78 = getelementptr inbounds %struct.rvu, %struct.rvu* %77, i32 0, i32 1
  %79 = call i32 @rvu_mbox_destroy(i32* %78)
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %82

81:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %74, %63, %48, %22, %14
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @rvu_afvf_msix_vectors_num_ok(%struct.rvu*) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @lbk_get_num_chans(...) #1

declare dso_local i32 @pci_sriov_get_totalvfs(%struct.pci_dev*) #1

declare dso_local i32 @rvu_mbox_init(%struct.rvu*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @rvu_enable_afvf_intr(%struct.rvu*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @pci_enable_sriov(%struct.pci_dev*, i32) #1

declare dso_local i32 @rvu_disable_afvf_intr(%struct.rvu*) #1

declare dso_local i32 @rvu_mbox_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
