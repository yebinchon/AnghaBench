; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-input.c_cx23885_input_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-input.c_cx23885_input_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.cx23885_dev = type { i32, %struct.cx23885_kernel_ir*, %struct.TYPE_7__*, i32* }
%struct.cx23885_kernel_ir = type { %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir*, %struct.rc_dev*, %struct.cx23885_dev* }
%struct.rc_dev = type { i8*, i32, i32, i32, %struct.cx23885_kernel_ir*, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32, i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@RC_PROTO_BIT_ALL_IR_DECODER = common dso_local global i32 0, align 4
@RC_MAP_HAUPPAUGE = common dso_local global i8* null, align 8
@RC_MAP_NEC_TERRATEC_CINERGY_XS = common dso_local global i8* null, align 8
@RC_MAP_TEVII_NEC = common dso_local global i8* null, align 8
@RC_MAP_TOTAL_MEDIA_IN_HAND_02 = common dso_local global i8* null, align 8
@RC_MAP_TBS_NEC = common dso_local global i8* null, align 8
@RC_MAP_DVBSKY = common dso_local global i8* null, align 8
@RC_MAP_TT_1500 = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cx23885 IR (%s)\00", align 1
@cx23885_boards = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"pci-%s/ir0\00", align 1
@RC_DRIVER_IR_RAW = common dso_local global i32 0, align 4
@BUS_PCI = common dso_local global i32 0, align 4
@cx23885_input_ir_open = common dso_local global i32 0, align 4
@cx23885_input_ir_close = common dso_local global i32 0, align 4
@MODULE_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx23885_input_init(%struct.cx23885_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx23885_dev*, align 8
  %4 = alloca %struct.cx23885_kernel_ir*, align 8
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %3, align 8
  %9 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %10 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %218

16:                                               ; preds = %1
  %17 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %18 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %41 [
    i32 136, label %20
    i32 134, label %20
    i32 135, label %20
    i32 138, label %20
    i32 137, label %20
    i32 130, label %23
    i32 129, label %26
    i32 133, label %29
    i32 132, label %32
    i32 131, label %32
    i32 141, label %35
    i32 140, label %35
    i32 143, label %35
    i32 144, label %35
    i32 142, label %35
    i32 139, label %35
    i32 128, label %38
  ]

20:                                               ; preds = %16, %16, %16, %16, %16
  %21 = load i32, i32* @RC_PROTO_BIT_ALL_IR_DECODER, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i8*, i8** @RC_MAP_HAUPPAUGE, align 8
  store i8* %22, i8** %6, align 8
  br label %44

23:                                               ; preds = %16
  %24 = load i32, i32* @RC_PROTO_BIT_ALL_IR_DECODER, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i8*, i8** @RC_MAP_NEC_TERRATEC_CINERGY_XS, align 8
  store i8* %25, i8** %6, align 8
  br label %44

26:                                               ; preds = %16
  %27 = load i32, i32* @RC_PROTO_BIT_ALL_IR_DECODER, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i8*, i8** @RC_MAP_TEVII_NEC, align 8
  store i8* %28, i8** %6, align 8
  br label %44

29:                                               ; preds = %16
  %30 = load i32, i32* @RC_PROTO_BIT_ALL_IR_DECODER, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i8*, i8** @RC_MAP_TOTAL_MEDIA_IN_HAND_02, align 8
  store i8* %31, i8** %6, align 8
  br label %44

32:                                               ; preds = %16, %16
  %33 = load i32, i32* @RC_PROTO_BIT_ALL_IR_DECODER, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i8*, i8** @RC_MAP_TBS_NEC, align 8
  store i8* %34, i8** %6, align 8
  br label %44

35:                                               ; preds = %16, %16, %16, %16, %16, %16
  %36 = load i32, i32* @RC_PROTO_BIT_ALL_IR_DECODER, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i8*, i8** @RC_MAP_DVBSKY, align 8
  store i8* %37, i8** %6, align 8
  br label %44

38:                                               ; preds = %16
  %39 = load i32, i32* @RC_PROTO_BIT_ALL_IR_DECODER, align 4
  store i32 %39, i32* %7, align 4
  %40 = load i8*, i8** @RC_MAP_TT_1500, align 8
  store i8* %40, i8** %6, align 8
  br label %44

41:                                               ; preds = %16
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %218

44:                                               ; preds = %38, %35, %32, %29, %26, %23, %20
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.cx23885_kernel_ir* @kzalloc(i32 32, i32 %45)
  store %struct.cx23885_kernel_ir* %46, %struct.cx23885_kernel_ir** %4, align 8
  %47 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %48 = icmp eq %struct.cx23885_kernel_ir* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %218

52:                                               ; preds = %44
  %53 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %54 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %55 = getelementptr inbounds %struct.cx23885_kernel_ir, %struct.cx23885_kernel_ir* %54, i32 0, i32 3
  store %struct.cx23885_dev* %53, %struct.cx23885_dev** %55, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cx23885_boards, align 8
  %58 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %59 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @kasprintf(i32 %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = bitcast i8* %65 to %struct.cx23885_kernel_ir*
  %67 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %68 = getelementptr inbounds %struct.cx23885_kernel_ir, %struct.cx23885_kernel_ir* %67, i32 0, i32 0
  store %struct.cx23885_kernel_ir* %66, %struct.cx23885_kernel_ir** %68, align 8
  %69 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %70 = getelementptr inbounds %struct.cx23885_kernel_ir, %struct.cx23885_kernel_ir* %69, i32 0, i32 0
  %71 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %70, align 8
  %72 = icmp ne %struct.cx23885_kernel_ir* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %52
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %8, align 4
  br label %214

76:                                               ; preds = %52
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %79 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %78, i32 0, i32 2
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = call i32 @pci_name(%struct.TYPE_7__* %80)
  %82 = call i8* @kasprintf(i32 %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = bitcast i8* %82 to %struct.cx23885_kernel_ir*
  %84 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %85 = getelementptr inbounds %struct.cx23885_kernel_ir, %struct.cx23885_kernel_ir* %84, i32 0, i32 1
  store %struct.cx23885_kernel_ir* %83, %struct.cx23885_kernel_ir** %85, align 8
  %86 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %87 = getelementptr inbounds %struct.cx23885_kernel_ir, %struct.cx23885_kernel_ir* %86, i32 0, i32 1
  %88 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %87, align 8
  %89 = icmp ne %struct.cx23885_kernel_ir* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %76
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %8, align 4
  br label %209

93:                                               ; preds = %76
  %94 = load i32, i32* @RC_DRIVER_IR_RAW, align 4
  %95 = call %struct.rc_dev* @rc_allocate_device(i32 %94)
  store %struct.rc_dev* %95, %struct.rc_dev** %5, align 8
  %96 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %97 = icmp ne %struct.rc_dev* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %8, align 4
  br label %204

101:                                              ; preds = %93
  %102 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %103 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %104 = getelementptr inbounds %struct.cx23885_kernel_ir, %struct.cx23885_kernel_ir* %103, i32 0, i32 2
  store %struct.rc_dev* %102, %struct.rc_dev** %104, align 8
  %105 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %106 = getelementptr inbounds %struct.cx23885_kernel_ir, %struct.cx23885_kernel_ir* %105, i32 0, i32 0
  %107 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %106, align 8
  %108 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %109 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %108, i32 0, i32 9
  store %struct.cx23885_kernel_ir* %107, %struct.cx23885_kernel_ir** %109, align 8
  %110 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %111 = getelementptr inbounds %struct.cx23885_kernel_ir, %struct.cx23885_kernel_ir* %110, i32 0, i32 1
  %112 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %111, align 8
  %113 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %114 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %113, i32 0, i32 8
  store %struct.cx23885_kernel_ir* %112, %struct.cx23885_kernel_ir** %114, align 8
  %115 = load i32, i32* @BUS_PCI, align 4
  %116 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %117 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %116, i32 0, i32 7
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  store i32 %115, i32* %118, align 8
  %119 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %120 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  %122 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %123 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %122, i32 0, i32 2
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %101
  %129 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %130 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %129, i32 0, i32 2
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %135 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %134, i32 0, i32 7
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  store i64 %133, i64* %136, align 8
  %137 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %138 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %137, i32 0, i32 2
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %143 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %142, i32 0, i32 7
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  store i32 %141, i32* %144, align 4
  br label %162

145:                                              ; preds = %101
  %146 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %147 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %146, i32 0, i32 2
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %152 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %151, i32 0, i32 7
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 2
  store i64 %150, i64* %153, align 8
  %154 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %155 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %154, i32 0, i32 2
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %160 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %159, i32 0, i32 7
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  store i32 %158, i32* %161, align 4
  br label %162

162:                                              ; preds = %145, %128
  %163 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %164 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %163, i32 0, i32 2
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %168 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  store i32* %166, i32** %169, align 8
  %170 = load i32, i32* %7, align 4
  %171 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %172 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %171, i32 0, i32 5
  store i32 %170, i32* %172, align 8
  %173 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %174 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %175 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %174, i32 0, i32 4
  store %struct.cx23885_kernel_ir* %173, %struct.cx23885_kernel_ir** %175, align 8
  %176 = load i32, i32* @cx23885_input_ir_open, align 4
  %177 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %178 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* @cx23885_input_ir_close, align 4
  %180 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %181 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 4
  %182 = load i8*, i8** %6, align 8
  %183 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %184 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %183, i32 0, i32 0
  store i8* %182, i8** %184, align 8
  %185 = load i32, i32* @MODULE_NAME, align 4
  %186 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %187 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 8
  %188 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %189 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %190 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %189, i32 0, i32 1
  store %struct.cx23885_kernel_ir* %188, %struct.cx23885_kernel_ir** %190, align 8
  %191 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %192 = call i32 @rc_register_device(%struct.rc_dev* %191)
  store i32 %192, i32* %8, align 4
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %162
  br label %197

196:                                              ; preds = %162
  store i32 0, i32* %2, align 4
  br label %218

197:                                              ; preds = %195
  %198 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %199 = call i32 @cx23885_input_ir_stop(%struct.cx23885_dev* %198)
  %200 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %201 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %200, i32 0, i32 1
  store %struct.cx23885_kernel_ir* null, %struct.cx23885_kernel_ir** %201, align 8
  %202 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %203 = call i32 @rc_free_device(%struct.rc_dev* %202)
  br label %204

204:                                              ; preds = %197, %98
  %205 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %206 = getelementptr inbounds %struct.cx23885_kernel_ir, %struct.cx23885_kernel_ir* %205, i32 0, i32 1
  %207 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %206, align 8
  %208 = call i32 @kfree(%struct.cx23885_kernel_ir* %207)
  br label %209

209:                                              ; preds = %204, %90
  %210 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %211 = getelementptr inbounds %struct.cx23885_kernel_ir, %struct.cx23885_kernel_ir* %210, i32 0, i32 0
  %212 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %211, align 8
  %213 = call i32 @kfree(%struct.cx23885_kernel_ir* %212)
  br label %214

214:                                              ; preds = %209, %73
  %215 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %216 = call i32 @kfree(%struct.cx23885_kernel_ir* %215)
  %217 = load i32, i32* %8, align 4
  store i32 %217, i32* %2, align 4
  br label %218

218:                                              ; preds = %214, %196, %49, %41, %13
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

declare dso_local %struct.cx23885_kernel_ir* @kzalloc(i32, i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @pci_name(%struct.TYPE_7__*) #1

declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @cx23885_input_ir_stop(%struct.cx23885_dev*) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

declare dso_local i32 @kfree(%struct.cx23885_kernel_ir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
