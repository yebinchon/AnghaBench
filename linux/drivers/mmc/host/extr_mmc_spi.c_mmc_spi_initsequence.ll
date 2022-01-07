; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmc_spi.c_mmc_spi_initsequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmc_spi.c_mmc_spi_initsequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_spi_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@r1b_timeout = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"can't change chip-select polarity\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"can't restore chip-select polarity\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_spi_host*)* @mmc_spi_initsequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_spi_initsequence(%struct.mmc_spi_host* %0) #0 {
  %2 = alloca %struct.mmc_spi_host*, align 8
  store %struct.mmc_spi_host* %0, %struct.mmc_spi_host** %2, align 8
  %3 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %2, align 8
  %4 = load i32, i32* @r1b_timeout, align 4
  %5 = call i32 @mmc_spi_wait_unbusy(%struct.mmc_spi_host* %3, i32 %4)
  %6 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %2, align 8
  %7 = call i32 @mmc_spi_readbytes(%struct.mmc_spi_host* %6, i32 10)
  %8 = load i32, i32* @SPI_CS_HIGH, align 4
  %9 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %2, align 8
  %10 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %8
  store i32 %14, i32* %12, align 4
  %15 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %2, align 8
  %16 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = call i64 @spi_setup(%struct.TYPE_2__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %1
  %21 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %2, align 8
  %22 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @dev_warn(i32* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @SPI_CS_HIGH, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %2, align 8
  %29 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %27
  store i32 %33, i32* %31, align 4
  br label %57

34:                                               ; preds = %1
  %35 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %2, align 8
  %36 = call i32 @mmc_spi_readbytes(%struct.mmc_spi_host* %35, i32 18)
  %37 = load i32, i32* @SPI_CS_HIGH, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %2, align 8
  %40 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %38
  store i32 %44, i32* %42, align 4
  %45 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %2, align 8
  %46 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = call i64 @spi_setup(%struct.TYPE_2__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %34
  %51 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %2, align 8
  %52 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %50, %34
  br label %57

57:                                               ; preds = %56, %20
  ret void
}

declare dso_local i32 @mmc_spi_wait_unbusy(%struct.mmc_spi_host*, i32) #1

declare dso_local i32 @mmc_spi_readbytes(%struct.mmc_spi_host*, i32) #1

declare dso_local i64 @spi_setup(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
