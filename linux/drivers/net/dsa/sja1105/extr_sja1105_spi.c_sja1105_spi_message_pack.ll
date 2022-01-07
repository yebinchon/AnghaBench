; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_spi.c_sja1105_spi_message_pack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_spi.c_sja1105_spi_message_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_spi_message = type { i32, i32, i32 }

@SJA1105_SIZE_SPI_MSG_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sja1105_spi_message*)* @sja1105_spi_message_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sja1105_spi_message_pack(i8* %0, %struct.sja1105_spi_message* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sja1105_spi_message*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.sja1105_spi_message* %1, %struct.sja1105_spi_message** %4, align 8
  %6 = load i32, i32* @SJA1105_SIZE_SPI_MSG_HEADER, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @memset(i8* %7, i32 0, i32 %8)
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.sja1105_spi_message*, %struct.sja1105_spi_message** %4, align 8
  %12 = getelementptr inbounds %struct.sja1105_spi_message, %struct.sja1105_spi_message* %11, i32 0, i32 2
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @sja1105_pack(i8* %10, i32* %12, i32 31, i32 31, i32 %13)
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.sja1105_spi_message*, %struct.sja1105_spi_message** %4, align 8
  %17 = getelementptr inbounds %struct.sja1105_spi_message, %struct.sja1105_spi_message* %16, i32 0, i32 1
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @sja1105_pack(i8* %15, i32* %17, i32 30, i32 25, i32 %18)
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.sja1105_spi_message*, %struct.sja1105_spi_message** %4, align 8
  %22 = getelementptr inbounds %struct.sja1105_spi_message, %struct.sja1105_spi_message* %21, i32 0, i32 0
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @sja1105_pack(i8* %20, i32* %22, i32 24, i32 4, i32 %23)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sja1105_pack(i8*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
