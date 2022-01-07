; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_base.c_genwqe_setup_vf_jtimer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_base.c_genwqe_setup_vf_jtimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { i64*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@IO_SLC_VF_APPJOB_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genwqe_dev*)* @genwqe_setup_vf_jtimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genwqe_setup_vf_jtimer(%struct.genwqe_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.genwqe_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %3, align 8
  %9 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %10 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %9, i32 0, i32 1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %13 = call i32 @genwqe_T_psec(%struct.genwqe_dev* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call i32 @pci_sriov_get_totalvfs(%struct.pci_dev* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

19:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %57, %19
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %20
  %25 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %26 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %57

34:                                               ; preds = %24
  %35 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %36 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = mul i64 %41, 16000000000
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 %43, 15
  %45 = sext i32 %44 to i64
  %46 = udiv i64 %42, %45
  %47 = call i32 @ilog2(i64 %46)
  %48 = sub nsw i32 %47, 10
  store i32 %48, i32* %7, align 4
  %49 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %50 = load i32, i32* @IO_SLC_VF_APPJOB_TIMEOUT, align 4
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 255
  %53 = or i32 65280, %52
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  %56 = call i32 @genwqe_write_vreg(%struct.genwqe_dev* %49, i32 %50, i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %34, %33
  %58 = load i32, i32* %5, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %20

60:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %18
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @genwqe_T_psec(%struct.genwqe_dev*) #1

declare dso_local i32 @pci_sriov_get_totalvfs(%struct.pci_dev*) #1

declare dso_local i32 @ilog2(i64) #1

declare dso_local i32 @genwqe_write_vreg(%struct.genwqe_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
