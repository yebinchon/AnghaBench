; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_mtd_dataflash.c_jedec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_mtd_dataflash.c_jedec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flash_info = type { i32 }
%struct.spi_device = type { i32 }

@OP_READ_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"error %d reading JEDEC ID\0A\00", align 1
@CFI_MFR_ATMEL = common dso_local global i64 0, align 8
@DATAFLASH_SHIFT_EXTID = common dso_local global i32 0, align 4
@DATAFLASH_SHIFT_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"JEDEC id %016llx not handled\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.flash_info* (%struct.spi_device*)* @jedec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.flash_info* @jedec_probe(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.flash_info*, align 8
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i64], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.flash_info*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %10 = load i64, i64* @OP_READ_ID, align 8
  store i64 %10, i64* %5, align 8
  %11 = bitcast [4 x i64]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 32, i1 false)
  store i32 5, i32* %8, align 4
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %14 = call i32 @spi_write_then_read(%struct.spi_device* %12, i64* %5, i32 1, i64* %13, i32 5)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @dev_dbg(i32* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = call %struct.flash_info* @ERR_PTR(i32 %22)
  store %struct.flash_info* %23, %struct.flash_info** %2, align 8
  br label %63

24:                                               ; preds = %1
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %26 = load i64, i64* %25, align 16
  %27 = load i64, i64* @CFI_MFR_ATMEL, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store %struct.flash_info* null, %struct.flash_info** %2, align 8
  br label %63

30:                                               ; preds = %24
  %31 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %32 = bitcast i64* %31 to i32*
  %33 = call i32 @be64_to_cpup(i32* %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @DATAFLASH_SHIFT_EXTID, align 4
  %37 = ashr i32 %35, %36
  %38 = call %struct.flash_info* @jedec_lookup(%struct.spi_device* %34, i32 %37, i32 1)
  store %struct.flash_info* %38, %struct.flash_info** %9, align 8
  %39 = load %struct.flash_info*, %struct.flash_info** %9, align 8
  %40 = call i32 @IS_ERR(%struct.flash_info* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %30
  %43 = load %struct.flash_info*, %struct.flash_info** %9, align 8
  store %struct.flash_info* %43, %struct.flash_info** %2, align 8
  br label %63

44:                                               ; preds = %30
  %45 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @DATAFLASH_SHIFT_ID, align 4
  %48 = ashr i32 %46, %47
  %49 = call %struct.flash_info* @jedec_lookup(%struct.spi_device* %45, i32 %48, i32 0)
  store %struct.flash_info* %49, %struct.flash_info** %9, align 8
  %50 = load %struct.flash_info*, %struct.flash_info** %9, align 8
  %51 = call i32 @IS_ERR(%struct.flash_info* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %44
  %54 = load %struct.flash_info*, %struct.flash_info** %9, align 8
  store %struct.flash_info* %54, %struct.flash_info** %2, align 8
  br label %63

55:                                               ; preds = %44
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 0
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @dev_warn(i32* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  %62 = call %struct.flash_info* @ERR_PTR(i32 %61)
  store %struct.flash_info* %62, %struct.flash_info** %2, align 8
  br label %63

63:                                               ; preds = %55, %53, %42, %29, %17
  %64 = load %struct.flash_info*, %struct.flash_info** %2, align 8
  ret %struct.flash_info* %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i64*, i32, i64*, i32) #2

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #2

declare dso_local %struct.flash_info* @ERR_PTR(i32) #2

declare dso_local i32 @be64_to_cpup(i32*) #2

declare dso_local %struct.flash_info* @jedec_lookup(%struct.spi_device*, i32, i32) #2

declare dso_local i32 @IS_ERR(%struct.flash_info*) #2

declare dso_local i32 @dev_warn(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
