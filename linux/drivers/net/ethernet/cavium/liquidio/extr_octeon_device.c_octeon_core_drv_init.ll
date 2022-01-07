; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_device.c_octeon_core_drv_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_device.c_octeon_core_drv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_core_setup = type { i32, i32, i32, i32, i32 }
%struct.octeon_recv_info = type { %struct.octeon_recv_pkt* }
%struct.octeon_recv_pkt = type { i64*, i64, i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32, i32, i64, i64 }
%struct.octeon_device = type { i64, i64, %struct.TYPE_18__*, %struct.TYPE_17__, i32, %struct.TYPE_16__, %struct.TYPE_15__**, %struct.TYPE_10__, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i8*, i8*, i32, i32 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64, i32, i64 }

@cn6xxx = common dso_local global i32 0, align 4
@cn23xx_pf = common dso_local global i32 0, align 4
@OCT_DEV_RUNNING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Received CORE OK when device state is 0x%x\0A\00", align 1
@CVM_DRV_NIC_APP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"Config has more ports than firmware allows (%d > %d).\0A\00", align 1
@OCT_DEV_CORE_OK = common dso_local global i32 0, align 4
@core_setup = common dso_local global %struct.octeon_core_setup* null, align 8
@OCT_DROQ_INFO_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Core setup bytes expected %u found %d\0A\00", align 1
@OCT_BOARD_NAME = common dso_local global i32 0, align 4
@OCT_SERIAL_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Running %s (%llu Hz)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_core_drv_init(%struct.octeon_recv_info* %0, i8* %1) #0 {
  %3 = alloca %struct.octeon_recv_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [16 x i8], align 16
  %7 = alloca %struct.octeon_device*, align 8
  %8 = alloca %struct.octeon_recv_pkt*, align 8
  %9 = alloca %struct.octeon_core_setup*, align 8
  %10 = alloca i64, align 8
  store %struct.octeon_recv_info* %0, %struct.octeon_recv_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.octeon_device*
  store %struct.octeon_device* %12, %struct.octeon_device** %7, align 8
  %13 = load %struct.octeon_recv_info*, %struct.octeon_recv_info** %3, align 8
  %14 = getelementptr inbounds %struct.octeon_recv_info, %struct.octeon_recv_info* %13, i32 0, i32 0
  %15 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %14, align 8
  store %struct.octeon_recv_pkt* %15, %struct.octeon_recv_pkt** %8, align 8
  store %struct.octeon_core_setup* null, %struct.octeon_core_setup** %9, align 8
  store i64 0, i64* %10, align 8
  %16 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %17 = call i64 @OCTEON_CN6XXX(%struct.octeon_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %21 = load i32, i32* @cn6xxx, align 4
  %22 = call i32 @CHIP_CONF(%struct.octeon_device* %20, i32 %21)
  %23 = call i64 @CFG_GET_NUM_NIC_PORTS(i32 %22)
  store i64 %23, i64* %10, align 8
  br label %34

24:                                               ; preds = %2
  %25 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %26 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %30 = load i32, i32* @cn23xx_pf, align 4
  %31 = call i32 @CHIP_CONF(%struct.octeon_device* %29, i32 %30)
  %32 = call i64 @CFG_GET_NUM_NIC_PORTS(i32 %31)
  store i64 %32, i64* %10, align 8
  br label %33

33:                                               ; preds = %28, %24
  br label %34

34:                                               ; preds = %33, %19
  %35 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %36 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %35, i32 0, i32 4
  %37 = call i64 @atomic_read(i32* %36)
  %38 = load i64, i64* @OCT_DEV_RUNNING, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %42 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %41, i32 0, i32 2
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %46 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %45, i32 0, i32 4
  %47 = call i64 @atomic_read(i32* %46)
  %48 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %47)
  br label %246

49:                                               ; preds = %34
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %51 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %8, align 8
  %52 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @get_oct_app_string(i64 %55)
  %57 = call i32 @strncpy(i8* %50, i32 %56, i32 15)
  %58 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %8, align 8
  %59 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %64 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %63, i32 0, i32 8
  store i64 %62, i64* %64, align 8
  %65 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %8, align 8
  %66 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CVM_DRV_NIC_APP, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %49
  %73 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %8, align 8
  %74 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %79 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %78, i32 0, i32 7
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store i64 %77, i64* %80, align 8
  %81 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %8, align 8
  %82 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %87 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %86, i32 0, i32 7
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  store i64 %85, i64* %88, align 8
  br label %89

89:                                               ; preds = %72, %49
  %90 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %91 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %90, i32 0, i32 7
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %10, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %89
  %97 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %98 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %97, i32 0, i32 2
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i64, i64* %10, align 8
  %102 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %103 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %102, i32 0, i32 7
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %100, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %101, i64 %105)
  br label %246

107:                                              ; preds = %89
  %108 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %8, align 8
  %109 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %114 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  store i32 %112, i32* %115, align 8
  %116 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %8, align 8
  %117 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %122 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %121, i32 0, i32 7
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  store i64 %120, i64* %123, align 8
  %124 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %8, align 8
  %125 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %130 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  store i64 %128, i64* %131, align 8
  %132 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %8, align 8
  %133 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %138 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 8
  store i64 0, i64* %5, align 8
  br label %140

140:                                              ; preds = %160, %107
  %141 = load i64, i64* %5, align 8
  %142 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %143 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp slt i64 %141, %144
  br i1 %145, label %146, label %163

