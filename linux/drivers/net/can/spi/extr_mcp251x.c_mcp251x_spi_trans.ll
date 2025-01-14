; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_spi_trans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_spi_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.mcp251x_priv = type { i32, i32 }
%struct.spi_transfer = type { i32, i32, i32, i32 }
%struct.spi_message = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"spi transfer failed: ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, i32)* @mcp251x_spi_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp251x_spi_trans(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mcp251x_priv*, align 8
  %6 = alloca %struct.spi_transfer, align 4
  %7 = alloca %struct.spi_message, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = call %struct.mcp251x_priv* @spi_get_drvdata(%struct.spi_device* %9)
  store %struct.mcp251x_priv* %10, %struct.mcp251x_priv** %5, align 8
  %11 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %6, i32 0, i32 0
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %6, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %6, i32 0, i32 2
  %15 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %5, align 8
  %16 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %6, i32 0, i32 3
  %19 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %5, align 8
  %20 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 4
  %22 = call i32 @spi_message_init(%struct.spi_message* %7)
  %23 = call i32 @spi_message_add_tail(%struct.spi_transfer* %6, %struct.spi_message* %7)
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = call i32 @spi_sync(%struct.spi_device* %24, %struct.spi_message* %7)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %30 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %29, i32 0, i32 0
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %2
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local %struct.mcp251x_priv* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_message*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
