; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_nvram_read_dword.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_nvram_read_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@MCPR_NVM_COMMAND_DOIT = common dso_local global i32 0, align 4
@MCP_REG_MCPR_NVM_COMMAND = common dso_local global i32 0, align 4
@MCPR_NVM_COMMAND_DONE = common dso_local global i32 0, align 4
@MCP_REG_MCPR_NVM_ADDR = common dso_local global i32 0, align 4
@MCPR_NVM_ADDR_NVM_ADDR_VALUE = common dso_local global i32 0, align 4
@BNX2X_NVRAM_TIMEOUT_COUNT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MCP_REG_MCPR_NVM_READ = common dso_local global i32 0, align 4
@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@BNX2X_MSG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"nvram read timeout expired\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32, i32*, i32)* @bnx2x_nvram_read_dword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_nvram_read_dword(%struct.bnx2x* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @MCPR_NVM_COMMAND_DOIT, align 4
  %14 = load i32, i32* %8, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %8, align 4
  %16 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %17 = load i32, i32* @MCP_REG_MCPR_NVM_COMMAND, align 4
  %18 = load i32, i32* @MCPR_NVM_COMMAND_DONE, align 4
  %19 = call i32 @REG_WR(%struct.bnx2x* %16, i32 %17, i32 %18)
  %20 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %21 = load i32, i32* @MCP_REG_MCPR_NVM_ADDR, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @MCPR_NVM_ADDR_NVM_ADDR_VALUE, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @REG_WR(%struct.bnx2x* %20, i32 %21, i32 %24)
  %26 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %27 = load i32, i32* @MCP_REG_MCPR_NVM_COMMAND, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @REG_WR(%struct.bnx2x* %26, i32 %27, i32 %28)
  %30 = load i32, i32* @BNX2X_NVRAM_TIMEOUT_COUNT, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %32 = call i64 @CHIP_REV_IS_SLOW(%struct.bnx2x* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 %35, 100
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %34, %4
  %38 = load i32*, i32** %7, align 8
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %62, %37
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = call i32 @udelay(i32 5)
  %47 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %48 = load i32, i32* @MCP_REG_MCPR_NVM_COMMAND, align 4
  %49 = call i32 @REG_RD(%struct.bnx2x* %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @MCPR_NVM_COMMAND_DONE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %45
  %55 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %56 = load i32, i32* @MCP_REG_MCPR_NVM_READ, align 4
  %57 = call i32 @REG_RD(%struct.bnx2x* %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @cpu_to_be32(i32 %58)
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  store i32 0, i32* %11, align 4
  br label %65

61:                                               ; preds = %45
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %41

65:                                               ; preds = %54, %41
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %72 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @DP(i32 %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %70, %65
  %76 = load i32, i32* %11, align 4
  ret i32 %76
}

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i64 @CHIP_REV_IS_SLOW(%struct.bnx2x*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @DP(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
