; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_aspeed-smc.c_aspeed_smc_chip_check_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_aspeed-smc.c_aspeed_smc_chip_check_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_smc_chip = type { %struct.aspeed_smc_controller* }
%struct.aspeed_smc_controller = type { i64, i32 }

@CONFIG_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"config write is not set ! @%p: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aspeed_smc_chip*)* @aspeed_smc_chip_check_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_smc_chip_check_config(%struct.aspeed_smc_chip* %0) #0 {
  %2 = alloca %struct.aspeed_smc_chip*, align 8
  %3 = alloca %struct.aspeed_smc_controller*, align 8
  %4 = alloca i32, align 4
  store %struct.aspeed_smc_chip* %0, %struct.aspeed_smc_chip** %2, align 8
  %5 = load %struct.aspeed_smc_chip*, %struct.aspeed_smc_chip** %2, align 8
  %6 = getelementptr inbounds %struct.aspeed_smc_chip, %struct.aspeed_smc_chip* %5, i32 0, i32 0
  %7 = load %struct.aspeed_smc_controller*, %struct.aspeed_smc_controller** %6, align 8
  store %struct.aspeed_smc_controller* %7, %struct.aspeed_smc_controller** %3, align 8
  %8 = load %struct.aspeed_smc_controller*, %struct.aspeed_smc_controller** %3, align 8
  %9 = getelementptr inbounds %struct.aspeed_smc_controller, %struct.aspeed_smc_controller* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CONFIG_REG, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.aspeed_smc_chip*, %struct.aspeed_smc_chip** %2, align 8
  %16 = call i32 @aspeed_smc_chip_write_bit(%struct.aspeed_smc_chip* %15)
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %42

20:                                               ; preds = %1
  %21 = load %struct.aspeed_smc_controller*, %struct.aspeed_smc_controller** %3, align 8
  %22 = getelementptr inbounds %struct.aspeed_smc_controller, %struct.aspeed_smc_controller* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.aspeed_smc_controller*, %struct.aspeed_smc_controller** %3, align 8
  %25 = getelementptr inbounds %struct.aspeed_smc_controller, %struct.aspeed_smc_controller* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CONFIG_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %28, i32 %29)
  %31 = load %struct.aspeed_smc_chip*, %struct.aspeed_smc_chip** %2, align 8
  %32 = call i32 @aspeed_smc_chip_write_bit(%struct.aspeed_smc_chip* %31)
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.aspeed_smc_controller*, %struct.aspeed_smc_controller** %3, align 8
  %37 = getelementptr inbounds %struct.aspeed_smc_controller, %struct.aspeed_smc_controller* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CONFIG_REG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  br label %42

42:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @aspeed_smc_chip_write_bit(%struct.aspeed_smc_chip*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
