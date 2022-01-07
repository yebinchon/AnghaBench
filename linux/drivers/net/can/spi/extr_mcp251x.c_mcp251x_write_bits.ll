; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_write_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_write_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.mcp251x_priv = type { i8** }

@INSTRUCTION_BIT_MODIFY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i8*, i8*, i8*)* @mcp251x_write_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcp251x_write_bits(%struct.spi_device* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mcp251x_priv*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %11 = call %struct.mcp251x_priv* @spi_get_drvdata(%struct.spi_device* %10)
  store %struct.mcp251x_priv* %11, %struct.mcp251x_priv** %9, align 8
  %12 = load i8*, i8** @INSTRUCTION_BIT_MODIFY, align 8
  %13 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %9, align 8
  %14 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  store i8* %12, i8** %16, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %9, align 8
  %19 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  store i8* %17, i8** %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %9, align 8
  %24 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  store i8* %22, i8** %26, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %9, align 8
  %29 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 3
  store i8* %27, i8** %31, align 8
  %32 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %33 = call i32 @mcp251x_spi_trans(%struct.spi_device* %32, i32 4)
  ret void
}

declare dso_local %struct.mcp251x_priv* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @mcp251x_spi_trans(%struct.spi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
