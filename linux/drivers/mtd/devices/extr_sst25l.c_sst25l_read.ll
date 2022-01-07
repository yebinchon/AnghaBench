; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_sst25l.c_sst25l_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_sst25l.c_sst25l_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.sst25l_flash = type { i32, i32 }
%struct.spi_transfer = type { i8*, i32, i8* }
%struct.spi_message = type { i32 }

@SST25L_CMD_READ = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i64, i64*, i8*)* @sst25l_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst25l_read(%struct.mtd_info* %0, i32 %1, i64 %2, i64* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.sst25l_flash*, align 8
  %13 = alloca [2 x %struct.spi_transfer], align 16
  %14 = alloca %struct.spi_message, align 4
  %15 = alloca [4 x i8], align 1
  %16 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %18 = call %struct.sst25l_flash* @to_sst25l_flash(%struct.mtd_info* %17)
  store %struct.sst25l_flash* %18, %struct.sst25l_flash** %12, align 8
  %19 = call i32 @spi_message_init(%struct.spi_message* %14)
  %20 = bitcast [2 x %struct.spi_transfer]* %13 to %struct.spi_transfer**
  %21 = call i32 @memset(%struct.spi_transfer** %20, i32 0, i32 48)
  %22 = load i8, i8* @SST25L_CMD_READ, align 1
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  store i8 %22, i8* %23, align 1
  %24 = load i32, i32* %8, align 4
  %25 = ashr i32 %24, 16
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 1
  store i8 %26, i8* %27, align 1
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %28, 8
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 2
  store i8 %30, i8* %31, align 1
  %32 = load i32, i32* %8, align 4
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 3
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %36 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 0
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 16
  %38 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 0
  %39 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %38, i32 0, i32 1
  store i32 4, i32* %39, align 8
  %40 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 0
  %41 = call i32 @spi_message_add_tail(%struct.spi_transfer* %40, %struct.spi_message* %14)
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 1
  %44 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i64, i64* %9, align 8
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 1
  %48 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 1
  %50 = call i32 @spi_message_add_tail(%struct.spi_transfer* %49, %struct.spi_message* %14)
  %51 = load %struct.sst25l_flash*, %struct.sst25l_flash** %12, align 8
  %52 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %51, i32 0, i32 0
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.sst25l_flash*, %struct.sst25l_flash** %12, align 8
  %55 = call i32 @sst25l_wait_till_ready(%struct.sst25l_flash* %54)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %5
  %59 = load %struct.sst25l_flash*, %struct.sst25l_flash** %12, align 8
  %60 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %6, align 4
  br label %87

63:                                               ; preds = %5
  %64 = load %struct.sst25l_flash*, %struct.sst25l_flash** %12, align 8
  %65 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @spi_sync(i32 %66, %struct.spi_message* %14)
  %68 = load i64*, i64** %10, align 8
  %69 = icmp ne i64* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %14, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp ugt i64 %73, 4
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %14, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = sub i64 %78, 4
  %80 = load i64*, i64** %10, align 8
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, %79
  store i64 %82, i64* %80, align 8
  br label %83

83:                                               ; preds = %75, %70, %63
  %84 = load %struct.sst25l_flash*, %struct.sst25l_flash** %12, align 8
  %85 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %83, %58
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local %struct.sst25l_flash* @to_sst25l_flash(%struct.mtd_info*) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer**, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sst25l_wait_till_ready(%struct.sst25l_flash*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
