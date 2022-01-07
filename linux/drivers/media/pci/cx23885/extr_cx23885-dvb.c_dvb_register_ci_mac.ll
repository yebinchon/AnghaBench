; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-dvb.c_dvb_register_ci_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-dvb.c_dvb_register_ci_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netup_card_info = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_16__ = type { i32 }
%struct.cx23885_tsport = type { i32, %struct.TYPE_14__, %struct.i2c_client*, %struct.cx23885_dev* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }
%struct.i2c_client = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.cx23885_dev = type { i32, %struct.cx23885_i2c* }
%struct.cx23885_i2c = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.vb2_dvb_frontend = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.altera_ci_config = type { i32, i32*, %struct.TYPE_13__*, %struct.cx23885_dev* }
%struct.sp2_config = type { i32, i32, %struct.sp2_config*, i32, %struct.cx23885_tsport*, %struct.TYPE_13__* }
%struct.i2c_board_info = type { i32, i32, %struct.i2c_board_info*, i32, %struct.cx23885_tsport*, %struct.TYPE_13__* }

@EINVAL = common dso_local global i32 0, align 4
@dvb_register_ci_mac.cinfo = internal global %struct.netup_card_info zeroinitializer, align 8
@.str = private unnamed_addr constant [42 x i8] c"NetUP Dual DVB-S2 CI card port%d MAC=%pM\0A\00", align 1
@netup_altera_fpga_rw = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"TeVii S470 MAC= %pM\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s port %d MAC address: %pM\0A\00", align 1
@cx23885_boards = common dso_local global %struct.TYPE_16__* null, align 8
@cx23885_sp2_ci_ctrl = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"sp2\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"%s MAC address: %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx23885_tsport*)* @dvb_register_ci_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_register_ci_mac(%struct.cx23885_tsport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx23885_tsport*, align 8
  %4 = alloca %struct.cx23885_dev*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.vb2_dvb_frontend*, align 8
  %7 = alloca %struct.altera_ci_config, align 8
  %8 = alloca [256 x i32], align 16
  %9 = alloca [256 x i32], align 16
  %10 = alloca [256 x i32], align 16
  %11 = alloca %struct.sp2_config, align 8
  %12 = alloca %struct.i2c_board_info, align 8
  %13 = alloca %struct.cx23885_i2c*, align 8
  store %struct.cx23885_tsport* %0, %struct.cx23885_tsport** %3, align 8
  %14 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %15 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %14, i32 0, i32 3
  %16 = load %struct.cx23885_dev*, %struct.cx23885_dev** %15, align 8
  store %struct.cx23885_dev* %16, %struct.cx23885_dev** %4, align 8
  store %struct.i2c_client* null, %struct.i2c_client** %5, align 8
  %17 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %18 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %17, i32 0, i32 1
  %19 = call %struct.vb2_dvb_frontend* @vb2_dvb_get_frontend(%struct.TYPE_14__* %18, i32 1)
  store %struct.vb2_dvb_frontend* %19, %struct.vb2_dvb_frontend** %6, align 8
  %20 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %6, align 8
  %21 = icmp ne %struct.vb2_dvb_frontend* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %265

25:                                               ; preds = %1
  %26 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %27 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %264 [
    i32 131, label %29
    i32 130, label %62
    i32 129, label %79
    i32 134, label %111
    i32 137, label %111
    i32 135, label %111
    i32 132, label %111
    i32 136, label %167
    i32 133, label %167
    i32 128, label %167
  ]

29:                                               ; preds = %25
  %30 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %31 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %30, i32 0, i32 1
  %32 = load %struct.cx23885_i2c*, %struct.cx23885_i2c** %31, align 8
  %33 = getelementptr inbounds %struct.cx23885_i2c, %struct.cx23885_i2c* %32, i64 0
  %34 = getelementptr inbounds %struct.cx23885_i2c, %struct.cx23885_i2c* %33, i32 0, i32 1
  %35 = call i32 @netup_get_card_info(i32* %34, %struct.netup_card_info* @dvb_register_ci_mac.cinfo)
  %36 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %37 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.netup_card_info, %struct.netup_card_info* @dvb_register_ci_mac.cinfo, i32 0, i32 0), align 8
  %42 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %43 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @memcpy(i32* %40, i32* %49, i32 6)
  %51 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %52 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %55 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %53, i32* %58)
  %60 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %61 = call i32 @netup_ci_init(%struct.cx23885_tsport* %60)
  store i32 0, i32* %2, align 4
  br label %265

