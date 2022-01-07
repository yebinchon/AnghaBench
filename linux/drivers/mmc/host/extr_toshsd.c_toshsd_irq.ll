; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c_toshsd_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c_toshsd_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toshsd_host = type { i32, i64, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@SD_CARDSTATUS = common dso_local global i64 0, align 8
@SD_INTMASKCARD = common dso_local global i64 0, align 8
@IRQ_DONT_CARE_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"IRQ status:%x mask:%x\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@SD_BUF_CMD_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Timeout\0A\00", align 1
@SD_BUF_CRC_ERR = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"BadCRC\0A\00", align 1
@SD_BUF_ILLEGAL_ACCESS = common dso_local global i32 0, align 4
@SD_BUF_CMD_INDEX_ERR = common dso_local global i32 0, align 4
@SD_BUF_STOP_BIT_END_ERR = common dso_local global i32 0, align 4
@SD_BUF_OVERFLOW = common dso_local global i32 0, align 4
@SD_BUF_UNDERFLOW = common dso_local global i32 0, align 4
@SD_BUF_DATA_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Buffer status error: { %s%s%s%s%s%s}\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"ILLEGAL_ACC \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"CMD_INDEX \00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"STOPBIT_END \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"OVERFLOW \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"UNDERFLOW \00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"DATA_TIMEOUT \00", align 1
@SD_ERRORSTATUS0 = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [51 x i8] c"detail error status { %s%s%s%s%s%s%s%s%s%s%s%s%s}\0A\00", align 1
@SD_ERR0_RESP_CMD_ERR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"RESP_CMD \00", align 1
@SD_ERR0_RESP_NON_CMD12_END_BIT_ERR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"RESP_END_BIT \00", align 1
@SD_ERR0_RESP_CMD12_END_BIT_ERR = common dso_local global i32 0, align 4
@SD_ERR0_READ_DATA_END_BIT_ERR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [19 x i8] c"READ_DATA_END_BIT \00", align 1
@SD_ERR0_WRITE_CRC_STATUS_END_BIT_ERR = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [19 x i8] c"WRITE_CMD_END_BIT \00", align 1
@SD_ERR0_RESP_NON_CMD12_CRC_ERR = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"RESP_CRC \00", align 1
@SD_ERR0_RESP_CMD12_CRC_ERR = common dso_local global i32 0, align 4
@SD_ERR0_READ_DATA_CRC_ERR = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [15 x i8] c"READ_DATA_CRC \00", align 1
@SD_ERR0_WRITE_CMD_CRC_ERR = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"WRITE_CMD_CRC \00", align 1
@SD_ERR1_NO_CMD_RESP = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [13 x i8] c"NO_CMD_RESP \00", align 1
@SD_ERR1_TIMEOUT_READ_DATA = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [19 x i8] c"READ_DATA_TIMEOUT \00", align 1
@SD_ERR1_TIMEOUT_CRS_STATUS = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [20 x i8] c"CRS_STATUS_TIMEOUT \00", align 1
@SD_ERR1_TIMEOUT_CRC_BUSY = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [18 x i8] c"CRC_BUSY_TIMEOUT \00", align 1
@EIO = common dso_local global i32 0, align 4
@SD_CARD_RESP_END = common dso_local global i32 0, align 4
@SD_CARD_CARD_INSERTED_0 = common dso_local global i32 0, align 4
@SD_CARD_CARD_REMOVED_0 = common dso_local global i32 0, align 4
@SD_BUF_READ_ENABLE = common dso_local global i32 0, align 4
@SD_BUF_WRITE_ENABLE = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@SD_CARD_RW_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @toshsd_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toshsd_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.toshsd_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.toshsd_host*
  store %struct.toshsd_host* %13, %struct.toshsd_host** %5, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %16 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %19 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SD_CARDSTATUS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @ioread32(i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %25 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SD_INTMASKCARD, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @ioread32(i64 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = load i32, i32* @IRQ_DONT_CARE_BITS, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  store i32 %36, i32* %6, align 4
  %37 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %38 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %37, i32 0, i32 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %2
  %47 = load i32, i32* @IRQ_NONE, align 4
  store i32 %47, i32* %11, align 4
  br label %358

48:                                               ; preds = %2
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @SD_BUF_CMD_TIMEOUT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i32, i32* @ETIMEDOUT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %10, align 4
  %56 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %57 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %56, i32 0, i32 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %224

61:                                               ; preds = %48
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @SD_BUF_CRC_ERR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load i32, i32* @EILSEQ, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %10, align 4
  %69 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %70 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %69, i32 0, i32 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = call i32 (i32*, i8*, ...) @dev_err(i32* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %223

74:                                               ; preds = %61
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @SD_BUF_ILLEGAL_ACCESS, align 4
  %77 = load i32, i32* @SD_BUF_CMD_INDEX_ERR, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @SD_BUF_STOP_BIT_END_ERR, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @SD_BUF_OVERFLOW, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @SD_BUF_UNDERFLOW, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @SD_BUF_DATA_TIMEOUT, align 4
  %86 = or i32 %84, %85
  %87 = and i32 %75, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %222

89:                                               ; preds = %74
  %90 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %91 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %90, i32 0, i32 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @SD_BUF_ILLEGAL_ACCESS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @SD_BUF_CMD_INDEX_ERR, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @SD_BUF_STOP_BIT_END_ERR, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @SD_BUF_OVERFLOW, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @SD_BUF_UNDERFLOW, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @SD_BUF_DATA_TIMEOUT, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %130 = call i32 (i32*, i8*, ...) @dev_err(i32* %93, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %99, i8* %105, i8* %111, i8* %117, i8* %123, i8* %129)
  %131 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %132 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @SD_ERRORSTATUS0, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @ioread32(i64 %135)
  store i32 %136, i32* %9, align 4
  %137 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %138 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %137, i32 0, i32 4
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @SD_ERR0_RESP_CMD_ERR, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @SD_ERR0_RESP_NON_CMD12_END_BIT_ERR, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @SD_ERR0_RESP_CMD12_END_BIT_ERR, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @SD_ERR0_READ_DATA_END_BIT_ERR, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @SD_ERR0_WRITE_CRC_STATUS_END_BIT_ERR, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @SD_ERR0_RESP_NON_CMD12_CRC_ERR, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  %175 = zext i1 %174 to i64
  %176 = select i1 %174, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @SD_ERR0_RESP_CMD12_CRC_ERR, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* @SD_ERR0_READ_DATA_CRC_ERR, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* @SD_ERR0_WRITE_CMD_CRC_ERR, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* @SD_ERR1_NO_CMD_RESP, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* @SD_ERR1_TIMEOUT_READ_DATA, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* @SD_ERR1_TIMEOUT_CRS_STATUS, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* @SD_ERR1_TIMEOUT_CRC_BUSY, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %219 = call i32 (i32*, i8*, ...) @dev_err(i32* %140, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0), i8* %146, i8* %152, i8* %158, i8* %164, i8* %170, i8* %176, i8* %182, i8* %188, i8* %194, i8* %200, i8* %206, i8* %212, i8* %218)
  %220 = load i32, i32* @EIO, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %10, align 4
  br label %222

222:                                              ; preds = %89, %74
  br label %223

223:                                              ; preds = %222, %66
  br label %224

224:                                              ; preds = %223, %53
  %225 = load i32, i32* %10, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %268

227:                                              ; preds = %224
  %228 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %229 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %228, i32 0, i32 3
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = icmp ne %struct.TYPE_6__* %230, null
  br i1 %231, label %232, label %238

232:                                              ; preds = %227
  %233 = load i32, i32* %10, align 4
  %234 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %235 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %234, i32 0, i32 3
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  store i32 %233, i32* %237, align 4
  br label %238

238:                                              ; preds = %232, %227
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* @ETIMEDOUT, align 4
  %241 = sub nsw i32 0, %240
  %242 = icmp eq i32 %239, %241
  br i1 %242, label %243, label %256

243:                                              ; preds = %238
  %244 = load i32, i32* %8, align 4
  %245 = load i32, i32* @SD_BUF_CMD_TIMEOUT, align 4
  %246 = load i32, i32* @SD_CARD_RESP_END, align 4
  %247 = or i32 %245, %246
  %248 = xor i32 %247, -1
  %249 = and i32 %244, %248
  %250 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %251 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @SD_CARDSTATUS, align 8
  %254 = add nsw i64 %252, %253
  %255 = call i32 @iowrite32(i32 %249, i64 %254)
  br label %267

256:                                              ; preds = %238
  %257 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %258 = call i32 @toshsd_init(%struct.toshsd_host* %257)
  %259 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %260 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %259, i32 0, i32 2
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %260, align 8
  %262 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %263 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %262, i32 0, i32 2
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 0
  %266 = call i32 @__toshsd_set_ios(%struct.TYPE_7__* %261, i32* %265)
  br label %358

267:                                              ; preds = %243
  br label %268

268:                                              ; preds = %267, %224
  %269 = load i32, i32* %6, align 4
  %270 = load i32, i32* @SD_CARD_CARD_INSERTED_0, align 4
  %271 = load i32, i32* @SD_CARD_CARD_REMOVED_0, align 4
  %272 = or i32 %270, %271
  %273 = and i32 %269, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %300

275:                                              ; preds = %268
  %276 = load i32, i32* %8, align 4
  %277 = load i32, i32* @SD_CARD_CARD_REMOVED_0, align 4
  %278 = load i32, i32* @SD_CARD_CARD_INSERTED_0, align 4
  %279 = or i32 %277, %278
  %280 = xor i32 %279, -1
  %281 = and i32 %276, %280
  %282 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %283 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @SD_CARDSTATUS, align 8
  %286 = add nsw i64 %284, %285
  %287 = call i32 @iowrite32(i32 %281, i64 %286)
  %288 = load i32, i32* %6, align 4
  %289 = load i32, i32* @SD_CARD_CARD_INSERTED_0, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %275
  %293 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %294 = call i32 @toshsd_init(%struct.toshsd_host* %293)
  br label %295

295:                                              ; preds = %292, %275
  %296 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %297 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %296, i32 0, i32 2
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %297, align 8
  %299 = call i32 @mmc_detect_change(%struct.TYPE_7__* %298, i32 1)
  br label %300

300:                                              ; preds = %295, %268
  %301 = load i32, i32* %6, align 4
  %302 = load i32, i32* @SD_BUF_READ_ENABLE, align 4
  %303 = load i32, i32* @SD_BUF_WRITE_ENABLE, align 4
  %304 = or i32 %302, %303
  %305 = and i32 %301, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %321

307:                                              ; preds = %300
  %308 = load i32, i32* %8, align 4
  %309 = load i32, i32* @SD_BUF_WRITE_ENABLE, align 4
  %310 = load i32, i32* @SD_BUF_READ_ENABLE, align 4
  %311 = or i32 %309, %310
  %312 = xor i32 %311, -1
  %313 = and i32 %308, %312
  %314 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %315 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @SD_CARDSTATUS, align 8
  %318 = add nsw i64 %316, %317
  %319 = call i32 @iowrite32(i32 %313, i64 %318)
  %320 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %320, i32* %11, align 4
  br label %358

321:                                              ; preds = %300
  %322 = load i32, i32* %6, align 4
  %323 = load i32, i32* @SD_CARD_RESP_END, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %339

326:                                              ; preds = %321
  %327 = load i32, i32* %8, align 4
  %328 = load i32, i32* @SD_CARD_RESP_END, align 4
  %329 = xor i32 %328, -1
  %330 = and i32 %327, %329
  %331 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %332 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @SD_CARDSTATUS, align 8
  %335 = add nsw i64 %333, %334
  %336 = call i32 @iowrite32(i32 %330, i64 %335)
  %337 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %338 = call i32 @toshsd_cmd_irq(%struct.toshsd_host* %337)
  br label %339

339:                                              ; preds = %326, %321
  %340 = load i32, i32* %6, align 4
  %341 = load i32, i32* @SD_CARD_RW_END, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %357

344:                                              ; preds = %339
  %345 = load i32, i32* %8, align 4
  %346 = load i32, i32* @SD_CARD_RW_END, align 4
  %347 = xor i32 %346, -1
  %348 = and i32 %345, %347
  %349 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %350 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %349, i32 0, i32 1
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* @SD_CARDSTATUS, align 8
  %353 = add nsw i64 %351, %352
  %354 = call i32 @iowrite32(i32 %348, i64 %353)
  %355 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %356 = call i32 @toshsd_data_end_irq(%struct.toshsd_host* %355)
  br label %357

357:                                              ; preds = %344, %339
  br label %358

358:                                              ; preds = %357, %307, %256, %46
  %359 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %360 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %359, i32 0, i32 0
  %361 = call i32 @spin_unlock(i32* %360)
  %362 = load i32, i32* %11, align 4
  ret i32 %362
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @toshsd_init(%struct.toshsd_host*) #1

declare dso_local i32 @__toshsd_set_ios(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @mmc_detect_change(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @toshsd_cmd_irq(%struct.toshsd_host*) #1

declare dso_local i32 @toshsd_data_end_irq(%struct.toshsd_host*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
