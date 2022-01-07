; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.mcp251x_priv = type { i8** }

@INSTRUCTION_WRITE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i8*, i8*)* @mcp251x_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcp251x_write_reg(%struct.spi_device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mcp251x_priv*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %9 = call %struct.mcp251x_priv* @spi_get_drvdata(%struct.spi_device* %8)
  store %struct.mcp251x_priv* %9, %struct.mcp251x_priv** %7, align 8
  %10 = load i8*, i8** @INSTRUCTION_WRITE, align 8
  %11 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %12 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %11, i32 0, i32 0
  %13 = load i8**, i8*** %12, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  store i8* %10, i8** %14, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %17 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  store i8* %15, i8** %19, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %22 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %21, i32 0, i32 0
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 2
  store i8* %20, i8** %24, align 8
  %25 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %26 = call i32 @mcp251x_spi_trans(%struct.spi_device* %25, i32 3)
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
