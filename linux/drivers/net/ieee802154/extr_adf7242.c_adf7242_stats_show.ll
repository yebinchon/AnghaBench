; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_adf7242.c_adf7242_stats_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_adf7242.c_adf7242_stats_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.adf7242_local = type { i32 }

@REG_IRQ1_SRC1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"IRQ1 = %X:\0A%s%s%s%s%s%s%s%s\0A\00", align 1
@IRQ_CCA_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"IRQ_CCA_COMPLETE\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IRQ_SFD_RX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"IRQ_SFD_RX\0A\00", align 1
@IRQ_SFD_TX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"IRQ_SFD_TX\0A\00", align 1
@IRQ_RX_PKT_RCVD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"IRQ_RX_PKT_RCVD\0A\00", align 1
@IRQ_TX_PKT_SENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"IRQ_TX_PKT_SENT\0A\00", align 1
@IRQ_CSMA_CA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"IRQ_CSMA_CA\0A\00", align 1
@IRQ_FRAME_VALID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"IRQ_FRAME_VALID\0A\00", align 1
@IRQ_ADDRESS_VALID = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"IRQ_ADDRESS_VALID\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"STATUS = %X:\0A%s\0A%s\0A%s\0A%s\0A%s%s%s%s%s\0A\00", align 1
@STAT_SPI_READY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"SPI_READY\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"SPI_BUSY\00", align 1
@STAT_IRQ_STATUS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"IRQ_PENDING\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"IRQ_CLEAR\00", align 1
@STAT_RC_READY = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"RC_READY\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"RC_BUSY\00", align 1
@STAT_CCA_RESULT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [10 x i8] c"CHAN_IDLE\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"CHAN_BUSY\00", align 1
@RC_STATUS_IDLE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [15 x i8] c"RC_STATUS_IDLE\00", align 1
@RC_STATUS_MEAS = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [15 x i8] c"RC_STATUS_MEAS\00", align 1
@RC_STATUS_PHY_RDY = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [18 x i8] c"RC_STATUS_PHY_RDY\00", align 1
@RC_STATUS_RX = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [13 x i8] c"RC_STATUS_RX\00", align 1
@RC_STATUS_TX = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [13 x i8] c"RC_STATUS_TX\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"RSSI = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @adf7242_stats_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf7242_stats_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.adf7242_local*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.adf7242_local* @spi_get_drvdata(i32 %10)
  store %struct.adf7242_local* %11, %struct.adf7242_local** %5, align 8
  %12 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %13 = call i32 @adf7242_status(%struct.adf7242_local* %12, i32* %6)
  %14 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %15 = load i32, i32* @REG_IRQ1_SRC1, align 4
  %16 = call i32 @adf7242_read_reg(%struct.adf7242_local* %14, i32 %15, i32* %7)
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @IRQ_CCA_COMPLETE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @IRQ_SFD_RX, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @IRQ_SFD_TX, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @IRQ_RX_PKT_RCVD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @IRQ_TX_PKT_SENT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @IRQ_CSMA_CA, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @IRQ_FRAME_VALID, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @IRQ_ADDRESS_VALID, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %67 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %24, i8* %30, i8* %36, i8* %42, i8* %48, i8* %54, i8* %60, i8* %66)
  %68 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @STAT_SPI_READY, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0)
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @STAT_IRQ_STATUS, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @STAT_RC_READY, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0)
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @STAT_CCA_RESULT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0)
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, 15
  %96 = load i32, i32* @RC_STATUS_IDLE, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %100 = load i32, i32* %6, align 4
  %101 = and i32 %100, 15
  %102 = load i32, i32* @RC_STATUS_MEAS, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %106 = load i32, i32* %6, align 4
  %107 = and i32 %106, 15
  %108 = load i32, i32* @RC_STATUS_PHY_RDY, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %112 = load i32, i32* %6, align 4
  %113 = and i32 %112, 15
  %114 = load i32, i32* @RC_STATUS_RX, align 4
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %118 = load i32, i32* %6, align 4
  %119 = and i32 %118, 15
  %120 = load i32, i32* @RC_STATUS_TX, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %124 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %69, i8* %75, i8* %81, i8* %87, i8* %93, i8* %99, i8* %105, i8* %111, i8* %117, i8* %123)
  %125 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %126 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %127 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i32 %128)
  ret i32 0
}

declare dso_local %struct.adf7242_local* @spi_get_drvdata(i32) #1

declare dso_local i32 @adf7242_status(%struct.adf7242_local*, i32*) #1

declare dso_local i32 @adf7242_read_reg(%struct.adf7242_local*, i32, i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
