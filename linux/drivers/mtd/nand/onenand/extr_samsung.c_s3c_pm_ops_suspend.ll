; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_samsung.c_s3c_pm_ops_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_samsung.c_s3c_pm_ops_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mtd_info = type { %struct.onenand_chip* }
%struct.onenand_chip = type { i32 (%struct.mtd_info.0*, i32)* }
%struct.mtd_info.0 = type opaque

@FL_PM_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @s3c_pm_ops_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_pm_ops_suspend(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.onenand_chip*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.mtd_info* @dev_get_drvdata(%struct.device* %5)
  store %struct.mtd_info* %6, %struct.mtd_info** %3, align 8
  %7 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %8 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %7, i32 0, i32 0
  %9 = load %struct.onenand_chip*, %struct.onenand_chip** %8, align 8
  store %struct.onenand_chip* %9, %struct.onenand_chip** %4, align 8
  %10 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %11 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %10, i32 0, i32 0
  %12 = load i32 (%struct.mtd_info.0*, i32)*, i32 (%struct.mtd_info.0*, i32)** %11, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %14 = bitcast %struct.mtd_info* %13 to %struct.mtd_info.0*
  %15 = load i32, i32* @FL_PM_SUSPENDED, align 4
  %16 = call i32 %12(%struct.mtd_info.0* %14, i32 %15)
  ret i32 0
}

declare dso_local %struct.mtd_info* @dev_get_drvdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
