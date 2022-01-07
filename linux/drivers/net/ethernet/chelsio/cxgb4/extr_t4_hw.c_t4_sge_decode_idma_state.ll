; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_sge_decode_idma_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_sge_decode_idma_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@t4_sge_decode_idma_state.t4_decode = internal constant [35 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [10 x i8] c"IDMA_IDLE\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"IDMA_PUSH_MORE_CPL_FIFO\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"IDMA_PUSH_CPL_MSG_HEADER_TO_FIFO\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Not used\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"IDMA_PHYSADDR_SEND_PCIEHDR\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"IDMA_PHYSADDR_SEND_PAYLOAD_FIRST\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"IDMA_PHYSADDR_SEND_PAYLOAD\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"IDMA_SEND_FIFO_TO_IMSG\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"IDMA_FL_REQ_DATA_FL_PREP\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"IDMA_FL_REQ_DATA_FL\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"IDMA_FL_DROP\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"IDMA_FL_H_REQ_HEADER_FL\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"IDMA_FL_H_SEND_PCIEHDR\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"IDMA_FL_H_PUSH_CPL_FIFO\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"IDMA_FL_H_SEND_CPL\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"IDMA_FL_H_SEND_IP_HDR_FIRST\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"IDMA_FL_H_SEND_IP_HDR\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"IDMA_FL_H_REQ_NEXT_HEADER_FL\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"IDMA_FL_H_SEND_NEXT_PCIEHDR\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"IDMA_FL_H_SEND_IP_HDR_PADDING\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"IDMA_FL_D_SEND_PCIEHDR\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"IDMA_FL_D_SEND_CPL_AND_IP_HDR\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"IDMA_FL_D_REQ_NEXT_DATA_FL\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"IDMA_FL_SEND_PCIEHDR\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"IDMA_FL_PUSH_CPL_FIFO\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"IDMA_FL_SEND_CPL\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"IDMA_FL_SEND_PAYLOAD_FIRST\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"IDMA_FL_SEND_PAYLOAD\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"IDMA_FL_REQ_NEXT_DATA_FL\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"IDMA_FL_SEND_NEXT_PCIEHDR\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"IDMA_FL_SEND_PADDING\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"IDMA_FL_SEND_COMPLETION_TO_IMSG\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"IDMA_FL_SEND_FIFO_TO_IMSG\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"IDMA_FL_REQ_DATAFL_DONE\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"IDMA_FL_REQ_HEADERFL_DONE\00", align 1
@t4_sge_decode_idma_state.t5_decode = internal constant [33 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i32 0, i32 0)], align 16
@.str.35 = private unnamed_addr constant [17 x i8] c"IDMA_ALMOST_IDLE\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"IDMA_SGEFLRFLUSH_SEND_PCIEHDR\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"IDMA_FL_DROP_SEND_INC\00", align 1
@t4_sge_decode_idma_state.t6_decode = internal constant [31 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i32 0, i32 0)], align 16
@t4_sge_decode_idma_state.sge_regs = internal constant [3 x i8*] [i8* inttoptr (i64 129 to i8*), i8* inttoptr (i64 128 to i8*), i8* inttoptr (i64 130 to i8*)], align 16
@.str.38 = private unnamed_addr constant [29 x i8] c"Unsupported chip version %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"idma state %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"idma state %d unknown\0A\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"SGE register %#x value %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_sge_decode_idma_state(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @CHELSIO_CHIP_VERSION(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %21 [
    i32 133, label %15
    i32 132, label %17
    i32 131, label %19
  ]

15:                                               ; preds = %2
  store i8** getelementptr inbounds ([35 x i8*], [35 x i8*]* @t4_sge_decode_idma_state.t4_decode, i64 0, i64 0), i8*** %5, align 8
  %16 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([35 x i8*], [35 x i8*]* @t4_sge_decode_idma_state.t4_decode, i64 0, i64 0))
  store i32 %16, i32* %6, align 4
  br label %27

17:                                               ; preds = %2
  store i8** getelementptr inbounds ([33 x i8*], [33 x i8*]* @t4_sge_decode_idma_state.t5_decode, i64 0, i64 0), i8*** %5, align 8
  %18 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([33 x i8*], [33 x i8*]* @t4_sge_decode_idma_state.t5_decode, i64 0, i64 0))
  store i32 %18, i32* %6, align 4
  br label %27

19:                                               ; preds = %2
  store i8** getelementptr inbounds ([31 x i8*], [31 x i8*]* @t4_sge_decode_idma_state.t6_decode, i64 0, i64 0), i8*** %5, align 8
  %20 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([31 x i8*], [31 x i8*]* @t4_sge_decode_idma_state.t6_decode, i64 0, i64 0))
  store i32 %20, i32* %6, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i64 0, i64 0), i32 %25)
  br label %75

27:                                               ; preds = %19, %17, %15
  %28 = load %struct.adapter*, %struct.adapter** %3, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @is_t4(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  store i8** getelementptr inbounds ([35 x i8*], [35 x i8*]* @t4_sge_decode_idma_state.t4_decode, i64 0, i64 0), i8*** %5, align 8
  %35 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([35 x i8*], [35 x i8*]* @t4_sge_decode_idma_state.t4_decode, i64 0, i64 0))
  store i32 %35, i32* %6, align 4
  br label %38

36:                                               ; preds = %27
  store i8** getelementptr inbounds ([33 x i8*], [33 x i8*]* @t4_sge_decode_idma_state.t5_decode, i64 0, i64 0), i8*** %5, align 8
  %37 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([33 x i8*], [33 x i8*]* @t4_sge_decode_idma_state.t5_decode, i64 0, i64 0))
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load %struct.adapter*, %struct.adapter** %3, align 8
  %44 = load i8**, i8*** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (%struct.adapter*, i8*, ...) @CH_WARN(%struct.adapter* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8* %48)
  br label %54

50:                                               ; preds = %38
  %51 = load %struct.adapter*, %struct.adapter** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 (%struct.adapter*, i8*, ...) @CH_WARN(%struct.adapter* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %42
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %72, %54
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @t4_sge_decode_idma_state.sge_regs, i64 0, i64 0))
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = load %struct.adapter*, %struct.adapter** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [3 x i8*], [3 x i8*]* @t4_sge_decode_idma_state.sge_regs, i64 0, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.adapter*, %struct.adapter** %3, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [3 x i8*], [3 x i8*]* @t4_sge_decode_idma_state.sge_regs, i64 0, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @t4_read_reg(%struct.adapter* %65, i8* %69)
  %71 = call i32 (%struct.adapter*, i8*, ...) @CH_WARN(%struct.adapter* %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.41, i64 0, i64 0), i8* %64, i32 %70)
  br label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %55

75:                                               ; preds = %21, %55
  ret void
}

declare dso_local i32 @CHELSIO_CHIP_VERSION(i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @is_t4(i32) #1

declare dso_local i32 @CH_WARN(%struct.adapter*, i8*, ...) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
