; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-cards.c_cx23885_card_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-cards.c_cx23885_card_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netup_card_info = type { i32 }
%struct.cx23885_dev = type { i32, %struct.TYPE_7__*, %struct.TYPE_8__*, i32, %struct.TYPE_9__*, i32, %struct.cx23885_tsport, %struct.cx23885_tsport }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.cx23885_tsport = type { i32, i32, i32, i32, i8* }
%struct.firmware = type { i32 }
%struct.altera_config = type { i8*, i32, %struct.cx23885_dev* }

@cx23885_card_setup.eeprom = internal global [256 x i32] zeroinitializer, align 16
@CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO = common dso_local global i8* null, align 8
@enable_885_ir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cx25840\00", align 1
@CX23885_HW_AV_CORE = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@load_fw = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"cs3308\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"dvb-netup-altera-01.fw\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"configure\00", align 1
@cx23885_card_setup.cinfo = internal global %struct.netup_card_info zeroinitializer, align 4
@netup_jtag_io = common dso_local global i32 0, align 4
@netup_card_rev = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"dvb-netup-altera-04.fw\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"NetUP card rev=0x%x fw_filename=%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [108 x i8] c"did not find the firmware file '%s'. You can use <kernel_dir>/scripts/get_dvb_firmware to get the firmware.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx23885_card_setup(%struct.cx23885_dev* %0) #0 {
  %2 = alloca %struct.cx23885_dev*, align 8
  %3 = alloca %struct.cx23885_tsport*, align 8
  %4 = alloca %struct.cx23885_tsport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.altera_config, align 8
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %2, align 8
  %10 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %11 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %10, i32 0, i32 7
  store %struct.cx23885_tsport* %11, %struct.cx23885_tsport** %3, align 8
  %12 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %13 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %12, i32 0, i32 6
  store %struct.cx23885_tsport* %13, %struct.cx23885_tsport** %4, align 8
  %14 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %15 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %14, i32 0, i32 2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %1
  %22 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %23 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %22, i32 0, i32 2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i32 80, i32* %27, align 4
  %28 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %29 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %28, i32 0, i32 2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = call i32 @tveeprom_read(%struct.TYPE_10__* %32, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @cx23885_card_setup.eeprom, i64 0, i64 0), i32 1024)
  br label %34

34:                                               ; preds = %21, %1
  %35 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %36 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %105 [
    i32 171, label %38
    i32 163, label %57
    i32 162, label %57
    i32 164, label %57
    i32 160, label %69
    i32 159, label %69
    i32 173, label %69
    i32 161, label %69
    i32 167, label %69
    i32 166, label %69
    i32 170, label %69
    i32 169, label %69
    i32 172, label %69
    i32 158, label %69
    i32 165, label %69
    i32 157, label %69
    i32 150, label %69
    i32 155, label %69
    i32 156, label %69
    i32 168, label %69
    i32 149, label %69
    i32 152, label %69
    i32 151, label %69
    i32 154, label %69
    i32 153, label %69
    i32 129, label %81
    i32 128, label %81
  ]

38:                                               ; preds = %34
  %39 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %40 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %39, i32 0, i32 2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %38
  %47 = load i32, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @cx23885_card_setup.eeprom, i64 0, i64 128), align 16
  %48 = icmp ne i32 %47, 132
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %51 = call i32 @hauppauge_eeprom(%struct.cx23885_dev* %50, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @cx23885_card_setup.eeprom, i64 0, i64 192))
  br label %55

52:                                               ; preds = %46
  %53 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %54 = call i32 @hauppauge_eeprom(%struct.cx23885_dev* %53, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @cx23885_card_setup.eeprom, i64 0, i64 128))
  br label %55

55:                                               ; preds = %52, %49
  br label %56

56:                                               ; preds = %55, %38
  br label %105

57:                                               ; preds = %34, %34, %34
  %58 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %59 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %58, i32 0, i32 2
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %67 = call i32 @hauppauge_eeprom(%struct.cx23885_dev* %66, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @cx23885_card_setup.eeprom, i64 0, i64 128))
  br label %68

68:                                               ; preds = %65, %57
  br label %105

