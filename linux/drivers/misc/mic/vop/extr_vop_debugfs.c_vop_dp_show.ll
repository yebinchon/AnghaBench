; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/vop/extr_vop_debugfs.c_vop_dp_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/vop/extr_vop_debugfs.c_vop_dp_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.vop_info* }
%struct.vop_info = type { i32, %struct.vop_device* }
%struct.vop_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mic_bootparam* (%struct.vop_device*)* }
%struct.mic_bootparam = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mic_device_desc = type { i32, i32, i32, i32, i32 }
%struct.mic_device_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mic_vqconfig = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Bootparam: magic 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Bootparam: h2c_config_db %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Bootparam: node_id %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Bootparam: c2h_scif_db %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Bootparam: h2c_scif_db %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Bootparam: scif_host_dma_addr 0x%llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Bootparam: scif_card_dma_addr 0x%llx\0A\00", align 1
@MIC_DP_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"Type %d \00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Num VQ %d \00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Feature Len %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Config Len %d \00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Shutdown Status %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"vqconfig[%d]: \00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"address 0x%llx \00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"num %d \00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"used address 0x%llx\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"Features: Host 0x%x \00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Guest 0x%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"config[%d]=%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"Device control:\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Config Change %d \00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Vdev reset %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"Guest Ack %d \00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"Host ack %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"Used address updated %d \00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"Vdev 0x%llx\0A\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"c2h doorbell %d \00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"h2c doorbell %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @vop_dp_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vop_dp_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mic_device_desc*, align 8
  %6 = alloca %struct.mic_device_ctrl*, align 8
  %7 = alloca %struct.mic_vqconfig*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vop_info*, align 8
  %11 = alloca %struct.vop_device*, align 8
  %12 = alloca %struct.mic_bootparam*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %15, i32 0, i32 0
  %17 = load %struct.vop_info*, %struct.vop_info** %16, align 8
  store %struct.vop_info* %17, %struct.vop_info** %10, align 8
  %18 = load %struct.vop_info*, %struct.vop_info** %10, align 8
  %19 = getelementptr inbounds %struct.vop_info, %struct.vop_info* %18, i32 0, i32 1
  %20 = load %struct.vop_device*, %struct.vop_device** %19, align 8
  store %struct.vop_device* %20, %struct.vop_device** %11, align 8
  %21 = load %struct.vop_device*, %struct.vop_device** %11, align 8
  %22 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.mic_bootparam* (%struct.vop_device*)*, %struct.mic_bootparam* (%struct.vop_device*)** %24, align 8
  %26 = load %struct.vop_device*, %struct.vop_device** %11, align 8
  %27 = call %struct.mic_bootparam* %25(%struct.vop_device* %26)
  store %struct.mic_bootparam* %27, %struct.mic_bootparam** %12, align 8
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = load %struct.mic_bootparam*, %struct.mic_bootparam** %12, align 8
  %30 = getelementptr inbounds %struct.mic_bootparam, %struct.mic_bootparam* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = load %struct.mic_bootparam*, %struct.mic_bootparam** %12, align 8
  %35 = getelementptr inbounds %struct.mic_bootparam, %struct.mic_bootparam* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = load %struct.mic_bootparam*, %struct.mic_bootparam** %12, align 8
  %40 = getelementptr inbounds %struct.mic_bootparam, %struct.mic_bootparam* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = load %struct.mic_bootparam*, %struct.mic_bootparam** %12, align 8
  %45 = getelementptr inbounds %struct.mic_bootparam, %struct.mic_bootparam* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %49 = load %struct.mic_bootparam*, %struct.mic_bootparam** %12, align 8
  %50 = getelementptr inbounds %struct.mic_bootparam, %struct.mic_bootparam* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = load %struct.mic_bootparam*, %struct.mic_bootparam** %12, align 8
  %55 = getelementptr inbounds %struct.mic_bootparam, %struct.mic_bootparam* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = load %struct.mic_bootparam*, %struct.mic_bootparam** %12, align 8
  %60 = getelementptr inbounds %struct.mic_bootparam, %struct.mic_bootparam* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %61)
  store i32 28, i32* %13, align 4
  br label %63

63:                                               ; preds = %228, %2
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @MIC_DP_SIZE, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %235

