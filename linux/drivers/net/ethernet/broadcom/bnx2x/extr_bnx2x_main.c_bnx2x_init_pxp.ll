; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_init_pxp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_init_pxp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32 }

@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@NETIF_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"read 0x%x from devctl\0A\00", align 1
@PCI_EXP_DEVCTL_PAYLOAD = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_READRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"force read order to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_init_pxp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_init_pxp(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %7 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %10 = call i32 @pcie_capability_read_word(i32 %8, i32 %9, i32* %3)
  %11 = load i32, i32* @NETIF_MSG_HW, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @DP(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @PCI_EXP_DEVCTL_PAYLOAD, align 4
  %16 = and i32 %14, %15
  %17 = ashr i32 %16, 5
  store i32 %17, i32* %5, align 4
  %18 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %19 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @PCI_EXP_DEVCTL_READRQ, align 4
  %25 = and i32 %23, %24
  %26 = ashr i32 %25, 12
  store i32 %26, i32* %4, align 4
  br label %36

27:                                               ; preds = %1
  %28 = load i32, i32* @NETIF_MSG_HW, align 4
  %29 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %30 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @DP(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %34 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %27, %22
  %37 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @bnx2x_init_pxp_arb(%struct.bnx2x* %37, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @pcie_capability_read_word(i32, i32, i32*) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @bnx2x_init_pxp_arb(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
