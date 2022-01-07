; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_open_vpaths.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_open_vpaths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { i32, i32, %struct.TYPE_21__*, %struct.TYPE_18__, i32, %struct.TYPE_20__**, i32, %struct.TYPE_30__, i32, %struct.TYPE_19__*, i32, i32, %struct.vxge_vpath* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_30__ = type { i32, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.vxge_hw_vp_config* }
%struct.vxge_hw_vp_config = type { %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.vxge_vpath = type { i64, i32, %struct.TYPE_20__*, %struct.TYPE_17__, %struct.TYPE_16__, i32 }
%struct.TYPE_17__ = type { i32, i32, i64, %struct.TYPE_29__, %struct.__vxge_hw_ring*, i32, %struct.TYPE_21__* }
%struct.TYPE_29__ = type { i32 }
%struct.__vxge_hw_ring = type { i32 }
%struct.TYPE_16__ = type { i64, i32, i8*, %struct.TYPE_28__, i32, %struct.TYPE_21__*, i64, %struct.__vxge_hw_fifo* }
%struct.TYPE_28__ = type { i32 }
%struct.__vxge_hw_fifo = type { i32 }
%struct.vxge_hw_vpath_attr = type { i64, %struct.TYPE_27__, %struct.TYPE_26__ }
%struct.TYPE_27__ = type { i32, %struct.TYPE_17__*, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_16__*, i32, i32 }

@RTI_T1A_RX_URANGE_A = common dso_local global i32 0, align 4
@RTI_T1A_RX_URANGE_B = common dso_local global i32 0, align 4
@RTI_T1A_RX_URANGE_C = common dso_local global i32 0, align 4
@TTI_T1A_TX_UFC_A = common dso_local global i32 0, align 4
@TTI_T1A_TX_UFC_B = common dso_local global i32 0, align 4
@VXGE_T1A_TTI_LTIMER_VAL = common dso_local global i32 0, align 4
@VXGE_T1A_TTI_RTIMER_VAL = common dso_local global i32 0, align 4
@vxge_xmit_compl = common dso_local global i32 0, align 4
@vxge_tx_term = common dso_local global i32 0, align 4
@vxge_rx_1b_compl = common dso_local global i32 0, align 4
@vxge_rx_initial_replenish = common dso_local global i32 0, align 4
@vxge_rx_term = common dso_local global i32 0, align 4
@VXGE_HW_OK = common dso_local global i32 0, align 4
@VXGE_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: vpath: %d failed to open with status: %d\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxgedev*)* @vxge_open_vpaths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxge_open_vpaths(%struct.vxgedev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vxgedev*, align 8
  %4 = alloca %struct.vxge_hw_vpath_attr, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vxge_vpath*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vxge_hw_vp_config*, align 8
  store %struct.vxgedev* %0, %struct.vxgedev** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %280, %1
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %13 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %283

16:                                               ; preds = %10
  %17 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %18 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %17, i32 0, i32 12
  %19 = load %struct.vxge_vpath*, %struct.vxge_vpath** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %19, i64 %21
  store %struct.vxge_vpath* %22, %struct.vxge_vpath** %6, align 8
  %23 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %24 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @vxge_assert(i32 %25)
  %27 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %28 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %27, i32 0, i32 11
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %84, label %31

31:                                               ; preds = %16
  %32 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %33 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %32, i32 0, i32 9
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = load %struct.vxge_hw_vp_config*, %struct.vxge_hw_vp_config** %36, align 8
  %38 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %39 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.vxge_hw_vp_config, %struct.vxge_hw_vp_config* %37, i64 %40
  store %struct.vxge_hw_vp_config* %41, %struct.vxge_hw_vp_config** %9, align 8
  %42 = load i32, i32* @RTI_T1A_RX_URANGE_A, align 4
  %43 = load %struct.vxge_hw_vp_config*, %struct.vxge_hw_vp_config** %9, align 8
  %44 = getelementptr inbounds %struct.vxge_hw_vp_config, %struct.vxge_hw_vp_config* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @RTI_T1A_RX_URANGE_B, align 4
  %47 = load %struct.vxge_hw_vp_config*, %struct.vxge_hw_vp_config** %9, align 8
  %48 = getelementptr inbounds %struct.vxge_hw_vp_config, %struct.vxge_hw_vp_config* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @RTI_T1A_RX_URANGE_C, align 4
  %51 = load %struct.vxge_hw_vp_config*, %struct.vxge_hw_vp_config** %9, align 8
  %52 = getelementptr inbounds %struct.vxge_hw_vp_config, %struct.vxge_hw_vp_config* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @TTI_T1A_TX_UFC_A, align 4
  %55 = load %struct.vxge_hw_vp_config*, %struct.vxge_hw_vp_config** %9, align 8
  %56 = getelementptr inbounds %struct.vxge_hw_vp_config, %struct.vxge_hw_vp_config* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 5
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @TTI_T1A_TX_UFC_B, align 4
  %59 = load %struct.vxge_hw_vp_config*, %struct.vxge_hw_vp_config** %9, align 8
  %60 = getelementptr inbounds %struct.vxge_hw_vp_config, %struct.vxge_hw_vp_config* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 4
  store i32 %58, i32* %61, align 4
  %62 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %63 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %62, i32 0, i32 10
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @TTI_T1A_TX_UFC_C(i32 %64)
  %66 = load %struct.vxge_hw_vp_config*, %struct.vxge_hw_vp_config** %9, align 8
  %67 = getelementptr inbounds %struct.vxge_hw_vp_config, %struct.vxge_hw_vp_config* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 3
  store i32 %65, i32* %68, align 4
  %69 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %70 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @TTI_T1A_TX_UFC_D(i32 %71)
  %73 = load %struct.vxge_hw_vp_config*, %struct.vxge_hw_vp_config** %9, align 8
  %74 = getelementptr inbounds %struct.vxge_hw_vp_config, %struct.vxge_hw_vp_config* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 2
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @VXGE_T1A_TTI_LTIMER_VAL, align 4
  %77 = load %struct.vxge_hw_vp_config*, %struct.vxge_hw_vp_config** %9, align 8
  %78 = getelementptr inbounds %struct.vxge_hw_vp_config, %struct.vxge_hw_vp_config* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @VXGE_T1A_TTI_RTIMER_VAL, align 4
  %81 = load %struct.vxge_hw_vp_config*, %struct.vxge_hw_vp_config** %9, align 8
  %82 = getelementptr inbounds %struct.vxge_hw_vp_config, %struct.vxge_hw_vp_config* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 4
  br label %84

84:                                               ; preds = %31, %16
  %85 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %86 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.vxge_hw_vpath_attr, %struct.vxge_hw_vpath_attr* %4, i32 0, i32 0
  store i64 %87, i64* %88, align 8
  %89 = load i32, i32* @vxge_xmit_compl, align 4
  %90 = getelementptr inbounds %struct.vxge_hw_vpath_attr, %struct.vxge_hw_vpath_attr* %4, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @vxge_tx_term, align 4
  %93 = getelementptr inbounds %struct.vxge_hw_vpath_attr, %struct.vxge_hw_vpath_attr* %4, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = getelementptr inbounds %struct.vxge_hw_vpath_attr, %struct.vxge_hw_vpath_attr* %4, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 0
  store i32 4, i32* %96, align 8
  %97 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %98 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.vxge_hw_vpath_attr, %struct.vxge_hw_vpath_attr* %4, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 1
  store %struct.TYPE_16__* %98, %struct.TYPE_16__** %100, align 8
  %101 = load i32, i32* @vxge_rx_1b_compl, align 4
  %102 = getelementptr inbounds %struct.vxge_hw_vpath_attr, %struct.vxge_hw_vpath_attr* %4, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @vxge_rx_initial_replenish, align 4
  %105 = getelementptr inbounds %struct.vxge_hw_vpath_attr, %struct.vxge_hw_vpath_attr* %4, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @vxge_rx_term, align 4
  %108 = getelementptr inbounds %struct.vxge_hw_vpath_attr, %struct.vxge_hw_vpath_attr* %4, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = getelementptr inbounds %struct.vxge_hw_vpath_attr, %struct.vxge_hw_vpath_attr* %4, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 0
  store i32 4, i32* %111, align 8
  %112 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %113 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.vxge_hw_vpath_attr, %struct.vxge_hw_vpath_attr* %4, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 1
  store %struct.TYPE_17__* %113, %struct.TYPE_17__** %115, align 8
  %116 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %117 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %116, i32 0, i32 2
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %117, align 8
  %119 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %120 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 6
  store %struct.TYPE_21__* %118, %struct.TYPE_21__** %121, align 8
  %122 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %123 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %126 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 5
  store i32 %124, i32* %127, align 8
  %128 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %129 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %128, i32 0, i32 9
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %129, align 8
  %131 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %132 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %131, i32 0, i32 2
  %133 = call i32 @vxge_hw_vpath_open(%struct.TYPE_19__* %130, %struct.vxge_hw_vpath_attr* %4, %struct.TYPE_20__** %132)
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @VXGE_HW_OK, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %245

137:                                              ; preds = %84
  %138 = getelementptr inbounds %struct.vxge_hw_vpath_attr, %struct.vxge_hw_vpath_attr* %4, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = bitcast %struct.TYPE_16__* %140 to %struct.__vxge_hw_fifo*
  %142 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %143 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 7
  store %struct.__vxge_hw_fifo* %141, %struct.__vxge_hw_fifo** %144, align 8
  %145 = getelementptr inbounds %struct.vxge_hw_vpath_attr, %struct.vxge_hw_vpath_attr* %4, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %146, align 8
  %148 = bitcast %struct.TYPE_17__* %147 to %struct.__vxge_hw_ring*
  %149 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %150 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 4
  store %struct.__vxge_hw_ring* %148, %struct.__vxge_hw_ring** %151, align 8
  %152 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %153 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %152, i32 0, i32 7
  %154 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %157 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 6
  store i64 %155, i64* %158, align 8
  %159 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %160 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %159, i32 0, i32 2
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %160, align 8
  %162 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %163 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 5
  store %struct.TYPE_21__* %161, %struct.TYPE_21__** %164, align 8
  %165 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %166 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %165, i32 0, i32 8
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %169 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 4
  store i32 %167, i32* %170, align 4
  %171 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %172 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %173, i32 0, i32 0
  %175 = call i32 @u64_stats_init(i32* %174)
  %176 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %177 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 0
  %180 = call i32 @u64_stats_init(i32* %179)
  %181 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %182 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %181, i32 0, i32 7
  %183 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %137
  %187 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %188 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %187, i32 0, i32 2
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = call i8* @netdev_get_tx_queue(%struct.TYPE_21__* %189, i32 %190)
  %192 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %193 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 2
  store i8* %191, i8** %194, align 8
  br label %203

195:                                              ; preds = %137
  %196 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %197 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %196, i32 0, i32 2
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %197, align 8
  %199 = call i8* @netdev_get_tx_queue(%struct.TYPE_21__* %198, i32 0)
  %200 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %201 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 2
  store i8* %199, i8** %202, align 8
  br label %203

203:                                              ; preds = %195, %186
  %204 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %205 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %204, i32 0, i32 7
  %206 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %209 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %208, i32 0, i32 4
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 1
  store i32 %207, i32* %210, align 8
  %211 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %212 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 0
  store i64 0, i64* %213, align 8
  %214 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %215 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 2
  store i64 0, i64* %216, align 8
  %217 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %218 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %221 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 1
  store i32 %219, i32* %222, align 4
  %223 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %224 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %223, i32 0, i32 1
  store i32 1, i32* %224, align 8
  %225 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %226 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %225, i32 0, i32 2
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %226, align 8
  %228 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %229 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %228, i32 0, i32 5
  %230 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %229, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %230, i64 %232
  store %struct.TYPE_20__* %227, %struct.TYPE_20__** %233, align 8
  %234 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %235 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %238 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 0
  store i32 %236, i32* %239, align 8
  %240 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %241 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %242, align 4
  br label %266

245:                                              ; preds = %84
  %246 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %247 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 8
  %251 = load i32, i32* @VXGE_ERR, align 4
  %252 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %253 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %252, i32 0, i32 2
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %258 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i32, i32* %5, align 4
  %261 = call i32 @vxge_debug_init(i32 %251, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %256, i64 %259, i32 %260)
  %262 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %263 = call i32 @vxge_close_vpaths(%struct.vxgedev* %262, i32 0)
  %264 = load i32, i32* @EPERM, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %2, align 4
  br label %285

266:                                              ; preds = %203
  %267 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %268 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %267, i32 0, i32 2
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_22__*, %struct.TYPE_22__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  store i32 %273, i32* %7, align 4
  %274 = load i32, i32* %7, align 4
  %275 = call i32 @vxge_mBIT(i32 %274)
  %276 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %277 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = or i32 %278, %275
  store i32 %279, i32* %277, align 4
  br label %280

280:                                              ; preds = %266
  %281 = load i32, i32* %8, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %8, align 4
  br label %10

283:                                              ; preds = %10
  %284 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %284, i32* %2, align 4
  br label %285

285:                                              ; preds = %283, %245
  %286 = load i32, i32* %2, align 4
  ret i32 %286
}

declare dso_local i32 @vxge_assert(i32) #1

declare dso_local i32 @TTI_T1A_TX_UFC_C(i32) #1

declare dso_local i32 @TTI_T1A_TX_UFC_D(i32) #1

declare dso_local i32 @vxge_hw_vpath_open(%struct.TYPE_19__*, %struct.vxge_hw_vpath_attr*, %struct.TYPE_20__**) #1

declare dso_local i32 @u64_stats_init(i32*) #1

declare dso_local i8* @netdev_get_tx_queue(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @vxge_debug_init(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @vxge_close_vpaths(%struct.vxgedev*, i32) #1

declare dso_local i32 @vxge_mBIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