67:                                               ; preds = %63
  %68 = load %struct.mic_bootparam*, %struct.mic_bootparam** %12, align 8
  %69 = bitcast %struct.mic_bootparam* %68 to i8*
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr i8, i8* %69, i64 %71
  %73 = bitcast i8* %72 to %struct.mic_device_desc*
  store %struct.mic_device_desc* %73, %struct.mic_device_desc** %5, align 8
  %74 = load %struct.mic_device_desc*, %struct.mic_device_desc** %5, align 8
  %75 = bitcast %struct.mic_device_desc* %74 to i8*
  %76 = load %struct.mic_device_desc*, %struct.mic_device_desc** %5, align 8
  %77 = call i32 @mic_aligned_desc_size(%struct.mic_device_desc* %76)
  %78 = sext i32 %77 to i64
  %79 = getelementptr i8, i8* %75, i64 %78
  %80 = bitcast i8* %79 to %struct.mic_device_ctrl*
  store %struct.mic_device_ctrl* %80, %struct.mic_device_ctrl** %6, align 8
  %81 = load %struct.mic_device_desc*, %struct.mic_device_desc** %5, align 8
  %82 = getelementptr inbounds %struct.mic_device_desc, %struct.mic_device_desc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %67
  br label %235

86:                                               ; preds = %67
  %87 = load %struct.mic_device_desc*, %struct.mic_device_desc** %5, align 8
  %88 = getelementptr inbounds %struct.mic_device_desc, %struct.mic_device_desc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %228

92:                                               ; preds = %86
  %93 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %94 = load %struct.mic_device_desc*, %struct.mic_device_desc** %5, align 8
  %95 = getelementptr inbounds %struct.mic_device_desc, %struct.mic_device_desc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %96)
  %98 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %99 = load %struct.mic_device_desc*, %struct.mic_device_desc** %5, align 8
  %100 = getelementptr inbounds %struct.mic_device_desc, %struct.mic_device_desc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %101)
  %103 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %104 = load %struct.mic_device_desc*, %struct.mic_device_desc** %5, align 8
  %105 = getelementptr inbounds %struct.mic_device_desc, %struct.mic_device_desc* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %103, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %106)
  %108 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %109 = load %struct.mic_device_desc*, %struct.mic_device_desc** %5, align 8
  %110 = getelementptr inbounds %struct.mic_device_desc, %struct.mic_device_desc* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %111)
  %113 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %114 = load %struct.mic_device_desc*, %struct.mic_device_desc** %5, align 8
  %115 = getelementptr inbounds %struct.mic_device_desc, %struct.mic_device_desc* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %113, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %116)
  store i32 0, i32* %14, align 4
  br label %118

118:                                              ; preds = %148, %92
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.mic_device_desc*, %struct.mic_device_desc** %5, align 8
  %121 = getelementptr inbounds %struct.mic_device_desc, %struct.mic_device_desc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %151

124:                                              ; preds = %118
  %125 = load %struct.mic_device_desc*, %struct.mic_device_desc** %5, align 8
  %126 = call %struct.mic_vqconfig* @mic_vq_config(%struct.mic_device_desc* %125)
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.mic_vqconfig, %struct.mic_vqconfig* %126, i64 %128
  store %struct.mic_vqconfig* %129, %struct.mic_vqconfig** %7, align 8
  %130 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %131 = load i32, i32* %14, align 4
  %132 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %130, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %131)
  %133 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %134 = load %struct.mic_vqconfig*, %struct.mic_vqconfig** %7, align 8
  %135 = getelementptr inbounds %struct.mic_vqconfig, %struct.mic_vqconfig* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %133, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %136)
  %138 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %139 = load %struct.mic_vqconfig*, %struct.mic_vqconfig** %7, align 8
  %140 = getelementptr inbounds %struct.mic_vqconfig, %struct.mic_vqconfig* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %141)
  %143 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %144 = load %struct.mic_vqconfig*, %struct.mic_vqconfig** %7, align 8
  %145 = getelementptr inbounds %struct.mic_vqconfig, %struct.mic_vqconfig* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %143, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %124
  %149 = load i32, i32* %14, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %14, align 4
  br label %118