69:                                               ; preds = %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34
  %70 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %71 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %70, i32 0, i32 2
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %79 = call i32 @hauppauge_eeprom(%struct.cx23885_dev* %78, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @cx23885_card_setup.eeprom, i64 0, i64 192))
  br label %80

80:                                               ; preds = %77, %69
  br label %105

81:                                               ; preds = %34, %34
  %82 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %83 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %82, i32 0, i32 2
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  store i32 80, i32* %87, align 4
  %88 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %89 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %88, i32 0, i32 2
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = call i32 @tveeprom_read(%struct.TYPE_10__* %92, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @cx23885_card_setup.eeprom, i64 0, i64 0), i32 1024)
  %94 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %95 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %94, i32 0, i32 2
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %81
  %102 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %103 = call i32 @viewcast_eeprom(%struct.cx23885_dev* %102, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @cx23885_card_setup.eeprom, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %81
  br label %105

105:                                              ; preds = %34, %104, %80, %68, %56
  %106 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %107 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  switch i32 %108, label %315 [
    i32 188, label %109
    i32 177, label %124
    i32 176, label %124
    i32 175, label %124
    i32 178, label %132
    i32 158, label %140
    i32 160, label %140
    i32 136, label %160
    i32 132, label %168
    i32 131, label %168
    i32 179, label %168
    i32 137, label %168
    i32 181, label %168
    i32 184, label %168
    i32 130, label %168
    i32 185, label %168
    i32 139, label %176
    i32 138, label %176
    i32 133, label %176
    i32 135, label %191
    i32 134, label %191
    i32 142, label %208
    i32 144, label %208
    i32 141, label %208
    i32 140, label %216
    i32 157, label %231
    i32 150, label %246
    i32 182, label %254
    i32 180, label %254
    i32 183, label %269
    i32 156, label %284
    i32 149, label %284
    i32 168, label %299
    i32 152, label %299
    i32 151, label %299
    i32 154, label %299
    i32 153, label %299
    i32 171, label %314
    i32 163, label %314
    i32 162, label %314
    i32 159, label %314
    i32 173, label %314
    i32 161, label %314
    i32 164, label %314
    i32 155, label %314
    i32 148, label %314
    i32 146, label %314
    i32 147, label %314
    i32 187, label %314
    i32 167, label %314
    i32 166, label %314
    i32 170, label %314
    i32 169, label %314
    i32 172, label %314
    i32 186, label %314
    i32 165, label %314
    i32 174, label %314
  ]

109:                                              ; preds = %105
  %110 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %111 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %110, i32 0, i32 0
  store i32 4, i32* %111, align 8
  %112 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %113 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %112, i32 0, i32 1
  store i32 1, i32* %113, align 4
  %114 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %115 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %116 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %115, i32 0, i32 4
  store i8* %114, i8** %116, align 8
  %117 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %118 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %117, i32 0, i32 0
  store i32 270, i32* %118, align 8
  %119 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %120 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %119, i32 0, i32 1
  store i32 1, i32* %120, align 4
  %121 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %122 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %123 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %122, i32 0, i32 4
  store i8* %121, i8** %123, align 8
  br label %323

124:                                              ; preds = %105, %105, %105
  %125 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %126 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %125, i32 0, i32 0
  store i32 12, i32* %126, align 8
  %127 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %128 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %127, i32 0, i32 1
  store i32 1, i32* %128, align 4
  %129 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %130 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %131 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %130, i32 0, i32 4
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %105, %124
  %133 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %134 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %133, i32 0, i32 0
  store i32 12, i32* %134, align 8
  %135 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %136 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %135, i32 0, i32 1
  store i32 1, i32* %136, align 4
  %137 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %138 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %139 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %138, i32 0, i32 4
  store i8* %137, i8** %139, align 8
  br label %323

140:                                              ; preds = %105, %105
  %141 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %142 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %141, i32 0, i32 0
  store i32 270, i32* %142, align 8
  %143 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %144 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %143, i32 0, i32 1
  store i32 1, i32* %144, align 4
  %145 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %146 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %147 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %146, i32 0, i32 4
  store i8* %145, i8** %147, align 8
  %148 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %149 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %148, i32 0, i32 2
  store i32 8192, i32* %149, align 8
  %150 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %151 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %150, i32 0, i32 3
  store i32 4656076, i32* %151, align 4
  %152 = call i32 @cx_write(i32 1245572, i32 12)
  %153 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %154 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %153, i32 0, i32 0
  store i32 12, i32* %154, align 8
  %155 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %156 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %155, i32 0, i32 1
  store i32 1, i32* %156, align 4
  %157 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %158 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %159 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %158, i32 0, i32 4
  store i8* %157, i8** %159, align 8
  br label %323

160:                                              ; preds = %105
  %161 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %162 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %161, i32 0, i32 0
  store i32 4, i32* %162, align 8
  %163 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %164 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %163, i32 0, i32 1
  store i32 1, i32* %164, align 4
  %165 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %166 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %167 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %166, i32 0, i32 4
  store i8* %165, i8** %167, align 8
  br label %323

168:                                              ; preds = %105, %105, %105, %105, %105, %105, %105, %105
  %169 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %170 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %169, i32 0, i32 0
  store i32 5, i32* %170, align 8
  %171 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %172 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %171, i32 0, i32 1
  store i32 1, i32* %172, align 4
  %173 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %174 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %175 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %174, i32 0, i32 4
  store i8* %173, i8** %175, align 8
  br label %323

176:                                              ; preds = %105, %105, %105
  %177 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %178 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %177, i32 0, i32 0
  store i32 12, i32* %178, align 8
  %179 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %180 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %179, i32 0, i32 1
  store i32 1, i32* %180, align 4
  %181 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %182 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %183 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %182, i32 0, i32 4
  store i8* %181, i8** %183, align 8
  %184 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %185 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %184, i32 0, i32 0
  store i32 12, i32* %185, align 8
  %186 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %187 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %186, i32 0, i32 1
  store i32 1, i32* %187, align 4
  %188 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %189 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %190 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %189, i32 0, i32 4
  store i8* %188, i8** %190, align 8
  br label %323

191:                                              ; preds = %105, %105
  %192 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %193 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %192, i32 0, i32 0
  store i32 12, i32* %193, align 8
  %194 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %195 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %194, i32 0, i32 1
  store i32 1, i32* %195, align 4
  %196 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %197 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %198 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %197, i32 0, i32 4
  store i8* %196, i8** %198, align 8
  %199 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %200 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %199, i32 0, i32 0
  store i32 12, i32* %200, align 8
  %201 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %202 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %201, i32 0, i32 1
  store i32 1, i32* %202, align 4
  %203 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %204 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %205 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %204, i32 0, i32 4
  store i8* %203, i8** %205, align 8
  %206 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %207 = call i32 @tbs_card_init(%struct.cx23885_dev* %206)
  br label %323

208:                                              ; preds = %105, %105, %105
  %209 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %210 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %209, i32 0, i32 0
  store i32 5, i32* %210, align 8
  %211 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %212 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %211, i32 0, i32 1
  store i32 1, i32* %212, align 4
  %213 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %214 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %215 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %214, i32 0, i32 4
  store i8* %213, i8** %215, align 8
  br label %323

216:                                              ; preds = %105
  %217 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %218 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %217, i32 0, i32 0
  store i32 5, i32* %218, align 8
  %219 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %220 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %219, i32 0, i32 1
  store i32 1, i32* %220, align 4
  %221 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %222 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %223 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %222, i32 0, i32 4
  store i8* %221, i8** %223, align 8
  %224 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %225 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %224, i32 0, i32 0
  store i32 12, i32* %225, align 8
  %226 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %227 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %226, i32 0, i32 1
  store i32 1, i32* %227, align 4
  %228 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %229 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %230 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %229, i32 0, i32 4
  store i8* %228, i8** %230, align 8
  br label %323

231:                                              ; preds = %105
  %232 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %233 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %232, i32 0, i32 0
  store i32 12, i32* %233, align 8
  %234 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %235 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %234, i32 0, i32 1
  store i32 1, i32* %235, align 4
  %236 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %237 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %238 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %237, i32 0, i32 4
  store i8* %236, i8** %238, align 8
  %239 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %240 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %239, i32 0, i32 0
  store i32 12, i32* %240, align 8
  %241 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %242 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %241, i32 0, i32 1
  store i32 1, i32* %242, align 4
  %243 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %244 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %245 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %244, i32 0, i32 4
  store i8* %243, i8** %245, align 8
  br label %323

246:                                              ; preds = %105
  %247 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %248 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %247, i32 0, i32 0
  store i32 12, i32* %248, align 8
  %249 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %250 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %249, i32 0, i32 1
  store i32 1, i32* %250, align 4
  %251 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %252 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %253 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %252, i32 0, i32 4
  store i8* %251, i8** %253, align 8
  br label %323

254:                                              ; preds = %105, %105
  %255 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %256 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %255, i32 0, i32 0
  store i32 5, i32* %256, align 8
  %257 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %258 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %257, i32 0, i32 1
  store i32 1, i32* %258, align 4
  %259 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %260 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %261 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %260, i32 0, i32 4
  store i8* %259, i8** %261, align 8
  %262 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %263 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %262, i32 0, i32 0
  store i32 8, i32* %263, align 8
  %264 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %265 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %264, i32 0, i32 1
  store i32 1, i32* %265, align 4
  %266 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %267 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %268 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %267, i32 0, i32 4
  store i8* %266, i8** %268, align 8
  br label %323

269:                                              ; preds = %105
  %270 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %271 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %270, i32 0, i32 0
  store i32 5, i32* %271, align 8
  %272 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %273 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %272, i32 0, i32 1
  store i32 1, i32* %273, align 4
  %274 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %275 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %276 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %275, i32 0, i32 4
  store i8* %274, i8** %276, align 8
  %277 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %278 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %277, i32 0, i32 0
  store i32 14, i32* %278, align 8
  %279 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %280 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %279, i32 0, i32 1
  store i32 1, i32* %280, align 4
  %281 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %282 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %283 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %282, i32 0, i32 4
  store i8* %281, i8** %283, align 8
  br label %323

284:                                              ; preds = %105, %105
  %285 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %286 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %285, i32 0, i32 0
  store i32 5, i32* %286, align 8
  %287 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %288 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %287, i32 0, i32 1
  store i32 1, i32* %288, align 4
  %289 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %290 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %291 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %290, i32 0, i32 4
  store i8* %289, i8** %291, align 8
  %292 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %293 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %292, i32 0, i32 0
  store i32 12, i32* %293, align 8
  %294 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %295 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %294, i32 0, i32 1
  store i32 1, i32* %295, align 4
  %296 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %297 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %298 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %297, i32 0, i32 4
  store i8* %296, i8** %298, align 8
  br label %323

299:                                              ; preds = %105, %105, %105, %105, %105
  %300 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %301 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %300, i32 0, i32 0
  store i32 12, i32* %301, align 8
  %302 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %303 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %302, i32 0, i32 1
  store i32 1, i32* %303, align 4
  %304 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %305 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %306 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %305, i32 0, i32 4
  store i8* %304, i8** %306, align 8
  %307 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %308 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %307, i32 0, i32 0
  store i32 12, i32* %308, align 8
  %309 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %310 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %309, i32 0, i32 1
  store i32 1, i32* %310, align 4
  %311 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %312 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %313 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %312, i32 0, i32 4
  store i8* %311, i8** %313, align 8
  br label %323

314:                                              ; preds = %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105
  br label %315

315:                                              ; preds = %105, %314
  %316 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %317 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %316, i32 0, i32 0
  store i32 12, i32* %317, align 8
  %318 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %319 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %318, i32 0, i32 1
  store i32 1, i32* %319, align 4
  %320 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %321 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %322 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %321, i32 0, i32 4
  store i8* %320, i8** %322, align 8
  br label %323

323:                                              ; preds = %315, %299, %284, %269, %254, %246, %231, %216, %208, %191, %176, %168, %160, %140, %132, %109
  %324 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %325 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  switch i32 %326, label %366 [
    i32 132, label %327
    i32 171, label %332
    i32 160, label %332
    i32 155, label %332
    i32 159, label %332
    i32 161, label %332
    i32 148, label %332
    i32 146, label %332
    i32 147, label %332
    i32 187, label %332
    i32 139, label %332
    i32 138, label %332
    i32 186, label %332
    i32 170, label %332
    i32 169, label %332
    i32 168, label %332
    i32 152, label %332
    i32 154, label %332
    i32 167, label %332
    i32 158, label %332
    i32 142, label %332
    i32 144, label %332
    i32 165, label %332
    i32 145, label %332
    i32 174, label %332
    i32 163, label %332
    i32 143, label %332
    i32 141, label %332
    i32 133, label %332
    i32 188, label %332
    i32 135, label %332
    i32 134, label %332
    i32 182, label %332
    i32 181, label %332
    i32 184, label %332
    i32 130, label %332
    i32 185, label %332
    i32 183, label %332
    i32 180, label %332
    i32 129, label %332
    i32 128, label %332
  ]

327:                                              ; preds = %323
  %328 = load i32, i32* @enable_885_ir, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %331, label %330

330:                                              ; preds = %327
  br label %366

331:                                              ; preds = %327
  br label %332

332:                                              ; preds = %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %331
  %333 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %334 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %333, i32 0, i32 3
  %335 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %336 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %335, i32 0, i32 2
  %337 = load %struct.TYPE_8__*, %struct.TYPE_8__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i64 2
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 1
  %340 = call %struct.TYPE_9__* @v4l2_i2c_new_subdev(i32* %334, i32* %339, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 68, i32* null)
  %341 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %342 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %341, i32 0, i32 4
  store %struct.TYPE_9__* %340, %struct.TYPE_9__** %342, align 8
  %343 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %344 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %343, i32 0, i32 4
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** %344, align 8
  %346 = icmp ne %struct.TYPE_9__* %345, null
  br i1 %346, label %347, label %365

347:                                              ; preds = %332
  %348 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %349 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %348, i32 0, i32 4
  %350 = load %struct.TYPE_9__*, %struct.TYPE_9__** %349, align 8
  %351 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %352 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %351, i32 0, i32 5
  %353 = call i32 @v4l2_set_subdev_hostdata(%struct.TYPE_9__* %350, i32* %352)
  %354 = load i32, i32* @CX23885_HW_AV_CORE, align 4
  %355 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %356 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %355, i32 0, i32 4
  %357 = load %struct.TYPE_9__*, %struct.TYPE_9__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %357, i32 0, i32 0
  store i32 %354, i32* %358, align 4
  %359 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %360 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %359, i32 0, i32 4
  %361 = load %struct.TYPE_9__*, %struct.TYPE_9__** %360, align 8
  %362 = load i32, i32* @core, align 4
  %363 = load i32, i32* @load_fw, align 4
  %364 = call i32 @v4l2_subdev_call(%struct.TYPE_9__* %361, i32 %362, i32 %363)
  br label %365

365:                                              ; preds = %347, %332
  br label %366

366:                                              ; preds = %323, %365, %330
  %367 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %368 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  switch i32 %369, label %396 [
    i32 129, label %370
    i32 128, label %379
  ]

370:                                              ; preds = %366
  %371 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %372 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %371, i32 0, i32 3
  %373 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %374 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %373, i32 0, i32 2
  %375 = load %struct.TYPE_8__*, %struct.TYPE_8__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i64 0
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 1
  %378 = call %struct.TYPE_9__* @v4l2_i2c_new_subdev(i32* %372, i32* %377, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 65, i32* null)
  br label %396

379:                                              ; preds = %366
  %380 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %381 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %380, i32 0, i32 3
  %382 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %383 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %382, i32 0, i32 2
  %384 = load %struct.TYPE_8__*, %struct.TYPE_8__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i64 0
  %386 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %385, i32 0, i32 1
  %387 = call %struct.TYPE_9__* @v4l2_i2c_new_subdev(i32* %381, i32* %386, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 64, i32* null)
  %388 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %389 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %388, i32 0, i32 3
  %390 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %391 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %390, i32 0, i32 2
  %392 = load %struct.TYPE_8__*, %struct.TYPE_8__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %392, i64 0
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i32 0, i32 1
  %395 = call %struct.TYPE_9__* @v4l2_i2c_new_subdev(i32* %389, i32* %394, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 65, i32* null)
  br label %396

396:                                              ; preds = %366, %379, %370
  %397 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %398 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  switch i32 %399, label %447 [
    i32 139, label %400
    i32 138, label %403
  ]

400:                                              ; preds = %396
  %401 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %402 = call i32 @netup_initialize(%struct.cx23885_dev* %401)
  br label %447

403:                                              ; preds = %396
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  %404 = getelementptr inbounds %struct.altera_config, %struct.altera_config* %9, i32 0, i32 0
  %405 = load i8*, i8** %8, align 8
  store i8* %405, i8** %404, align 8
  %406 = getelementptr inbounds %struct.altera_config, %struct.altera_config* %9, i32 0, i32 1
  %407 = load i32, i32* @netup_jtag_io, align 4
  store i32 %407, i32* %406, align 8
  %408 = getelementptr inbounds %struct.altera_config, %struct.altera_config* %9, i32 0, i32 2
  %409 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  store %struct.cx23885_dev* %409, %struct.cx23885_dev** %408, align 8
  %410 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %411 = call i32 @netup_initialize(%struct.cx23885_dev* %410)
  %412 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %413 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %412, i32 0, i32 2
  %414 = load %struct.TYPE_8__*, %struct.TYPE_8__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %414, i64 0
  %416 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %415, i32 0, i32 1
  %417 = call i32 @netup_get_card_info(i32* %416, %struct.netup_card_info* @cx23885_card_setup.cinfo)
  %418 = load i32, i32* @netup_card_rev, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %422

420:                                              ; preds = %403
  %421 = load i32, i32* @netup_card_rev, align 4
  store i32 %421, i32* getelementptr inbounds (%struct.netup_card_info, %struct.netup_card_info* @cx23885_card_setup.cinfo, i32 0, i32 0), align 4
  br label %422

422:                                              ; preds = %420, %403
  %423 = load i32, i32* getelementptr inbounds (%struct.netup_card_info, %struct.netup_card_info* @cx23885_card_setup.cinfo, i32 0, i32 0), align 4
  switch i32 %423, label %425 [
    i32 4, label %424
  ]

424:                                              ; preds = %422
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %426

425:                                              ; preds = %422
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %426

426:                                              ; preds = %425, %424
  %427 = load i32, i32* getelementptr inbounds (%struct.netup_card_info, %struct.netup_card_info* @cx23885_card_setup.cinfo, i32 0, i32 0), align 4
  %428 = load i8*, i8** %7, align 8
  %429 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %427, i8* %428)
  %430 = load i8*, i8** %7, align 8
  %431 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %432 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %431, i32 0, i32 1
  %433 = load %struct.TYPE_7__*, %struct.TYPE_7__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %433, i32 0, i32 0
  %435 = call i32 @request_firmware(%struct.firmware** %6, i8* %430, i32* %434)
  store i32 %435, i32* %5, align 4
  %436 = load i32, i32* %5, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %441