62:                                               ; preds = %25
  %63 = getelementptr inbounds %struct.altera_ci_config, %struct.altera_ci_config* %7, i32 0, i32 0
  %64 = load i32, i32* @netup_altera_fpga_rw, align 4
  store i32 %64, i32* %63, align 8
  %65 = getelementptr inbounds %struct.altera_ci_config, %struct.altera_ci_config* %7, i32 0, i32 1
  %66 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %6, align 8
  %67 = getelementptr inbounds %struct.vb2_dvb_frontend, %struct.vb2_dvb_frontend* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i32* %68, i32** %65, align 8
  %69 = getelementptr inbounds %struct.altera_ci_config, %struct.altera_ci_config* %7, i32 0, i32 2
  %70 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %71 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  store %struct.TYPE_13__* %72, %struct.TYPE_13__** %69, align 8
  %73 = getelementptr inbounds %struct.altera_ci_config, %struct.altera_ci_config* %7, i32 0, i32 3
  %74 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  store %struct.cx23885_dev* %74, %struct.cx23885_dev** %73, align 8
  %75 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %76 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @altera_ci_init(%struct.altera_ci_config* %7, i32 %77)
  store i32 0, i32* %2, align 4
  br label %265

79:                                               ; preds = %25
  %80 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %81 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  br label %265

85:                                               ; preds = %79
  %86 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %87 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %86, i32 0, i32 1
  %88 = load %struct.cx23885_i2c*, %struct.cx23885_i2c** %87, align 8
  %89 = getelementptr inbounds %struct.cx23885_i2c, %struct.cx23885_i2c* %88, i64 0
  %90 = getelementptr inbounds %struct.cx23885_i2c, %struct.cx23885_i2c* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  store i32 80, i32* %91, align 4
  %92 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %93 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %92, i32 0, i32 1
  %94 = load %struct.cx23885_i2c*, %struct.cx23885_i2c** %93, align 8
  %95 = getelementptr inbounds %struct.cx23885_i2c, %struct.cx23885_i2c* %94, i64 0
  %96 = getelementptr inbounds %struct.cx23885_i2c, %struct.cx23885_i2c* %95, i32 0, i32 0
  %97 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %98 = call i32 @tveeprom_read(%struct.TYPE_15__* %96, i32* %97, i32 1024)
  %99 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %100 = getelementptr inbounds i32, i32* %99, i64 160
  %101 = ptrtoint i32* %100 to i32
  %102 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %104 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %109 = getelementptr inbounds i32, i32* %108, i64 160
  %110 = call i32 @memcpy(i32* %107, i32* %109, i32 6)
  store i32 0, i32* %2, align 4
  br label %265

111:                                              ; preds = %25, %25, %25, %25
  %112 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %113 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp sgt i32 %114, 2
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %265

117:                                              ; preds = %111
  %118 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %119 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %118, i32 0, i32 1
  %120 = load %struct.cx23885_i2c*, %struct.cx23885_i2c** %119, align 8
  %121 = getelementptr inbounds %struct.cx23885_i2c, %struct.cx23885_i2c* %120, i64 0
  %122 = getelementptr inbounds %struct.cx23885_i2c, %struct.cx23885_i2c* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  store i32 80, i32* %123, align 4
  %124 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %125 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %124, i32 0, i32 1
  %126 = load %struct.cx23885_i2c*, %struct.cx23885_i2c** %125, align 8
  %127 = getelementptr inbounds %struct.cx23885_i2c, %struct.cx23885_i2c* %126, i64 0
  %128 = getelementptr inbounds %struct.cx23885_i2c, %struct.cx23885_i2c* %127, i32 0, i32 0
  %129 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %130 = call i32 @tveeprom_read(%struct.TYPE_15__* %128, i32* %129, i32 1024)
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cx23885_boards, align 8
  %132 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %133 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %140 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %143 = getelementptr inbounds i32, i32* %142, i64 192
  %144 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %145 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 %146, 1
  %148 = mul nsw i32 %147, 8
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %143, i64 %149
  %151 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %138, i32 %141, i32* %150)
  %152 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %153 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %158 = getelementptr inbounds i32, i32* %157, i64 192
  %159 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %160 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sub nsw i32 %161, 1
  %163 = mul nsw i32 %162, 8
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %158, i64 %164
  %166 = call i32 @memcpy(i32* %156, i32* %165, i32 6)
  store i32 0, i32* %2, align 4
  br label %265

