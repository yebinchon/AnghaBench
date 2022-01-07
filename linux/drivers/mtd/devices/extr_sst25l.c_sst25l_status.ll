; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_sst25l.c_sst25l_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_sst25l.c_sst25l_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst25l_flash = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i8*, i8*, i32 }

@SST25L_CMD_RDSR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst25l_flash*, i32*)* @sst25l_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst25l_status(%struct.sst25l_flash* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst25l_flash*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.spi_message, align 4
  %7 = alloca %struct.spi_transfer, align 8
  %8 = alloca [2 x i8], align 1
  %9 = alloca i32, align 4
  store %struct.sst25l_flash* %0, %struct.sst25l_flash** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = call i32 @spi_message_init(%struct.spi_message* %6)
  %11 = call i32 @memset(%struct.spi_transfer* %7, i32 0, i32 24)
  %12 = load i8, i8* @SST25L_CMD_RDSR, align 1
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  store i8 -1, i8* %14, align 1
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %7, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %7, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %7, i32 0, i32 2
  store i32 2, i32* %19, align 8
  %20 = call i32 @spi_message_add_tail(%struct.spi_transfer* %7, %struct.spi_message* %6)
  %21 = load %struct.sst25l_flash*, %struct.sst25l_flash** %4, align 8
  %22 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @spi_sync(i32 %23, %struct.spi_message* %6)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %34

29:                                               ; preds = %2
  %30 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %29, %27
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
