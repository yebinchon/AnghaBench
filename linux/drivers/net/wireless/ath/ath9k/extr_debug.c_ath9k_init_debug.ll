; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_debug.c_ath9k_init_debug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_debug.c_ath9k_init_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.ath_common = type { i64 }
%struct.ath_softc = type { %struct.TYPE_14__, %struct.TYPE_15__*, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"ath9k\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@read_file_dma = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@read_file_interrupt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"xmit\00", align 1
@read_file_xmit = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"queues\00", align 1
@read_file_queues = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@read_file_misc = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@read_file_reset = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"rx_chainmask\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"tx_chainmask\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ani\00", align 1
@fops_ani = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"paprd\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"regidx\00", align 1
@fops_regidx = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"regval\00", align 1
@fops_regval = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"ignore_extcca\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"regdump\00", align 1
@fops_regdump = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"dump_nfcal\00", align 1
@read_file_dump_nfcal = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"gpio_mask\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"gpio_val\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"antenna_diversity\00", align 1
@fops_antenna_diversity = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [4 x i8] c"tpc\00", align 1
@fops_tpc = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [12 x i8] c"nf_override\00", align 1
@fops_nf_override = common dso_local global i32 0, align 4
@fops_ackto = common dso_local global i32 0, align 4
@fops_bt_ant_diversity = common dso_local global i32 0, align 4
@fops_btcoex = common dso_local global i32 0, align 4
@fops_debug = common dso_local global i32 0, align 4
@fops_wow = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_init_debug(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca %struct.ath_softc*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %6)
  store %struct.ath_common* %7, %struct.ath_common** %4, align 8
  %8 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %9 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ath_softc*
  store %struct.ath_softc* %11, %struct.ath_softc** %5, align 8
  %12 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %13 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %12, i32 0, i32 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %21 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %24 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %232

31:                                               ; preds = %1
  %32 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %33 = call i32 @ath9k_dfs_init_debug(%struct.ath_softc* %32)
  %34 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %35 = call i32 @ath9k_tx99_init_debug(%struct.ath_softc* %34)
  %36 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %37 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %36, i32 0, i32 3
  %38 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %39 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ath9k_cmn_spectral_init_debug(i32* %37, i32 %41)
  %43 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %44 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %47 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @read_file_dma, align 4
  %51 = call i32 @debugfs_create_devm_seqfile(i32 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %53 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %56 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @read_file_interrupt, align 4
  %60 = call i32 @debugfs_create_devm_seqfile(i32 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %62 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %65 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @read_file_xmit, align 4
  %69 = call i32 @debugfs_create_devm_seqfile(i32 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %71 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %74 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @read_file_queues, align 4
  %78 = call i32 @debugfs_create_devm_seqfile(i32 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %80 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %83 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @read_file_misc, align 4
  %87 = call i32 @debugfs_create_devm_seqfile(i32 %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %89 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %92 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @read_file_reset, align 4
  %96 = call i32 @debugfs_create_devm_seqfile(i32 %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %98 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %102 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = call i32 @ath9k_cmn_debug_recv(i32 %100, i32* %104)
  %106 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %107 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %111 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = call i32 @ath9k_cmn_debug_phy_err(i32 %109, i32* %113)
  %115 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %116 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %120 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %119, i32 0, i32 2
  %121 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 256, i32 %118, i32* %120)
  %122 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %123 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %127 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %126, i32 0, i32 1
  %128 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 256, i32 %125, i32* %127)
  %129 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %130 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %134 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 384, i32 %132, %struct.ath_softc* %133, i32* @fops_ani)
  %135 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %136 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %140 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %139, i32 0, i32 1
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 384, i32 %138, i32* %143)
  %145 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %146 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %150 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 384, i32 %148, %struct.ath_softc* %149, i32* @fops_regidx)
  %151 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %152 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %156 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 384, i32 %154, %struct.ath_softc* %155, i32* @fops_regval)
  %157 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %158 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %162 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 384, i32 %160, i32* %163)
  %165 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %166 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %170 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 256, i32 %168, %struct.ath_softc* %169, i32* @fops_regdump)
  %171 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %172 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %175 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @read_file_dump_nfcal, align 4
  %179 = call i32 @debugfs_create_devm_seqfile(i32 %173, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 %177, i32 %178)
  %180 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %181 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %185 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %184, i32 0, i32 1
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %185, align 8
  %187 = call i32 @ath9k_cmn_debug_base_eeprom(i32 %183, %struct.TYPE_15__* %186)
  %188 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %189 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %193 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %192, i32 0, i32 1
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %193, align 8
  %195 = call i32 @ath9k_cmn_debug_modal_eeprom(i32 %191, %struct.TYPE_15__* %194)
  %196 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %197 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %201 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %200, i32 0, i32 1
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 1
  %204 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 384, i32 %199, i32* %203)
  %205 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %206 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %210 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %209, i32 0, i32 1
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 0
  %213 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 384, i32 %208, i32* %212)
  %214 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %215 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %219 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 256, i32 %217, %struct.ath_softc* %218, i32* @fops_antenna_diversity)
  %220 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %221 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %225 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 384, i32 %223, %struct.ath_softc* %224, i32* @fops_tpc)
  %226 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %227 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %231 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 384, i32 %229, %struct.ath_softc* %230, i32* @fops_nf_override)
  store i32 0, i32* %2, align 4
  br label %232

232:                                              ; preds = %31, %28
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @ath9k_dfs_init_debug(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_tx99_init_debug(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_cmn_spectral_init_debug(i32*, i32) #1

declare dso_local i32 @debugfs_create_devm_seqfile(i32, i8*, i32, i32) #1

declare dso_local i32 @ath9k_cmn_debug_recv(i32, i32*) #1

declare dso_local i32 @ath9k_cmn_debug_phy_err(i32, i32*) #1

declare dso_local i32 @debugfs_create_u8(i8*, i32, i32, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.ath_softc*, i32*) #1

declare dso_local i32 @debugfs_create_bool(i8*, i32, i32, i32*) #1

declare dso_local i32 @ath9k_cmn_debug_base_eeprom(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @ath9k_cmn_debug_modal_eeprom(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
