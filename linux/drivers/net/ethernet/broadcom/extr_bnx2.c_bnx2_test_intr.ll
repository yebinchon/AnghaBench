; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_test_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_test_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@BNX2_PCICFG_INT_ACK_CMD = common dso_local global i32 0, align 4
@BNX2_HC_COMMAND = common dso_local global i32 0, align 4
@BNX2_HC_COMMAND_COAL_NOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_test_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_test_intr(%struct.bnx2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  %6 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %7 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @netif_running(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %53

14:                                               ; preds = %1
  %15 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %16 = load i32, i32* @BNX2_PCICFG_INT_ACK_CMD, align 4
  %17 = call i32 @BNX2_RD(%struct.bnx2* %15, i32 %16)
  %18 = and i32 %17, 65535
  store i32 %18, i32* %5, align 4
  %19 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %20 = load i32, i32* @BNX2_HC_COMMAND, align 4
  %21 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %22 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BNX2_HC_COMMAND_COAL_NOW, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @BNX2_WR(%struct.bnx2* %19, i32 %20, i32 %25)
  %27 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %28 = load i32, i32* @BNX2_HC_COMMAND, align 4
  %29 = call i32 @BNX2_RD(%struct.bnx2* %27, i32 %28)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %43, %14
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 10
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %35 = load i32, i32* @BNX2_PCICFG_INT_ACK_CMD, align 4
  %36 = call i32 @BNX2_RD(%struct.bnx2* %34, i32 %35)
  %37 = and i32 %36, 65535
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %46

41:                                               ; preds = %33
  %42 = call i32 @msleep_interruptible(i32 10)
  br label %43

43:                                               ; preds = %41
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %30

46:                                               ; preds = %40, %30
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 10
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %49, %11
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
