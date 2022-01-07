; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_mchp23k256.c_mchp23k256_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_mchp23k256.c_mchp23k256_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.mchp23k256_flash = type { i32, i32 }
%struct.spi_transfer = type { i8*, i64, i8* }
%struct.spi_message = type { i32 }

@MAX_CMD_SIZE = common dso_local global i32 0, align 4
@MCHP23K256_CMD_READ = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i64, i64*, i8*)* @mchp23k256_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mchp23k256_read(%struct.mtd_info* %0, i32 %1, i64 %2, i64* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.mchp23k256_flash*, align 8
  %13 = alloca [2 x %struct.spi_transfer], align 16
  %14 = alloca %struct.spi_message, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i8* %4, i8** %11, align 8
  %19 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %20 = call %struct.mchp23k256_flash* @to_mchp23k256_flash(%struct.mtd_info* %19)
  store %struct.mchp23k256_flash* %20, %struct.mchp23k256_flash** %12, align 8
  %21 = bitcast [2 x %struct.spi_transfer]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 48, i1 false)
  %22 = load i32, i32* @MAX_CMD_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %15, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %16, align 8
  %26 = call i32 @spi_message_init(%struct.spi_message* %14)
  %27 = bitcast [2 x %struct.spi_transfer]* %13 to %struct.spi_transfer**
  %28 = call i32 @memset(%struct.spi_transfer** %27, i32 0, i32 48)
  %29 = load i8, i8* @MCHP23K256_CMD_READ, align 1
  %30 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 %29, i8* %30, align 16
  %31 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %12, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @mchp23k256_addr2cmd(%struct.mchp23k256_flash* %31, i32 %32, i8* %25)
  %34 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 0
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %34, i32 0, i32 0
  store i8* %25, i8** %35, align 16
  %36 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %12, align 8
  %37 = call i64 @mchp23k256_cmdsz(%struct.mchp23k256_flash* %36)
  %38 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 0
  %39 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 0
  %41 = call i32 @spi_message_add_tail(%struct.spi_transfer* %40, %struct.spi_message* %14)
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 1
  %44 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 1
  %47 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 1
  %49 = call i32 @spi_message_add_tail(%struct.spi_transfer* %48, %struct.spi_message* %14)
  %50 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %12, align 8
  %51 = getelementptr inbounds %struct.mchp23k256_flash, %struct.mchp23k256_flash* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %12, align 8
  %54 = getelementptr inbounds %struct.mchp23k256_flash, %struct.mchp23k256_flash* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @spi_sync(i32 %55, %struct.spi_message* %14)
  store i32 %56, i32* %17, align 4
  %57 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %12, align 8
  %58 = getelementptr inbounds %struct.mchp23k256_flash, %struct.mchp23k256_flash* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* %17, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %5
  %63 = load i32, i32* %17, align 4
  store i32 %63, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %81

64:                                               ; preds = %5
  %65 = load i64*, i64** %10, align 8
  %66 = icmp ne i64* %65, null
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %14, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp ugt i64 %70, %23
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %14, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = sub i64 %75, %23
  %77 = load i64*, i64** %10, align 8
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, %76
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %72, %67, %64
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %81

81:                                               ; preds = %80, %62
  %82 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local %struct.mchp23k256_flash* @to_mchp23k256_flash(%struct.mtd_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer**, i32, i32) #1

declare dso_local i32 @mchp23k256_addr2cmd(%struct.mchp23k256_flash*, i32, i8*) #1

declare dso_local i64 @mchp23k256_cmdsz(%struct.mchp23k256_flash*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
