; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_sriov_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_sriov_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.bnx2x = type { i64, i32 }

@.str = private unnamed_addr constant [96 x i8] c"failed to configure SR-IOV since vfdb was not allocated. Check dmesg for errors in probe stage\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"bnx2x_sriov_configure called with %d, BNX2X_NR_VIRTFN(bp) was %d\0A\00", align 1
@BNX2X_STATE_OPEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [63 x i8] c"VF num configuration via sysfs not supported while PF is down\0A\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"truncating requested number of VFs (%d) down to maximum allowed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_sriov_configure(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = call i32 @pci_get_drvdata(%struct.pci_dev* %7)
  %9 = call %struct.bnx2x* @netdev_priv(i32 %8)
  store %struct.bnx2x* %9, %struct.bnx2x** %6, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %11 = call i32 @IS_SRIOV(%struct.bnx2x* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %58

17:                                               ; preds = %2
  %18 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %21 = call i32 @BNX2X_NR_VIRTFN(%struct.bnx2x* %20)
  %22 = call i32 @DP(i32 %18, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %21)
  %23 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %24 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BNX2X_STATE_OPEN, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %58

32:                                               ; preds = %17
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %35 = call i32 @BNX2X_NR_VIRTFN(%struct.bnx2x* %34)
  %36 = icmp sgt i32 %33, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %40 = call i32 @BNX2X_NR_VIRTFN(%struct.bnx2x* %39)
  %41 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 %38, i32 %40)
  %42 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %43 = call i32 @BNX2X_NR_VIRTFN(%struct.bnx2x* %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %37, %32
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %47 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %52 = call i32 @bnx2x_set_pf_tx_switching(%struct.bnx2x* %51, i32 0)
  %53 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %54 = call i32 @bnx2x_disable_sriov(%struct.bnx2x* %53)
  store i32 0, i32* %3, align 4
  br label %58

55:                                               ; preds = %44
  %56 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %57 = call i32 @bnx2x_enable_sriov(%struct.bnx2x* %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %50, %28, %13
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i32 @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @IS_SRIOV(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*, ...) #1

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

declare dso_local i32 @BNX2X_NR_VIRTFN(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_set_pf_tx_switching(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_disable_sriov(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_enable_sriov(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
