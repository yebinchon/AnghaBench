; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_xmac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_xmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@CHIP_NUM_57840_4_10 = common dso_local global i64 0, align 8
@CHIP_NUM_57840_2_20 = common dso_local global i64 0, align 8
@CHIP_NUM_57840_OBSOLETE = common dso_local global i64 0, align 8
@MISC_REG_RESET_REG_2 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_XMAC = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"XMAC already out of reset in 4-port mode\0A\00", align 1
@GRCBASE_MISC = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_CLEAR = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_SET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Init XMAC to 2 ports x 10G per path\0A\00", align 1
@MISC_REG_XMAC_CORE_PORT_MODE = common dso_local global i64 0, align 8
@MISC_REG_XMAC_PHY_PORT_MODE = common dso_local global i64 0, align 8
@SPEED_10000 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Init XMAC to 10G x 1 port per path\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Init XMAC to 20G x 2 ports per path\0A\00", align 1
@MISC_REGISTERS_RESET_REG_2_XMAC_SOFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_params*, i64)* @bnx2x_xmac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_xmac_init(%struct.link_params* %0, i64 %1) #0 {
  %3 = alloca %struct.link_params*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i64, align 8
  store %struct.link_params* %0, %struct.link_params** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.link_params*, %struct.link_params** %3, align 8
  %8 = getelementptr inbounds %struct.link_params, %struct.link_params* %7, i32 0, i32 0
  %9 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  store %struct.bnx2x* %9, %struct.bnx2x** %5, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %11 = call i64 @bnx2x_is_4_port_mode(%struct.bnx2x* %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %13 = call i64 @CHIP_NUM(%struct.bnx2x* %12)
  %14 = load i64, i64* @CHIP_NUM_57840_4_10, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %26, label %16

16:                                               ; preds = %2
  %17 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %18 = call i64 @CHIP_NUM(%struct.bnx2x* %17)
  %19 = load i64, i64* @CHIP_NUM_57840_2_20, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %23 = call i64 @CHIP_NUM(%struct.bnx2x* %22)
  %24 = load i64, i64* @CHIP_NUM_57840_OBSOLETE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %21, %16, %2
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %31 = load i32, i32* @MISC_REG_RESET_REG_2, align 4
  %32 = call i32 @REG_RD(%struct.bnx2x* %30, i32 %31)
  %33 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_XMAC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @NETIF_MSG_LINK, align 4
  %38 = call i32 @DP(i32 %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %98

39:                                               ; preds = %29, %26, %21
  %40 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %41 = load i64, i64* @GRCBASE_MISC, align 8
  %42 = load i64, i64* @MISC_REGISTERS_RESET_REG_2_CLEAR, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_XMAC, align 4
  %45 = call i32 @REG_WR(%struct.bnx2x* %40, i64 %43, i32 %44)
  %46 = call i32 @usleep_range(i32 1000, i32 2000)
  %47 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %48 = load i64, i64* @GRCBASE_MISC, align 8
  %49 = load i64, i64* @MISC_REGISTERS_RESET_REG_2_SET, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_XMAC, align 4
  %52 = call i32 @REG_WR(%struct.bnx2x* %47, i64 %50, i32 %51)
  %53 = load i64, i64* %6, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %39
  %56 = load i32, i32* @NETIF_MSG_LINK, align 4
  %57 = call i32 @DP(i32 %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %59 = load i64, i64* @MISC_REG_XMAC_CORE_PORT_MODE, align 8
  %60 = call i32 @REG_WR(%struct.bnx2x* %58, i64 %59, i32 1)
  %61 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %62 = load i64, i64* @MISC_REG_XMAC_PHY_PORT_MODE, align 8
  %63 = call i32 @REG_WR(%struct.bnx2x* %61, i64 %62, i32 3)
  br label %84

64:                                               ; preds = %39
  %65 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %66 = load i64, i64* @MISC_REG_XMAC_CORE_PORT_MODE, align 8
  %67 = call i32 @REG_WR(%struct.bnx2x* %65, i64 %66, i32 0)
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* @SPEED_10000, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load i32, i32* @NETIF_MSG_LINK, align 4
  %73 = call i32 @DP(i32 %72, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %75 = load i64, i64* @MISC_REG_XMAC_PHY_PORT_MODE, align 8
  %76 = call i32 @REG_WR(%struct.bnx2x* %74, i64 %75, i32 3)
  br label %83

77:                                               ; preds = %64
  %78 = load i32, i32* @NETIF_MSG_LINK, align 4
  %79 = call i32 @DP(i32 %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %80 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %81 = load i64, i64* @MISC_REG_XMAC_PHY_PORT_MODE, align 8
  %82 = call i32 @REG_WR(%struct.bnx2x* %80, i64 %81, i32 1)
  br label %83

83:                                               ; preds = %77, %71
  br label %84

84:                                               ; preds = %83, %55
  %85 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %86 = load i64, i64* @GRCBASE_MISC, align 8
  %87 = load i64, i64* @MISC_REGISTERS_RESET_REG_2_CLEAR, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_XMAC_SOFT, align 4
  %90 = call i32 @REG_WR(%struct.bnx2x* %85, i64 %88, i32 %89)
  %91 = call i32 @usleep_range(i32 1000, i32 2000)
  %92 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %93 = load i64, i64* @GRCBASE_MISC, align 8
  %94 = load i64, i64* @MISC_REGISTERS_RESET_REG_2_SET, align 8
  %95 = add nsw i64 %93, %94
  %96 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_XMAC_SOFT, align 4
  %97 = call i32 @REG_WR(%struct.bnx2x* %92, i64 %95, i32 %96)
  br label %98

98:                                               ; preds = %84, %36
  ret void
}

declare dso_local i64 @bnx2x_is_4_port_mode(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_NUM(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
