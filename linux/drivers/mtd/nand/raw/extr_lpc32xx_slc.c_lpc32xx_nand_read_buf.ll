; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_nand_read_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_nand_read_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.lpc32xx_nand_host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32*, i32)* @lpc32xx_nand_read_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpc32xx_nand_read_buf(%struct.nand_chip* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpc32xx_nand_host*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %9 = call %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip* %8)
  store %struct.lpc32xx_nand_host* %9, %struct.lpc32xx_nand_host** %7, align 8
  br label %10

10:                                               ; preds = %14, %3
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %6, align 4
  %13 = icmp sgt i32 %11, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %7, align 8
  %16 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @SLC_DATA(i32 %17)
  %19 = call i64 @readl(i32 %18)
  %20 = trunc i64 %19 to i32
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  br label %10

23:                                               ; preds = %10
  ret void
}

declare dso_local %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @SLC_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
