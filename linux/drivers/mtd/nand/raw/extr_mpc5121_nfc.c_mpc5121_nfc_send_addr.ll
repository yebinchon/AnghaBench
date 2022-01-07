; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mpc5121_nfc.c_mpc5121_nfc_send_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mpc5121_nfc.c_mpc5121_nfc_send_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }

@NFC_FLASH_ADDR = common dso_local global i32 0, align 4
@NFC_CONFIG2 = common dso_local global i32 0, align 4
@NFC_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32)* @mpc5121_nfc_send_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc5121_nfc_send_addr(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %6 = load i32, i32* @NFC_FLASH_ADDR, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @nfc_write(%struct.mtd_info* %5, i32 %6, i32 %7)
  %9 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %10 = load i32, i32* @NFC_CONFIG2, align 4
  %11 = load i32, i32* @NFC_ADDRESS, align 4
  %12 = call i32 @nfc_write(%struct.mtd_info* %9, i32 %10, i32 %11)
  %13 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %14 = call i32 @mpc5121_nfc_done(%struct.mtd_info* %13)
  ret void
}

declare dso_local i32 @nfc_write(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @mpc5121_nfc_done(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
