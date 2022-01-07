; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_qca7k_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_qca7k_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcaspi = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@qcaspi_qca7k_sync.reset_count = internal global i64 0, align 8
@QCASPI_EVENT_CPUON = common dso_local global i32 0, align 4
@SPI_REG_SIGNATURE = common dso_local global i32 0, align 4
@QCASPI_GOOD_SIGNATURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"sync: got CPU on, but signature was invalid, restart\0A\00", align 1
@SPI_REG_WRBUF_SPC_AVA = common dso_local global i32 0, align 4
@QCASPI_HW_BUF_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"sync: got CPU on, but wrbuf not empty. reset!\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"sync: got CPU on, now in sync\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"sync: bad signature, restart\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"sync: could not read signature to reset device, retry.\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"sync: resetting device.\0A\00", align 1
@SPI_REG_SPI_CONFIG = common dso_local global i32 0, align 4
@QCASPI_SLAVE_RESET_BIT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [37 x i8] c"sync: waiting for CPU on, count %u.\0A\00", align 1
@QCASPI_RESET_TIMEOUT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [42 x i8] c"sync: reset timeout, restarting process.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcaspi*, i32)* @qcaspi_qca7k_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcaspi_qca7k_sync(%struct.qcaspi* %0, i32 %1) #0 {
  %3 = alloca %struct.qcaspi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.qcaspi* %0, %struct.qcaspi** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @QCASPI_EVENT_CPUON, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %51

11:                                               ; preds = %2
  %12 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %13 = load i32, i32* @SPI_REG_SIGNATURE, align 4
  %14 = call i32 @qcaspi_read_register(%struct.qcaspi* %12, i32 %13, i64* %5)
  %15 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %16 = load i32, i32* @SPI_REG_SIGNATURE, align 4
  %17 = call i32 @qcaspi_read_register(%struct.qcaspi* %15, i32 %16, i64* %5)
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @QCASPI_GOOD_SIGNATURE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %11
  %22 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %23 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %22, i32 0, i32 0
  store i32 128, i32* %23, align 4
  %24 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %25 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %26, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %50

28:                                               ; preds = %11
  %29 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %30 = load i32, i32* @SPI_REG_WRBUF_SPC_AVA, align 4
  %31 = call i32 @qcaspi_read_register(%struct.qcaspi* %29, i32 %30, i64* %7)
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @QCASPI_HW_BUF_LEN, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %37 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %41 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %40, i32 0, i32 0
  store i32 128, i32* %41, align 4
  br label %49

42:                                               ; preds = %28
  %43 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %44 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %48 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %47, i32 0, i32 0
  store i32 130, i32* %48, align 4
  br label %128

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49, %21
  br label %51

51:                                               ; preds = %50, %2
  %52 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %53 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %128 [
    i32 130, label %55
    i32 128, label %70
    i32 129, label %104
  ]

55:                                               ; preds = %51
  %56 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %57 = load i32, i32* @SPI_REG_SIGNATURE, align 4
  %58 = call i32 @qcaspi_read_register(%struct.qcaspi* %56, i32 %57, i64* %5)
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @QCASPI_GOOD_SIGNATURE, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %64 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %63, i32 0, i32 0
  store i32 128, i32* %64, align 4
  %65 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %66 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %128

69:                                               ; preds = %55
  br label %128

70:                                               ; preds = %51
  %71 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %72 = load i32, i32* @SPI_REG_SIGNATURE, align 4
  %73 = call i32 @qcaspi_read_register(%struct.qcaspi* %71, i32 %72, i64* %5)
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @QCASPI_GOOD_SIGNATURE, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %79 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %80, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  br label %128

82:                                               ; preds = %70
  %83 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %84 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %87 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %88 = load i32, i32* @SPI_REG_SPI_CONFIG, align 4
  %89 = call i32 @qcaspi_read_register(%struct.qcaspi* %87, i32 %88, i64* %6)
  %90 = load i64, i64* @QCASPI_SLAVE_RESET_BIT, align 8
  %91 = load i64, i64* %6, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %6, align 8
  %93 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %94 = load i32, i32* @SPI_REG_SPI_CONFIG, align 4
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @qcaspi_write_register(%struct.qcaspi* %93, i32 %94, i64 %95, i32 0)
  %97 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %98 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %97, i32 0, i32 0
  store i32 129, i32* %98, align 4
  %99 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %100 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  store i64 0, i64* @qcaspi_qca7k_sync.reset_count, align 8
  br label %128

104:                                              ; preds = %51
  %105 = load i64, i64* @qcaspi_qca7k_sync.reset_count, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* @qcaspi_qca7k_sync.reset_count, align 8
  %107 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %108 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i64, i64* @qcaspi_qca7k_sync.reset_count, align 8
  %111 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %109, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 %110)
  %112 = load i64, i64* @qcaspi_qca7k_sync.reset_count, align 8
  %113 = load i64, i64* @QCASPI_RESET_TIMEOUT, align 8
  %114 = icmp sge i64 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %104
  %116 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %117 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %116, i32 0, i32 0
  store i32 128, i32* %117, align 4
  %118 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %119 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %124 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %125, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  br label %127

127:                                              ; preds = %115, %104
  br label %128

128:                                              ; preds = %42, %62, %77, %51, %127, %82, %69
  ret void
}

declare dso_local i32 @qcaspi_read_register(%struct.qcaspi*, i32, i64*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, ...) #1

declare dso_local i32 @qcaspi_write_register(%struct.qcaspi*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
