; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_get_epio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_get_epio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid EPIO pin %d to get\0A\00", align 1
@MCP_REG_MCPR_GP_OENABLE = common dso_local global i32 0, align 4
@MCP_REG_MCPR_GP_INPUTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32, i32*)* @bnx2x_get_epio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_get_epio(%struct.bnx2x* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 31
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @NETIF_MSG_LINK, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @DP(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %37

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 1, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %20 = load i32, i32* @MCP_REG_MCPR_GP_OENABLE, align 4
  %21 = call i32 @REG_RD(%struct.bnx2x* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %23 = load i32, i32* @MCP_REG_MCPR_GP_OENABLE, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = call i32 @REG_WR(%struct.bnx2x* %22, i32 %23, i32 %27)
  %29 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %30 = load i32, i32* @MCP_REG_MCPR_GP_INPUTS, align 4
  %31 = call i32 @REG_RD(%struct.bnx2x* %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %33, %34
  %36 = load i32*, i32** %6, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %16, %12
  ret void
}

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
