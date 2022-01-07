; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_transfer_pio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_transfer_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_host = type { %struct.TYPE_3__*, i64, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@SDHSTS = common dso_local global i64 0, align 8
@SDHSTS_CRC16_ERROR = common dso_local global i32 0, align 4
@SDHSTS_CRC7_ERROR = common dso_local global i32 0, align 4
@SDHSTS_FIFO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s transfer error - HSTS %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@SDHSTS_CMD_TIME_OUT = common dso_local global i32 0, align 4
@SDHSTS_REW_TIME_OUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"%s timeout error - HSTS %08x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_host*)* @bcm2835_transfer_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_transfer_pio(%struct.bcm2835_host* %0) #0 {
  %2 = alloca %struct.bcm2835_host*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcm2835_host* %0, %struct.bcm2835_host** %2, align 8
  %6 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %7 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %3, align 8
  %10 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %11 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MMC_DATA_READ, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @bcm2835_transfer_block_pio(%struct.bcm2835_host* %19, i32 %20)
  %22 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %23 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SDHSTS, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SDHSTS_CRC16_ERROR, align 4
  %30 = load i32, i32* @SDHSTS_CRC7_ERROR, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SDHSTS_FIFO_ERROR, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %28, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %1
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %42)
  %44 = load i32, i32* @EILSEQ, align 4
  %45 = sub nsw i32 0, %44
  %46 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %47 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 4
  br label %72

50:                                               ; preds = %1
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @SDHSTS_CMD_TIME_OUT, align 4
  %53 = load i32, i32* @SDHSTS_REW_TIME_OUT, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %50
  %58 = load %struct.device*, %struct.device** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %62, i32 %63)
  %65 = load i32, i32* @ETIMEDOUT, align 4
  %66 = sub nsw i32 0, %65
  %67 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %68 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %57, %50
  br label %72

72:                                               ; preds = %71, %36
  ret void
}

declare dso_local i32 @bcm2835_transfer_block_pio(%struct.bcm2835_host*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
