; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_process_kill_chip_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_process_kill_chip_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@MISC_REGISTERS_RESET_REG_2_RST_MCP_N_RESET_CMN_CPU = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_RST_MCP_N_RESET_CMN_CORE = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_1_RST_HC = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_1_RST_PXPV = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_1_RST_PXP = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_RST_PCI_MDIO = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_RST_EMAC0_HARD_CORE = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_RST_EMAC1_HARD_CORE = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_RST_MISC_CORE = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_RST_RBCN = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_RST_GRC = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_RST_MCP_N_RESET_REG_HARD_CORE = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_RST_MCP_N_HARD_CORE_RST_B = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_RST_ATC = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_PGLC = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_RST_BMAC0 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_RST_BMAC1 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_RST_EMAC0 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_RST_EMAC1 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_UMAC0 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_UMAC1 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_XMAC = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_XMAC_SOFT = common dso_local global i32 0, align 4
@GRCBASE_MISC = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_CLEAR = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_1_CLEAR = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_SET = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_1_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32)* @bnx2x_process_kill_chip_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_process_kill_chip_reset(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_MCP_N_RESET_CMN_CPU, align 4
  %12 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_MCP_N_RESET_CMN_CORE, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @MISC_REGISTERS_RESET_REG_1_RST_HC, align 4
  %15 = load i32, i32* @MISC_REGISTERS_RESET_REG_1_RST_PXPV, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MISC_REGISTERS_RESET_REG_1_RST_PXP, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_PCI_MDIO, align 4
  %20 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_EMAC0_HARD_CORE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_EMAC1_HARD_CORE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_MISC_CORE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_RBCN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_GRC, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_MCP_N_RESET_REG_HARD_CORE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_MCP_N_HARD_CORE_RST_B, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_ATC, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_PGLC, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_BMAC0, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_BMAC1, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_EMAC0, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_EMAC1, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_UMAC0, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_UMAC1, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_XMAC, align 4
  %51 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_XMAC_SOFT, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %10, align 4
  store i32 -1, i32* %6, align 4
  %53 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %54 = call i64 @CHIP_IS_E1(%struct.bnx2x* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %2
  store i32 65535, i32* %8, align 4
  br label %70

57:                                               ; preds = %2
  %58 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %59 = call i64 @CHIP_IS_E1H(%struct.bnx2x* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 131071, i32* %8, align 4
  br label %69

62:                                               ; preds = %57
  %63 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %64 = call i64 @CHIP_IS_E2(%struct.bnx2x* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 1048575, i32* %8, align 4
  br label %68

67:                                               ; preds = %62
  store i32 67108863, i32* %8, align 4
  br label %68

68:                                               ; preds = %67, %66
  br label %69

69:                                               ; preds = %68, %61
  br label %70

70:                                               ; preds = %69, %56
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %73, %70
  %79 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %80 = load i64, i64* @GRCBASE_MISC, align 8
  %81 = load i64, i64* @MISC_REGISTERS_RESET_REG_2_CLEAR, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %7, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  %87 = call i32 @REG_WR(%struct.bnx2x* %79, i64 %82, i32 %86)
  %88 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %89 = load i64, i64* @GRCBASE_MISC, align 8
  %90 = load i64, i64* @MISC_REGISTERS_RESET_REG_1_CLEAR, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %5, align 4
  %94 = xor i32 %93, -1
  %95 = and i32 %92, %94
  %96 = call i32 @REG_WR(%struct.bnx2x* %88, i64 %91, i32 %95)
  %97 = call i32 (...) @barrier()
  %98 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %99 = load i64, i64* @GRCBASE_MISC, align 8
  %100 = load i64, i64* @MISC_REGISTERS_RESET_REG_2_SET, align 8
  %101 = add nsw i64 %99, %100
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %10, align 4
  %104 = xor i32 %103, -1
  %105 = and i32 %102, %104
  %106 = call i32 @REG_WR(%struct.bnx2x* %98, i64 %101, i32 %105)
  %107 = call i32 (...) @barrier()
  %108 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %109 = load i64, i64* @GRCBASE_MISC, align 8
  %110 = load i64, i64* @MISC_REGISTERS_RESET_REG_1_SET, align 8
  %111 = add nsw i64 %109, %110
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @REG_WR(%struct.bnx2x* %108, i64 %111, i32 %112)
  ret void
}

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E1H(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
