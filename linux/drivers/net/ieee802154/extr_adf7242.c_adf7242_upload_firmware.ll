; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_adf7242.c_adf7242_upload_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_adf7242.c_adf7242_upload_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf7242_local = type { i32, i32, i64* }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32, i64* }

@CMD_SPI_PRAM_WR = common dso_local global i64 0, align 8
@REG_PRAMPG = common dso_local global i32 0, align 4
@PRAM_PAGESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adf7242_local*, i64*, i32)* @adf7242_upload_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf7242_upload_firmware(%struct.adf7242_local* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.adf7242_local*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_message, align 4
  %8 = alloca %struct.spi_transfer, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca %struct.spi_transfer, align 8
  store %struct.adf7242_local* %0, %struct.adf7242_local** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = bitcast %struct.spi_transfer* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  store i32 0, i32* %11, align 4
  %15 = load %struct.adf7242_local*, %struct.adf7242_local** %4, align 8
  %16 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %15, i32 0, i32 2
  %17 = load i64*, i64** %16, align 8
  store i64* %17, i64** %12, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 0
  store i32 2, i32* %18, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 1
  %20 = load i64*, i64** %12, align 8
  store i64* %20, i64** %19, align 8
  %21 = load i64, i64* @CMD_SPI_PRAM_WR, align 8
  %22 = load i64*, i64** %12, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  store i64 %21, i64* %23, align 8
  %24 = load i64*, i64** %12, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  store i64 0, i64* %25, align 8
  %26 = call i32 @spi_message_init(%struct.spi_message* %7)
  %27 = call i32 @spi_message_add_tail(%struct.spi_transfer* %13, %struct.spi_message* %7)
  %28 = call i32 @spi_message_add_tail(%struct.spi_transfer* %8, %struct.spi_message* %7)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %67, %3
  %31 = load i32, i32* %10, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %71

33:                                               ; preds = %30
  %34 = load %struct.adf7242_local*, %struct.adf7242_local** %4, align 8
  %35 = load i32, i32* @REG_PRAMPG, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @adf7242_write_reg(%struct.adf7242_local* %34, i32 %35, i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @PRAM_PAGESIZE, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @PRAM_PAGESIZE, align 4
  br label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %10, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load i64*, i64** %5, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @PRAM_PAGESIZE, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %48, i64 %52
  %54 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 1
  store i64* %53, i64** %54, align 8
  %55 = load %struct.adf7242_local*, %struct.adf7242_local** %4, align 8
  %56 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %55, i32 0, i32 0
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load %struct.adf7242_local*, %struct.adf7242_local** %4, align 8
  %59 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @spi_sync(i32 %60, %struct.spi_message* %7)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.adf7242_local*, %struct.adf7242_local** %4, align 8
  %63 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %45
  %68 = load i32, i32* @PRAM_PAGESIZE, align 4
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %10, align 4
  br label %30

71:                                               ; preds = %30
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #2

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #2

declare dso_local i32 @adf7242_write_reg(%struct.adf7242_local*, i32, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
