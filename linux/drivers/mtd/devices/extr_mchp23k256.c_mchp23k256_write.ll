; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_mchp23k256.c_mchp23k256_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_mchp23k256.c_mchp23k256_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.mchp23k256_flash = type { i32, i32 }
%struct.spi_transfer = type { i8*, i64 }
%struct.spi_message = type { i32 }

@MAX_CMD_SIZE = common dso_local global i32 0, align 4
@MCHP23K256_CMD_WRITE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i64, i64*, i8*)* @mchp23k256_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mchp23k256_write(%struct.mtd_info* %0, i32 %1, i64 %2, i64* %3, i8* %4) #0 {
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
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 32, i1 false)
  %22 = load i32, i32* @MAX_CMD_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %15, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %16, align 8
  %26 = call i32 @spi_message_init(%struct.spi_message* %14)
  %27 = load i8, i8* @MCHP23K256_CMD_WRITE, align 1
  %28 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 %27, i8* %28, align 16
  %29 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %12, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @mchp23k256_addr2cmd(%struct.mchp23k256_flash* %29, i32 %30, i8* %25)
  %32 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 0
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 0
  store i8* %25, i8** %33, align 16
  %34 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %12, align 8
  %35 = call i64 @mchp23k256_cmdsz(%struct.mchp23k256_flash* %34)
  %36 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 0
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 0
  %39 = call i32 @spi_message_add_tail(%struct.spi_transfer* %38, %struct.spi_message* %14)
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 1
  %42 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 16
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 1
  %45 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 1
  %47 = call i32 @spi_message_add_tail(%struct.spi_transfer* %46, %struct.spi_message* %14)
  %48 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %12, align 8
  %49 = getelementptr inbounds %struct.mchp23k256_flash, %struct.mchp23k256_flash* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %12, align 8
  %52 = getelementptr inbounds %struct.mchp23k256_flash, %struct.mchp23k256_flash* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @spi_sync(i32 %53, %struct.spi_message* %14)
  store i32 %54, i32* %17, align 4
  %55 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %12, align 8
  %56 = getelementptr inbounds %struct.mchp23k256_flash, %struct.mchp23k256_flash* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %17, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %5
  %61 = load i32, i32* %17, align 4
  store i32 %61, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %79

62:                                               ; preds = %5
  %63 = load i64*, i64** %10, align 8
  %64 = icmp ne i64* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %14, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ugt i64 %68, %23
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %14, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = sub i64 %73, %23
  %75 = load i64*, i64** %10, align 8
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, %74
  store i64 %77, i64* %75, align 8
  br label %78

78:                                               ; preds = %70, %65, %62
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %79

79:                                               ; preds = %78, %60
  %80 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local %struct.mchp23k256_flash* @to_mchp23k256_flash(%struct.mtd_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

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
