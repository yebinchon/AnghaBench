; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sunxi_nfc = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sunxi_nfc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_nfc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sunxi_nfc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.sunxi_nfc* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.sunxi_nfc* %5, %struct.sunxi_nfc** %3, align 8
  %6 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %3, align 8
  %7 = call i32 @sunxi_nand_chips_cleanup(%struct.sunxi_nfc* %6)
  %8 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %3, align 8
  %9 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @reset_control_assert(i32 %10)
  %12 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %3, align 8
  %13 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %3, align 8
  %18 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @dma_release_channel(i64 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %3, align 8
  %23 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_disable_unprepare(i32 %24)
  %26 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %3, align 8
  %27 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @clk_disable_unprepare(i32 %28)
  ret i32 0
}

declare dso_local %struct.sunxi_nfc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @sunxi_nand_chips_cleanup(%struct.sunxi_nfc*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @dma_release_channel(i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
