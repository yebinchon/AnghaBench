; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_do_flr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_do_flr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_2__, %struct.pci_dev* }
%struct.TYPE_2__ = type { i64 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"FLR not supported in E1/E1H\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@REQ_BC_VER_4_INITIATE_FLR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"FLR not supported by BC_VER: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"transaction is not cleared; proceeding with reset anyway\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Initiating FLR\0A\00", align 1
@DRV_MSG_CODE_INITIATE_FLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_do_flr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_do_flr(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %5 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %6 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %5, i32 0, i32 1
  %7 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %7, %struct.pci_dev** %4, align 8
  %8 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %9 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %43

15:                                               ; preds = %1
  %16 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %17 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @REQ_BC_VER_4_INITIATE_FLR, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %24 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %43

30:                                               ; preds = %15
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = call i32 @pci_wait_for_pending_transaction(%struct.pci_dev* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %30
  %39 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %40 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %41 = load i32, i32* @DRV_MSG_CODE_INITIATE_FLR, align 4
  %42 = call i32 @bnx2x_fw_command(%struct.bnx2x* %40, i32 %41, i32 0)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %22, %11
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_DEV_INFO(i8*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i64) #1

declare dso_local i32 @pci_wait_for_pending_transaction(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @bnx2x_fw_command(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
