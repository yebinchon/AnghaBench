; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_tp_la_show3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_tp_la_show3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.field_desc = type { i8*, i32, i32 }
%struct.seq_file = type { i32 }

@tp_la_show3.tp_la1 = internal global [46 x %struct.field_desc] [%struct.field_desc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 56, i32 8 }, %struct.field_desc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 48, i32 8 }, %struct.field_desc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 47, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 46, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 45, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 44, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 43, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 42, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 41, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 40, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 39, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 38, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 37, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 36, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 35, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 34, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i32 33, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i32 32, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i32 28, i32 4 }, %struct.field_desc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 27, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 26, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 25, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i32 24, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 23, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i32 22, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 21, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i32 20, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i32 18, i32 2 }, %struct.field_desc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i32 17, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i32 16, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i32 15, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i32 14, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 13, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 12, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i32 11, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i32 10, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0), i32 8, i32 2 }, %struct.field_desc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i32 7, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i32 6, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0), i32 5, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0), i32 4, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i32 3, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i32 2, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), i32 1, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i32 0, i32 1 }, %struct.field_desc zeroinitializer], align 16
@.str = private unnamed_addr constant [9 x i8] c"CplCmdIn\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"CplCmdOut\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ESynOut\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"EAckOut\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"EFinOut\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ERstOut\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"SynIn\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"AckIn\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"FinIn\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"RstIn\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"DataIn\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"DataInVld\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"PadIn\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"RxBufEmpty\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"RxDdp\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"RxFbCongestion\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"TxFbCongestion\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"TxPktSumSrdy\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"RcfUlpType\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Eread\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Ebypass\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"Esave\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"Static0\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"Cread\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"Cbypass\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"Csave\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"CPktOut\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"RxPagePoolFull\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"RxLpbkPkt\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"TxLpbkPkt\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"RxVfValid\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"SynLearned\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"SetDelEntry\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"SetInvEntry\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"CpcmdDvld\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"CpcmdSave\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"RxPstructsFull\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"EpcmdDvld\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"EpcmdFlush\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"EpcmdTrimPrefix\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"EpcmdTrimPostfix\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"ERssIp4Pkt\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"ERssIp6Pkt\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"ERssTcpUdpPkt\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"ERssFceFipPkt\00", align 1
@tp_la_show3.tp_la2 = internal global [44 x %struct.field_desc] [%struct.field_desc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 56, i32 8 }, %struct.field_desc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i32 55, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 52, i32 3 }, %struct.field_desc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 44, i32 8 }, %struct.field_desc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 43, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 42, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 41, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 40, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 39, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 38, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 37, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 36, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 35, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 34, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i32 33, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i32 32, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i32 28, i32 4 }, %struct.field_desc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 27, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 26, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 25, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i32 24, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 23, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i32 22, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 21, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i32 20, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i32 18, i32 2 }, %struct.field_desc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i32 17, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i32 16, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i32 15, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i32 14, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 13, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 12, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i32 11, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i32 10, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0), i32 8, i32 2 }, %struct.field_desc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i32 7, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i32 6, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0), i32 5, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0), i32 4, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i32 3, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i32 2, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), i32 1, i32 1 }, %struct.field_desc { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i32 0, i32 1 }, %struct.field_desc zeroinitializer], align 16
@.str.45 = private unnamed_addr constant [9 x i8] c"MpsVfVld\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"MpsPf\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"MpsVf\00", align 1
@tp_la0 = common dso_local global %struct.field_desc* null, align 8
@TPLA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*, i32)* @tp_la_show3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tp_la_show3(%struct.seq_file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to i64*
  store i64* %9, i64** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %14 = call i32 @seq_putc(%struct.seq_file* %13, i8 signext 10)
  br label %15

15:                                               ; preds = %12, %3
  %16 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %17 = load i64*, i64** %7, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.field_desc*, %struct.field_desc** @tp_la0, align 8
  %21 = call i32 @field_desc_show(%struct.seq_file* %16, i64 %19, %struct.field_desc* %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @TPLA_SIZE, align 4
  %24 = sdiv i32 %23, 2
  %25 = sub nsw i32 %24, 1
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %15
  %28 = load i64*, i64** %7, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, -1
  br i1 %31, label %32, label %46

32:                                               ; preds = %27, %15
  %33 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %34 = load i64*, i64** %7, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %7, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @BIT(i32 17)
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, %struct.field_desc* getelementptr inbounds ([44 x %struct.field_desc], [44 x %struct.field_desc]* @tp_la_show3.tp_la2, i64 0, i64 0), %struct.field_desc* getelementptr inbounds ([46 x %struct.field_desc], [46 x %struct.field_desc]* @tp_la_show3.tp_la1, i64 0, i64 0)
  %45 = call i32 @field_desc_show(%struct.seq_file* %33, i64 %36, %struct.field_desc* %44)
  br label %46

46:                                               ; preds = %32, %27
  ret i32 0
}

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @field_desc_show(%struct.seq_file*, i64, %struct.field_desc*) #1

declare dso_local i64 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