146:                                              ; preds = %140
  %147 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %148 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %152 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %151, i32 0, i32 6
  %153 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %152, align 8
  %154 = load i64, i64* %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %153, i64 %154
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  store i32 %150, i32* %159, align 4
  br label %160

160:                                              ; preds = %146
  %161 = load i64, i64* %5, align 8
  %162 = add nsw i64 %161, 1
  store i64 %162, i64* %5, align 8
  br label %140

163:                                              ; preds = %140
  %164 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %165 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %164, i32 0, i32 4
  %166 = load i32, i32* @OCT_DEV_CORE_OK, align 4
  %167 = call i32 @atomic_set(i32* %165, i32 %166)
  %168 = load %struct.octeon_core_setup*, %struct.octeon_core_setup** @core_setup, align 8
  %169 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %170 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.octeon_core_setup, %struct.octeon_core_setup* %168, i64 %171
  store %struct.octeon_core_setup* %172, %struct.octeon_core_setup** %9, align 8
  %173 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %8, align 8
  %174 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %173, i32 0, i32 0
  %175 = load i64*, i64** %174, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @OCT_DROQ_INFO_SIZE, align 8
  %179 = add i64 20, %178
  %180 = icmp ne i64 %177, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %163
  %182 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %183 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %182, i32 0, i32 2
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 0
  %186 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %8, align 8
  %187 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %186, i32 0, i32 0
  %188 = load i64*, i64** %187, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 0
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @dev_dbg(i32* %185, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 20, i64 %190)
  br label %192

192:                                              ; preds = %181, %163
  %193 = load %struct.octeon_core_setup*, %struct.octeon_core_setup** %9, align 8
  %194 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %8, align 8
  %195 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %194, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = call i64 @get_rbd(i32 %198)
  %200 = load i64, i64* @OCT_DROQ_INFO_SIZE, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i32 @memcpy(%struct.octeon_core_setup* %193, i64 %201, i32 20)
  %203 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %204 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.octeon_core_setup*, %struct.octeon_core_setup** %9, align 8
  %208 = getelementptr inbounds %struct.octeon_core_setup, %struct.octeon_core_setup* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @OCT_BOARD_NAME, align 4
  %211 = call i32 @strncpy(i8* %206, i32 %209, i32 %210)
  %212 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %213 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = load %struct.octeon_core_setup*, %struct.octeon_core_setup** %9, align 8
  %217 = getelementptr inbounds %struct.octeon_core_setup, %struct.octeon_core_setup* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @OCT_SERIAL_LEN, align 4
  %220 = call i32 @strncpy(i8* %215, i32 %218, i32 %219)
  %221 = load %struct.octeon_core_setup*, %struct.octeon_core_setup** %9, align 8
  %222 = bitcast %struct.octeon_core_setup* %221 to i32*
  %223 = call i32 @octeon_swap_8B_data(i32* %222, i32 2)
  %224 = load %struct.octeon_core_setup*, %struct.octeon_core_setup** %9, align 8
  %225 = getelementptr inbounds %struct.octeon_core_setup, %struct.octeon_core_setup* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %228 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %227, i32 0, i32 3
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 3
  store i32 %226, i32* %229, align 4
  %230 = load %struct.octeon_core_setup*, %struct.octeon_core_setup** %9, align 8
  %231 = getelementptr inbounds %struct.octeon_core_setup, %struct.octeon_core_setup* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %234 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 2
  store i32 %232, i32* %235, align 8
  %236 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %237 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %236, i32 0, i32 2
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 0
  %240 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %241 = load %struct.octeon_core_setup*, %struct.octeon_core_setup** %9, align 8
  %242 = getelementptr inbounds %struct.octeon_core_setup, %struct.octeon_core_setup* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @CVM_CAST64(i32 %243)
  %245 = call i32 @dev_info(i32* %239, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %240, i32 %244)
  br label %246

246:                                              ; preds = %192, %96, %40
  store i64 0, i64* %5, align 8
  br label %247

247:                                              ; preds = %261, %246
  %248 = load i64, i64* %5, align 8
  %249 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %8, align 8
  %250 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = icmp slt i64 %248, %251
  br i1 %252, label %253, label %264

253:                                              ; preds = %247
  %254 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %8, align 8
  %255 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %254, i32 0, i32 2
  %256 = load i32*, i32** %255, align 8
  %257 = load i64, i64* %5, align 8
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @recv_buffer_free(i32 %259)
  br label %261

261:                                              ; preds = %253
  %262 = load i64, i64* %5, align 8
  %263 = add nsw i64 %262, 1
  store i64 %263, i64* %5, align 8
  br label %247

264:                                              ; preds = %247
  %265 = load %struct.octeon_recv_info*, %struct.octeon_recv_info** %3, align 8
  %266 = call i32 @octeon_free_recv_info(%struct.octeon_recv_info* %265)
  ret i32 0
}

declare dso_local i64 @OCTEON_CN6XXX(%struct.octeon_device*) #1

declare dso_local i64 @CFG_GET_NUM_NIC_PORTS(i32) #1

declare dso_local i32 @CHIP_CONF(%struct.octeon_device*, i32) #1

declare dso_local i64 @OCTEON_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, ...) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @get_oct_app_string(i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i64) #1

declare dso_local i32 @memcpy(%struct.octeon_core_setup*, i64, i32) #1

declare dso_local i64 @get_rbd(i32) #1

declare dso_local i32 @octeon_swap_8B_data(i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i32) #1

declare dso_local i32 @CVM_CAST64(i32) #1

declare dso_local i32 @recv_buffer_free(i32) #1

declare dso_local i32 @octeon_free_recv_info(%struct.octeon_recv_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
