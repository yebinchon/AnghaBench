; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_mlc.c_lpc32xx_nand_cmd_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_mlc.c_lpc32xx_nand_cmd_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.lpc32xx_nand_host = type { i32 }

@NAND_CMD_NONE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32)* @lpc32xx_nand_cmd_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpc32xx_nand_cmd_ctrl(%struct.nand_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpc32xx_nand_host*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %9 = call %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip* %8)
  store %struct.lpc32xx_nand_host* %9, %struct.lpc32xx_nand_host** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @NAND_CMD_NONE, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @NAND_CLE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %7, align 8
  %21 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @MLC_CMD(i32 %22)
  %24 = call i32 @writel(i32 %19, i32 %23)
  br label %32

25:                                               ; preds = %13
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %7, align 8
  %28 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @MLC_ADDR(i32 %29)
  %31 = call i32 @writel(i32 %26, i32 %30)
  br label %32

32:                                               ; preds = %25, %18
  br label %33

33:                                               ; preds = %32, %3
  ret void
}

declare dso_local %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @MLC_CMD(i32) #1

declare dso_local i32 @MLC_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
