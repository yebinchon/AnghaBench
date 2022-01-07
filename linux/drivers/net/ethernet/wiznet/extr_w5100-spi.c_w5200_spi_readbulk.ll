; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5100-spi.c_w5200_spi_readbulk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5100-spi.c_w5200_spi_readbulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.spi_device = type { i32 }
%struct.w5200_spi_priv = type { i32*, i32 }
%struct.spi_transfer = type { i32*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32*, i32)* @w5200_spi_readbulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w5200_spi_readbulk(%struct.net_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.spi_device*, align 8
  %10 = alloca %struct.w5200_spi_priv*, align 8
  %11 = alloca [2 x %struct.spi_transfer], align 16
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.spi_device* @to_spi_device(i32 %16)
  store %struct.spi_device* %17, %struct.spi_device** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call %struct.w5200_spi_priv* @w5200_spi_priv(%struct.net_device* %18)
  store %struct.w5200_spi_priv* %19, %struct.w5200_spi_priv** %10, align 8
  %20 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 0
  %22 = load %struct.w5200_spi_priv*, %struct.w5200_spi_priv** %10, align 8
  %23 = getelementptr inbounds %struct.w5200_spi_priv, %struct.w5200_spi_priv* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %21, align 8
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 1
  store i32 8, i32* %25, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i64 1
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %27, i32 0, i32 1
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %27, i32 0, i32 2
  %32 = load i32*, i32** %7, align 8
  store i32* %32, i32** %31, align 8
  %33 = load %struct.w5200_spi_priv*, %struct.w5200_spi_priv** %10, align 8
  %34 = getelementptr inbounds %struct.w5200_spi_priv, %struct.w5200_spi_priv* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i32, i32* %6, align 4
  %37 = ashr i32 %36, 8
  %38 = load %struct.w5200_spi_priv*, %struct.w5200_spi_priv** %10, align 8
  %39 = getelementptr inbounds %struct.w5200_spi_priv, %struct.w5200_spi_priv* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.w5200_spi_priv*, %struct.w5200_spi_priv** %10, align 8
  %44 = getelementptr inbounds %struct.w5200_spi_priv, %struct.w5200_spi_priv* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* %8, align 4
  %48 = ashr i32 %47, 8
  %49 = load %struct.w5200_spi_priv*, %struct.w5200_spi_priv** %10, align 8
  %50 = getelementptr inbounds %struct.w5200_spi_priv, %struct.w5200_spi_priv* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.w5200_spi_priv*, %struct.w5200_spi_priv** %10, align 8
  %55 = getelementptr inbounds %struct.w5200_spi_priv, %struct.w5200_spi_priv* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  store i32 %53, i32* %57, align 4
  %58 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %59 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %60 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %61 = call i32 @ARRAY_SIZE(%struct.spi_transfer* %60)
  %62 = call i32 @spi_sync_transfer(%struct.spi_device* %58, %struct.spi_transfer* %59, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load %struct.w5200_spi_priv*, %struct.w5200_spi_priv** %10, align 8
  %64 = getelementptr inbounds %struct.w5200_spi_priv, %struct.w5200_spi_priv* %63, i32 0, i32 1
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %12, align 4
  ret i32 %66
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local %struct.w5200_spi_priv* @w5200_spi_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_sync_transfer(%struct.spi_device*, %struct.spi_transfer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.spi_transfer*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
