; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_mtd_dataflash.c_dataflash_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_mtd_dataflash.c_dataflash_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.dataflash* }
%struct.dataflash = type { i32, i32, %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32* }
%struct.spi_message = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"read 0x%x..0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"READ: (%x) %x %x %x\0A\00", align 1
@OP_READ_CONTINUOUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"read %x..%x --> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i32*)* @dataflash_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dataflash_read(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.dataflash*, align 8
  %12 = alloca [2 x %struct.spi_transfer], align 16
  %13 = alloca %struct.spi_message, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 0
  %19 = load %struct.dataflash*, %struct.dataflash** %18, align 8
  store %struct.dataflash* %19, %struct.dataflash** %11, align 8
  %20 = bitcast [2 x %struct.spi_transfer]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 48, i1 false)
  %21 = load %struct.dataflash*, %struct.dataflash** %11, align 8
  %22 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %7, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %30)
  %32 = load i64, i64* %7, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.dataflash*, %struct.dataflash** %11, align 8
  %35 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = udiv i32 %33, %36
  %38 = load %struct.dataflash*, %struct.dataflash** %11, align 8
  %39 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %37, %40
  %42 = load i64, i64* %7, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.dataflash*, %struct.dataflash** %11, align 8
  %45 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = urem i32 %43, %46
  %48 = add i32 %41, %47
  store i32 %48, i32* %14, align 4
  %49 = load %struct.dataflash*, %struct.dataflash** %11, align 8
  %50 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %15, align 8
  %52 = load %struct.dataflash*, %struct.dataflash** %11, align 8
  %53 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %15, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %15, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %15, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %15, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %61, i32 %64, i32 %67)
  %69 = call i32 @spi_message_init(%struct.spi_message* %13)
  %70 = load i32*, i32** %15, align 8
  %71 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %12, i64 0, i64 0
  %72 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %71, i32 0, i32 2
  store i32* %70, i32** %72, align 16
  %73 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %12, i64 0, i64 0
  %74 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %73, i32 0, i32 0
  store i32 8, i32* %74, align 16
  %75 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %12, i64 0, i64 0
  %76 = call i32 @spi_message_add_tail(%struct.spi_transfer* %75, %struct.spi_message* %13)
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %12, i64 0, i64 1
  %79 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %78, i32 0, i32 1
  store i32* %77, i32** %79, align 8
  %80 = load i64, i64* %8, align 8
  %81 = trunc i64 %80 to i32
  %82 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %12, i64 0, i64 1
  %83 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %12, i64 0, i64 1
  %85 = call i32 @spi_message_add_tail(%struct.spi_transfer* %84, %struct.spi_message* %13)
  %86 = load %struct.dataflash*, %struct.dataflash** %11, align 8
  %87 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %86, i32 0, i32 3
  %88 = call i32 @mutex_lock(i32* %87)
  %89 = load i32, i32* @OP_READ_CONTINUOUS, align 4
  %90 = load i32*, i32** %15, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %14, align 4
  %93 = lshr i32 %92, 16
  %94 = load i32*, i32** %15, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %14, align 4
  %97 = lshr i32 %96, 8
  %98 = load i32*, i32** %15, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %14, align 4
  %101 = lshr i32 %100, 0
  %102 = load i32*, i32** %15, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  store i32 %101, i32* %103, align 4
  %104 = load %struct.dataflash*, %struct.dataflash** %11, align 8
  %105 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %104, i32 0, i32 2
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = call i32 @spi_sync(%struct.TYPE_2__* %106, %struct.spi_message* %13)
  store i32 %107, i32* %16, align 4
  %108 = load %struct.dataflash*, %struct.dataflash** %11, align 8
  %109 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %108, i32 0, i32 3
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load i32, i32* %16, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %5
  %114 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %13, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %115, 8
  %117 = sext i32 %116 to i64
  %118 = load i64*, i64** %9, align 8
  store i64 %117, i64* %118, align 8
  store i32 0, i32* %16, align 4
  br label %132

119:                                              ; preds = %5
  %120 = load %struct.dataflash*, %struct.dataflash** %11, align 8
  %121 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %120, i32 0, i32 2
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i64, i64* %7, align 8
  %125 = trunc i64 %124 to i32
  %126 = load i64, i64* %7, align 8
  %127 = load i64, i64* %8, align 8
  %128 = add i64 %126, %127
  %129 = trunc i64 %128 to i32
  %130 = load i32, i32* %16, align 4
  %131 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %125, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %119, %113
  %133 = load i32, i32* %16, align 4
  ret i32 %133
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, ...) #2

declare dso_local i32 @spi_message_init(%struct.spi_message*) #2

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @spi_sync(%struct.TYPE_2__*, %struct.spi_message*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
