; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_send_cmd_v3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_send_cmd_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxc_nand_host = type { i32 }

@NFC_V3_FLASH_CMD = common dso_local global i32 0, align 4
@NFC_CMD = common dso_local global i32 0, align 4
@NFC_V3_LAUNCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxc_nand_host*, i32, i32)* @send_cmd_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_cmd_v3(%struct.mxc_nand_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mxc_nand_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mxc_nand_host* %0, %struct.mxc_nand_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @NFC_V3_FLASH_CMD, align 4
  %9 = call i32 @writel(i32 %7, i32 %8)
  %10 = load i32, i32* @NFC_CMD, align 4
  %11 = load i32, i32* @NFC_V3_LAUNCH, align 4
  %12 = call i32 @writel(i32 %10, i32 %11)
  %13 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @wait_op_done(%struct.mxc_nand_host* %13, i32 %14)
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @wait_op_done(%struct.mxc_nand_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
