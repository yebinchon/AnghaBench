; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_jz4780_bch.c_jz4780_bch_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_jz4780_bch.c_jz4780_bch_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ingenic_ecc = type { i32 }

@BCH_CLK_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @jz4780_bch_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_bch_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ingenic_ecc*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call i32 @ingenic_ecc_probe(%struct.platform_device* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %20

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = call %struct.ingenic_ecc* @platform_get_drvdata(%struct.platform_device* %13)
  store %struct.ingenic_ecc* %14, %struct.ingenic_ecc** %4, align 8
  %15 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %4, align 8
  %16 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BCH_CLK_RATE, align 4
  %19 = call i32 @clk_set_rate(i32 %17, i32 %18)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %12, %10
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @ingenic_ecc_probe(%struct.platform_device*) #1

declare dso_local %struct.ingenic_ecc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
