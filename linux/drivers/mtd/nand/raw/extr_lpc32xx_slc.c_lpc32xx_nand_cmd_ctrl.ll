; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_nand_cmd_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_nand_cmd_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.lpc32xx_nand_host = type { i32 }

@NAND_NCE = common dso_local global i32 0, align 4
@SLCCFG_CE_LOW = common dso_local global i32 0, align 4
@NAND_CMD_NONE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32)* @lpc32xx_nand_cmd_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpc32xx_nand_cmd_ctrl(%struct.nand_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpc32xx_nand_host*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = call %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip* %9)
  store %struct.lpc32xx_nand_host* %10, %struct.lpc32xx_nand_host** %8, align 8
  %11 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %8, align 8
  %12 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @SLC_CFG(i32 %13)
  %15 = call i32 @readl(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @NAND_NCE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @SLCCFG_CE_LOW, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  br label %29

24:                                               ; preds = %3
  %25 = load i32, i32* @SLCCFG_CE_LOW, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %8, align 8
  %32 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @SLC_CFG(i32 %33)
  %35 = call i32 @writel(i32 %30, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @NAND_CMD_NONE, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @NAND_CLE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %8, align 8
  %47 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @SLC_CMD(i32 %48)
  %50 = call i32 @writel(i32 %45, i32 %49)
  br label %58

51:                                               ; preds = %39
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %8, align 8
  %54 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @SLC_ADDR(i32 %55)
  %57 = call i32 @writel(i32 %52, i32 %56)
  br label %58

58:                                               ; preds = %51, %44
  br label %59

59:                                               ; preds = %58, %29
  ret void
}

declare dso_local %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @SLC_CFG(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @SLC_CMD(i32) #1

declare dso_local i32 @SLC_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