151:                                              ; preds = %118
  %152 = load %struct.mic_device_desc*, %struct.mic_device_desc** %5, align 8
  %153 = call i64 @mic_vq_features(%struct.mic_device_desc* %152)
  %154 = inttoptr i64 %153 to i32*
  store i32* %154, i32** %8, align 8
  %155 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %156 = load i32*, i32** %8, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %155, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %158)
  %160 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %161 = load i32*, i32** %8, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %160, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 %163)
  %165 = load %struct.mic_device_desc*, %struct.mic_device_desc** %5, align 8
  %166 = call i32* @mic_vq_configspace(%struct.mic_device_desc* %165)
  store i32* %166, i32** %9, align 8
  store i32 0, i32* %14, align 4
  br label %167

167:                                              ; preds = %182, %151
  %168 = load i32, i32* %14, align 4
  %169 = load %struct.mic_device_desc*, %struct.mic_device_desc** %5, align 8
  %170 = getelementptr inbounds %struct.mic_device_desc, %struct.mic_device_desc* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %185

173:                                              ; preds = %167
  %174 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %175 = load i32, i32* %14, align 4
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %14, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %174, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 %175, i32 %180)
  br label %182

182:                                              ; preds = %173
  %183 = load i32, i32* %14, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %14, align 4
  br label %167

185:                                              ; preds = %167
  %186 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %187 = call i32 @seq_puts(%struct.seq_file* %186, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %188 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %189 = load %struct.mic_device_ctrl*, %struct.mic_device_ctrl** %6, align 8
  %190 = getelementptr inbounds %struct.mic_device_ctrl, %struct.mic_device_ctrl* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %188, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 %191)
  %193 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %194 = load %struct.mic_device_ctrl*, %struct.mic_device_ctrl** %6, align 8
  %195 = getelementptr inbounds %struct.mic_device_ctrl, %struct.mic_device_ctrl* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %193, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 %196)
  %198 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %199 = load %struct.mic_device_ctrl*, %struct.mic_device_ctrl** %6, align 8
  %200 = getelementptr inbounds %struct.mic_device_ctrl, %struct.mic_device_ctrl* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %198, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 %201)
  %203 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %204 = load %struct.mic_device_ctrl*, %struct.mic_device_ctrl** %6, align 8
  %205 = getelementptr inbounds %struct.mic_device_ctrl, %struct.mic_device_ctrl* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %203, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i32 %206)
  %208 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %209 = load %struct.mic_device_ctrl*, %struct.mic_device_ctrl** %6, align 8
  %210 = getelementptr inbounds %struct.mic_device_ctrl, %struct.mic_device_ctrl* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %208, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i32 %211)
  %213 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %214 = load %struct.mic_device_ctrl*, %struct.mic_device_ctrl** %6, align 8
  %215 = getelementptr inbounds %struct.mic_device_ctrl, %struct.mic_device_ctrl* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 4
  %217 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %213, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i32 %216)
  %218 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %219 = load %struct.mic_device_ctrl*, %struct.mic_device_ctrl** %6, align 8
  %220 = getelementptr inbounds %struct.mic_device_ctrl, %struct.mic_device_ctrl* %219, i32 0, i32 6
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %218, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i32 %221)
  %223 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %224 = load %struct.mic_device_ctrl*, %struct.mic_device_ctrl** %6, align 8
  %225 = getelementptr inbounds %struct.mic_device_ctrl, %struct.mic_device_ctrl* %224, i32 0, i32 7
  %226 = load i32, i32* %225, align 4
  %227 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %223, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0), i32 %226)
  br label %228

228:                                              ; preds = %185, %91
  %229 = load %struct.mic_device_desc*, %struct.mic_device_desc** %5, align 8
  %230 = call i64 @mic_total_desc_size(%struct.mic_device_desc* %229)
  %231 = load i32, i32* %13, align 4
  %232 = sext i32 %231 to i64
  %233 = add nsw i64 %232, %230
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %13, align 4
  br label %63

235:                                              ; preds = %85, %63
  %236 = load %struct.vop_info*, %struct.vop_info** %10, align 8
  %237 = getelementptr inbounds %struct.vop_info, %struct.vop_info* %236, i32 0, i32 0
  %238 = call i32 @schedule_work(i32* %237)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @mic_aligned_desc_size(%struct.mic_device_desc*) #1

declare dso_local %struct.mic_vqconfig* @mic_vq_config(%struct.mic_device_desc*) #1

declare dso_local i64 @mic_vq_features(%struct.mic_device_desc*) #1

declare dso_local i32* @mic_vq_configspace(%struct.mic_device_desc*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i64 @mic_total_desc_size(%struct.mic_device_desc*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
