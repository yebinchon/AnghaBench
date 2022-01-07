; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_aspeed-smc.c_aspeed_smc_send_cmd_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_aspeed-smc.c_aspeed_smc_send_cmd_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32, %struct.aspeed_smc_chip* }
%struct.aspeed_smc_chip = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Unexpected address width %u, defaulting to 3\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_nor*, i32, i32)* @aspeed_smc_send_cmd_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_smc_send_cmd_addr(%struct.spi_nor* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.spi_nor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.aspeed_smc_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %11 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %10, i32 0, i32 1
  %12 = load %struct.aspeed_smc_chip*, %struct.aspeed_smc_chip** %11, align 8
  store %struct.aspeed_smc_chip* %12, %struct.aspeed_smc_chip** %7, align 8
  %13 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %14 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %16 [
    i32 3, label %21
    i32 4, label %34
  ]

16:                                               ; preds = %3
  %17 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %18 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %3, %16
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 16777215
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 %24, 24
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @cpu_to_be32(i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.aspeed_smc_chip*, %struct.aspeed_smc_chip** %7, align 8
  %31 = getelementptr inbounds %struct.aspeed_smc_chip, %struct.aspeed_smc_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @aspeed_smc_write_to_ahb(i32 %32, i32* %8, i32 4)
  br label %45

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @cpu_to_be32(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.aspeed_smc_chip*, %struct.aspeed_smc_chip** %7, align 8
  %38 = getelementptr inbounds %struct.aspeed_smc_chip, %struct.aspeed_smc_chip* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @aspeed_smc_write_to_ahb(i32 %39, i32* %5, i32 1)
  %41 = load %struct.aspeed_smc_chip*, %struct.aspeed_smc_chip** %7, align 8
  %42 = getelementptr inbounds %struct.aspeed_smc_chip, %struct.aspeed_smc_chip* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @aspeed_smc_write_to_ahb(i32 %43, i32* %8, i32 4)
  br label %45

45:                                               ; preds = %34, %21
  ret void
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @aspeed_smc_write_to_ahb(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
