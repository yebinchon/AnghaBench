; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_cmdq_prepare_wqe_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_cmdq_prepare_wqe_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_cmdq_wqe = type { %struct.TYPE_6__, %struct.hinic_cmdq_wqe_lcmd }
%struct.TYPE_6__ = type { %struct.hinic_cmdq_wqe_scmd }
%struct.hinic_cmdq_wqe_scmd = type { %struct.hinic_ctrl, %struct.TYPE_7__ }
%struct.hinic_ctrl = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.hinic_cmdq_wqe_lcmd = type { %struct.hinic_ctrl, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32 }

@DATA_SGE = common dso_local global i32 0, align 4
@CTRL_SECT_LEN = common dso_local global i32 0, align 4
@CTRL_DIRECT_SECT_LEN = common dso_local global i32 0, align 4
@PI = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@MOD = common dso_local global i32 0, align 4
@ACK_TYPE = common dso_local global i32 0, align 4
@BUFDESC_LEN = common dso_local global i32 0, align 4
@COMPLETE_FMT = common dso_local global i32 0, align 4
@DATA_FMT = common dso_local global i32 0, align 4
@CEQ_SET = common dso_local global i32 0, align 4
@COMPLETE_REQ = common dso_local global i32 0, align 4
@COMPLETE_LEN = common dso_local global i32 0, align 4
@COMPLETE_SECT_LEN = common dso_local global i32 0, align 4
@CTRL_LEN = common dso_local global i32 0, align 4
@TOGGLED_WRAPPED = common dso_local global i32 0, align 4
@ARM = common dso_local global i32 0, align 4
@CMDQ_SET_ARM_CMD = common dso_local global i64 0, align 8
@HINIC_MOD_COMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_cmdq_wqe*, i32, i32, i32, i64, i32, i32, i32, i32)* @cmdq_prepare_wqe_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmdq_prepare_wqe_ctrl(%struct.hinic_cmdq_wqe* %0, i32 %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.hinic_cmdq_wqe*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.hinic_cmdq_wqe_lcmd*, align 8
  %20 = alloca %struct.hinic_cmdq_wqe_scmd*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.hinic_ctrl*, align 8
  %23 = alloca i32, align 4
  store %struct.hinic_cmdq_wqe* %0, %struct.hinic_cmdq_wqe** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %24 = load i32, i32* %17, align 4
  %25 = load i32, i32* @DATA_SGE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %9
  %28 = load %struct.hinic_cmdq_wqe*, %struct.hinic_cmdq_wqe** %10, align 8
  %29 = getelementptr inbounds %struct.hinic_cmdq_wqe, %struct.hinic_cmdq_wqe* %28, i32 0, i32 1
  store %struct.hinic_cmdq_wqe_lcmd* %29, %struct.hinic_cmdq_wqe_lcmd** %19, align 8
  %30 = load %struct.hinic_cmdq_wqe_lcmd*, %struct.hinic_cmdq_wqe_lcmd** %19, align 8
  %31 = getelementptr inbounds %struct.hinic_cmdq_wqe_lcmd, %struct.hinic_cmdq_wqe_lcmd* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.hinic_cmdq_wqe_lcmd*, %struct.hinic_cmdq_wqe_lcmd** %19, align 8
  %34 = getelementptr inbounds %struct.hinic_cmdq_wqe_lcmd, %struct.hinic_cmdq_wqe_lcmd* %33, i32 0, i32 0
  store %struct.hinic_ctrl* %34, %struct.hinic_ctrl** %22, align 8
  %35 = load i32, i32* @CTRL_SECT_LEN, align 4
  store i32 %35, i32* %21, align 4
  br label %46

36:                                               ; preds = %9
  %37 = load %struct.hinic_cmdq_wqe*, %struct.hinic_cmdq_wqe** %10, align 8
  %38 = getelementptr inbounds %struct.hinic_cmdq_wqe, %struct.hinic_cmdq_wqe* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store %struct.hinic_cmdq_wqe_scmd* %39, %struct.hinic_cmdq_wqe_scmd** %20, align 8
  %40 = load %struct.hinic_cmdq_wqe_scmd*, %struct.hinic_cmdq_wqe_scmd** %20, align 8
  %41 = getelementptr inbounds %struct.hinic_cmdq_wqe_scmd, %struct.hinic_cmdq_wqe_scmd* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.hinic_cmdq_wqe_scmd*, %struct.hinic_cmdq_wqe_scmd** %20, align 8
  %44 = getelementptr inbounds %struct.hinic_cmdq_wqe_scmd, %struct.hinic_cmdq_wqe_scmd* %43, i32 0, i32 0
  store %struct.hinic_ctrl* %44, %struct.hinic_ctrl** %22, align 8
  %45 = load i32, i32* @CTRL_DIRECT_SECT_LEN, align 4
  store i32 %45, i32* %21, align 4
  br label %46

46:                                               ; preds = %36, %27
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* @PI, align 4
  %49 = call i32 @HINIC_CMDQ_CTRL_SET(i32 %47, i32 %48)
  %50 = load i64, i64* %14, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @CMD, align 4
  %53 = call i32 @HINIC_CMDQ_CTRL_SET(i32 %51, i32 %52)
  %54 = or i32 %49, %53
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @MOD, align 4
  %57 = call i32 @HINIC_CMDQ_CTRL_SET(i32 %55, i32 %56)
  %58 = or i32 %54, %57
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @ACK_TYPE, align 4
  %61 = call i32 @HINIC_CMDQ_CTRL_SET(i32 %59, i32 %60)
  %62 = or i32 %58, %61
  %63 = load %struct.hinic_ctrl*, %struct.hinic_ctrl** %22, align 8
  %64 = getelementptr inbounds %struct.hinic_ctrl, %struct.hinic_ctrl* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* @BUFDESC_LEN, align 4
  %67 = call i32 @HINIC_CMDQ_WQE_HEADER_SET(i32 %65, i32 %66)
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* @COMPLETE_FMT, align 4
  %70 = call i32 @HINIC_CMDQ_WQE_HEADER_SET(i32 %68, i32 %69)
  %71 = or i32 %67, %70
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* @DATA_FMT, align 4
  %74 = call i32 @HINIC_CMDQ_WQE_HEADER_SET(i32 %72, i32 %73)
  %75 = or i32 %71, %74
  %76 = load i32, i32* @CEQ_SET, align 4
  %77 = load i32, i32* @COMPLETE_REQ, align 4
  %78 = call i32 @HINIC_CMDQ_WQE_HEADER_SET(i32 %76, i32 %77)
  %79 = or i32 %75, %78
  %80 = load i32, i32* @COMPLETE_LEN, align 4
  %81 = load i32, i32* @COMPLETE_SECT_LEN, align 4
  %82 = call i32 @HINIC_CMDQ_WQE_HEADER_SET(i32 %80, i32 %81)
  %83 = or i32 %79, %82
  %84 = load i32, i32* %21, align 4
  %85 = load i32, i32* @CTRL_LEN, align 4
  %86 = call i32 @HINIC_CMDQ_WQE_HEADER_SET(i32 %84, i32 %85)
  %87 = or i32 %83, %86
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @TOGGLED_WRAPPED, align 4
  %90 = call i32 @HINIC_CMDQ_WQE_HEADER_SET(i32 %88, i32 %89)
  %91 = or i32 %87, %90
  %92 = load %struct.hinic_cmdq_wqe*, %struct.hinic_cmdq_wqe** %10, align 8
  %93 = call %struct.TYPE_8__* @CMDQ_WQE_HEADER(%struct.hinic_cmdq_wqe* %92)
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 4
  %95 = load %struct.hinic_cmdq_wqe*, %struct.hinic_cmdq_wqe** %10, align 8
  %96 = call %struct.TYPE_8__* @CMDQ_WQE_HEADER(%struct.hinic_cmdq_wqe* %95)
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %23, align 4
  %99 = load i32, i32* %23, align 4
  %100 = load i32, i32* @ARM, align 4
  %101 = call i32 @HINIC_SAVED_DATA_CLEAR(i32 %99, i32 %100)
  store i32 %101, i32* %23, align 4
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* @CMDQ_SET_ARM_CMD, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %46
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @HINIC_MOD_COMM, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %105
  %110 = load i32, i32* @ARM, align 4
  %111 = call i32 @HINIC_SAVED_DATA_SET(i32 1, i32 %110)
  %112 = load %struct.hinic_cmdq_wqe*, %struct.hinic_cmdq_wqe** %10, align 8
  %113 = call %struct.TYPE_8__* @CMDQ_WQE_HEADER(%struct.hinic_cmdq_wqe* %112)
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %111
  store i32 %116, i32* %114, align 4
  br label %122

117:                                              ; preds = %105, %46
  %118 = load i32, i32* %23, align 4
  %119 = load %struct.hinic_cmdq_wqe*, %struct.hinic_cmdq_wqe** %10, align 8
  %120 = call %struct.TYPE_8__* @CMDQ_WQE_HEADER(%struct.hinic_cmdq_wqe* %119)
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  br label %122

122:                                              ; preds = %117, %109
  ret void
}

declare dso_local i32 @HINIC_CMDQ_CTRL_SET(i32, i32) #1

declare dso_local i32 @HINIC_CMDQ_WQE_HEADER_SET(i32, i32) #1

declare dso_local %struct.TYPE_8__* @CMDQ_WQE_HEADER(%struct.hinic_cmdq_wqe*) #1

declare dso_local i32 @HINIC_SAVED_DATA_CLEAR(i32, i32) #1

declare dso_local i32 @HINIC_SAVED_DATA_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