438:                                              ; preds = %426
  %439 = load i8*, i8** %7, align 8
  %440 = call i32 @pr_err(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i8* %439)
  br label %444

441:                                              ; preds = %426
  %442 = load %struct.firmware*, %struct.firmware** %6, align 8
  %443 = call i32 @altera_init(%struct.altera_config* %9, %struct.firmware* %442)
  br label %444

444:                                              ; preds = %441, %438
  %445 = load %struct.firmware*, %struct.firmware** %6, align 8
  %446 = call i32 @release_firmware(%struct.firmware* %445)
  br label %447

447:                                              ; preds = %396, %444, %400
  ret void
}

declare dso_local i32 @tveeprom_read(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @hauppauge_eeprom(%struct.cx23885_dev*, i32*) #1

declare dso_local i32 @viewcast_eeprom(%struct.cx23885_dev*, i32*) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @tbs_card_init(%struct.cx23885_dev*) #1

declare dso_local %struct.TYPE_9__* @v4l2_i2c_new_subdev(i32*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @v4l2_set_subdev_hostdata(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @netup_initialize(%struct.cx23885_dev*) #1

declare dso_local i32 @netup_get_card_info(i32*, %struct.netup_card_info*) #1

declare dso_local i32 @pr_info(i8*, i32, i8*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @altera_init(%struct.altera_config*, %struct.firmware*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