167:                                              ; preds = %25, %25, %25
  %168 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %169 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %168, i32 0, i32 1
  %170 = load %struct.cx23885_i2c*, %struct.cx23885_i2c** %169, align 8
  %171 = getelementptr inbounds %struct.cx23885_i2c, %struct.cx23885_i2c* %170, i64 0
  store %struct.cx23885_i2c* %171, %struct.cx23885_i2c** %13, align 8
  %172 = call i32 @memset(%struct.sp2_config* %11, i32 0, i32 40)
  %173 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %174 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.sp2_config, %struct.sp2_config* %11, i32 0, i32 5
  store %struct.TYPE_13__* %175, %struct.TYPE_13__** %176, align 8
  %177 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %178 = getelementptr inbounds %struct.sp2_config, %struct.sp2_config* %11, i32 0, i32 4
  store %struct.cx23885_tsport* %177, %struct.cx23885_tsport** %178, align 8
  %179 = load i32, i32* @cx23885_sp2_ci_ctrl, align 4
  %180 = getelementptr inbounds %struct.sp2_config, %struct.sp2_config* %11, i32 0, i32 3
  store i32 %179, i32* %180, align 8
  %181 = bitcast %struct.i2c_board_info* %12 to %struct.sp2_config*
  %182 = call i32 @memset(%struct.sp2_config* %181, i32 0, i32 40)
  %183 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %12, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @I2C_NAME_SIZE, align 4
  %186 = call i32 @strscpy(i32 %184, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %185)
  %187 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %12, i32 0, i32 0
  store i32 64, i32* %187, align 8
  %188 = bitcast %struct.sp2_config* %11 to %struct.i2c_board_info*
  %189 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %12, i32 0, i32 2
  store %struct.i2c_board_info* %188, %struct.i2c_board_info** %189, align 8
  %190 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %12, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @request_module(i32 %191)
  %193 = load %struct.cx23885_i2c*, %struct.cx23885_i2c** %13, align 8
  %194 = getelementptr inbounds %struct.cx23885_i2c, %struct.cx23885_i2c* %193, i32 0, i32 1
  %195 = bitcast %struct.i2c_board_info* %12 to %struct.sp2_config*
  %196 = call %struct.i2c_client* @i2c_new_device(i32* %194, %struct.sp2_config* %195)
  store %struct.i2c_client* %196, %struct.i2c_client** %5, align 8
  %197 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %198 = icmp eq %struct.i2c_client* %197, null
  br i1 %198, label %205, label %199

199:                                              ; preds = %167
  %200 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %201 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %202, align 8
  %204 = icmp eq %struct.TYPE_11__* %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %199, %167
  %206 = load i32, i32* @ENODEV, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %2, align 4
  br label %265

208:                                              ; preds = %199
  %209 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %210 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @try_module_get(i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %208
  %218 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %219 = call i32 @i2c_unregister_device(%struct.i2c_client* %218)
  %220 = load i32, i32* @ENODEV, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %2, align 4
  br label %265

222:                                              ; preds = %208
  %223 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %224 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %225 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %224, i32 0, i32 2
  store %struct.i2c_client* %223, %struct.i2c_client** %225, align 8
  %226 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %227 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 1
  br i1 %229, label %230, label %231

230:                                              ; preds = %222
  store i32 0, i32* %2, align 4
  br label %265

231:                                              ; preds = %222
  %232 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %233 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %232, i32 0, i32 1
  %234 = load %struct.cx23885_i2c*, %struct.cx23885_i2c** %233, align 8
  %235 = getelementptr inbounds %struct.cx23885_i2c, %struct.cx23885_i2c* %234, i64 0
  %236 = getelementptr inbounds %struct.cx23885_i2c, %struct.cx23885_i2c* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 0
  store i32 80, i32* %237, align 4
  %238 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %239 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %238, i32 0, i32 1
  %240 = load %struct.cx23885_i2c*, %struct.cx23885_i2c** %239, align 8
  %241 = getelementptr inbounds %struct.cx23885_i2c, %struct.cx23885_i2c* %240, i64 0
  %242 = getelementptr inbounds %struct.cx23885_i2c, %struct.cx23885_i2c* %241, i32 0, i32 0
  %243 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %244 = call i32 @tveeprom_read(%struct.TYPE_15__* %242, i32* %243, i32 1024)
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cx23885_boards, align 8
  %246 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %247 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %254 = getelementptr inbounds i32, i32* %253, i64 192
  %255 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %252, i32* %254)
  %256 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %257 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %262 = getelementptr inbounds i32, i32* %261, i64 192
  %263 = call i32 @memcpy(i32* %260, i32* %262, i32 6)
  store i32 0, i32* %2, align 4
  br label %265

264:                                              ; preds = %25
  store i32 0, i32* %2, align 4
  br label %265

265:                                              ; preds = %264, %231, %230, %217, %205, %117, %116, %85, %84, %62, %29, %22
  %266 = load i32, i32* %2, align 4
  ret i32 %266
}

declare dso_local %struct.vb2_dvb_frontend* @vb2_dvb_get_frontend(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @netup_get_card_info(i32*, %struct.netup_card_info*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @netup_ci_init(%struct.cx23885_tsport*) #1

declare dso_local i32 @altera_ci_init(%struct.altera_ci_config*, i32) #1

declare dso_local i32 @tveeprom_read(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @memset(%struct.sp2_config*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @request_module(i32) #1

declare dso_local %struct.i2c_client* @i2c_new_device(i32*, %struct.sp2_config*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
