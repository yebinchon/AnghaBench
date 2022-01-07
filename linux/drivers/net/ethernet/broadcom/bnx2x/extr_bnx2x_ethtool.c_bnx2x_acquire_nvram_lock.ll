; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_acquire_nvram_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_acquire_nvram_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@HW_LOCK_RESOURCE_NVRAM = common dso_local global i32 0, align 4
@BNX2X_NVRAM_TIMEOUT_COUNT = common dso_local global i32 0, align 4
@MCP_REG_MCPR_NVM_SW_ARB = common dso_local global i32 0, align 4
@MCPR_NVM_SW_ARB_ARB_REQ_SET1 = common dso_local global i32 0, align 4
@MCPR_NVM_SW_ARB_ARB_ARB1 = common dso_local global i32 0, align 4
@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@BNX2X_MSG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot get access to nvram interface\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_acquire_nvram_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_acquire_nvram_lock(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %8 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %9 = call i32 @BP_PORT(%struct.bnx2x* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = load i32, i32* @HW_LOCK_RESOURCE_NVRAM, align 4
  %12 = call i32 @bnx2x_acquire_hw_lock(%struct.bnx2x* %10, i32 %11)
  %13 = load i32, i32* @BNX2X_NVRAM_TIMEOUT_COUNT, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %15 = call i64 @CHIP_REV_IS_SLOW(%struct.bnx2x* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 %18, 100
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %22 = load i32, i32* @MCP_REG_MCPR_NVM_SW_ARB, align 4
  %23 = load i32, i32* @MCPR_NVM_SW_ARB_ARB_REQ_SET1, align 4
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 %23, %24
  %26 = call i32 @REG_WR(%struct.bnx2x* %21, i32 %22, i32 %25)
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %45, %20
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %29, 10
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %34 = load i32, i32* @MCP_REG_MCPR_NVM_SW_ARB, align 4
  %35 = call i32 @REG_RD(%struct.bnx2x* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @MCPR_NVM_SW_ARB_ARB_ARB1, align 4
  %38 = load i32, i32* %4, align 4
  %39 = shl i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %48

43:                                               ; preds = %32
  %44 = call i32 @udelay(i32 5)
  br label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %27

48:                                               ; preds = %42, %27
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @MCPR_NVM_SW_ARB_ARB_ARB1, align 4
  %51 = load i32, i32* %4, align 4
  %52 = shl i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %57 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @DP(i32 %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %61 = load i32, i32* @HW_LOCK_RESOURCE_NVRAM, align 4
  %62 = call i32 @bnx2x_release_hw_lock(%struct.bnx2x* %60, i32 %61)
  %63 = load i32, i32* @EBUSY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %55
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_acquire_hw_lock(%struct.bnx2x*, i32) #1

declare dso_local i64 @CHIP_REV_IS_SLOW(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_release_hw_lock(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
