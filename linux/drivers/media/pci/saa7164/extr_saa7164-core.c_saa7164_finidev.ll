; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-core.c_saa7164_finidev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-core.c_saa7164_finidev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64 }
%struct.pci_dev = type { i32 }
%struct.saa7164_dev = type { i64, i32, i32, i32, i32*, %struct.TYPE_6__*, i64, i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@SAA7164_BOARD_UNKNOWN = common dso_local global i64 0, align 8
@fw_debug = common dso_local global i64 0, align 8
@SAA7164_PORT_ENC1 = common dso_local global i64 0, align 8
@SAA7164_PORT_VBI1 = common dso_local global i64 0, align 8
@SAA7164_PORT_VBI2 = common dso_local global i64 0, align 8
@saa7164_boards = common dso_local global %struct.TYPE_7__* null, align 8
@SAA7164_MPEG_DVB = common dso_local global i64 0, align 8
@SAA7164_PORT_TS1 = common dso_local global i64 0, align 8
@SAA7164_PORT_TS2 = common dso_local global i64 0, align 8
@SAA7164_MPEG_ENCODER = common dso_local global i64 0, align 8
@SAA7164_PORT_ENC2 = common dso_local global i64 0, align 8
@SAA7164_MPEG_VBI = common dso_local global i64 0, align 8
@devlist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @saa7164_finidev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saa7164_finidev(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.saa7164_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.saa7164_dev* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.saa7164_dev* %5, %struct.saa7164_dev** %3, align 8
  %6 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %7 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SAA7164_BOARD_UNKNOWN, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %1
  %12 = load i64, i64* @fw_debug, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %16 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %15, i32 0, i32 7
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %21 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %20, i32 0, i32 7
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @kthread_stop(i32* %22)
  %24 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %25 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %24, i32 0, i32 7
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %19, %14, %11
  %27 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %28 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %33 = call i32 @saa7164_api_set_debug(%struct.saa7164_dev* %32, i32 0)
  br label %34

34:                                               ; preds = %31, %26
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %37 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %36, i32 0, i32 5
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i64, i64* @SAA7164_PORT_ENC1, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %39
  %41 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %42 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %41, i32 0, i32 5
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i64, i64* @SAA7164_PORT_ENC1, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  %47 = call i32 @saa7164_histogram_print(%struct.TYPE_6__* %40, i32* %46)
  %48 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %49 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %48, i32 0, i32 5
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i64, i64* @SAA7164_PORT_ENC1, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %51
  %53 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %54 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %53, i32 0, i32 5
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i64, i64* @SAA7164_PORT_ENC1, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = call i32 @saa7164_histogram_print(%struct.TYPE_6__* %52, i32* %58)
  %60 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %61 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %60, i32 0, i32 5
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i64, i64* @SAA7164_PORT_ENC1, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %63
  %65 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %66 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %65, i32 0, i32 5
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i64, i64* @SAA7164_PORT_ENC1, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = call i32 @saa7164_histogram_print(%struct.TYPE_6__* %64, i32* %70)
  %72 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %73 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %72, i32 0, i32 5
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i64, i64* @SAA7164_PORT_ENC1, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %75
  %77 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %78 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %77, i32 0, i32 5
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i64, i64* @SAA7164_PORT_ENC1, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = call i32 @saa7164_histogram_print(%struct.TYPE_6__* %76, i32* %82)
  %84 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %85 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %84, i32 0, i32 5
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i64, i64* @SAA7164_PORT_ENC1, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %87
  %89 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %90 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %89, i32 0, i32 5
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i64, i64* @SAA7164_PORT_ENC1, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = call i32 @saa7164_histogram_print(%struct.TYPE_6__* %88, i32* %94)
  %96 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %97 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %96, i32 0, i32 5
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i64, i64* @SAA7164_PORT_VBI1, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %99
  %101 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %102 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %101, i32 0, i32 5
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load i64, i64* @SAA7164_PORT_VBI1, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = call i32 @saa7164_histogram_print(%struct.TYPE_6__* %100, i32* %106)
  %108 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %109 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %108, i32 0, i32 5
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = load i64, i64* @SAA7164_PORT_VBI2, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i64 %111
  %113 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %114 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %113, i32 0, i32 5
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load i64, i64* @SAA7164_PORT_VBI2, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = call i32 @saa7164_histogram_print(%struct.TYPE_6__* %112, i32* %118)
  %120 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %121 = call i32 @saa7164_shutdown(%struct.saa7164_dev* %120)
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** @saa7164_boards, align 8
  %123 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %124 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @SAA7164_MPEG_DVB, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %35
  %132 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %133 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %132, i32 0, i32 5
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = load i64, i64* @SAA7164_PORT_TS1, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %135
  %137 = call i32 @saa7164_dvb_unregister(%struct.TYPE_6__* %136)
  br label %138

138:                                              ; preds = %131, %35
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** @saa7164_boards, align 8
  %140 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %141 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @SAA7164_MPEG_DVB, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %138
  %149 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %150 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %149, i32 0, i32 5
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = load i64, i64* @SAA7164_PORT_TS2, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i64 %152
  %154 = call i32 @saa7164_dvb_unregister(%struct.TYPE_6__* %153)
  br label %155

155:                                              ; preds = %148, %138
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** @saa7164_boards, align 8
  %157 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %158 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @SAA7164_MPEG_ENCODER, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %172

165:                                              ; preds = %155
  %166 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %167 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %166, i32 0, i32 5
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = load i64, i64* @SAA7164_PORT_ENC1, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i64 %169
  %171 = call i32 @saa7164_encoder_unregister(%struct.TYPE_6__* %170)
  br label %172

172:                                              ; preds = %165, %155
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** @saa7164_boards, align 8
  %174 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %175 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @SAA7164_MPEG_ENCODER, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %172
  %183 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %184 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %183, i32 0, i32 5
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = load i64, i64* @SAA7164_PORT_ENC2, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i64 %186
  %188 = call i32 @saa7164_encoder_unregister(%struct.TYPE_6__* %187)
  br label %189

189:                                              ; preds = %182, %172
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** @saa7164_boards, align 8
  %191 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %192 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @SAA7164_MPEG_VBI, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %206

199:                                              ; preds = %189
  %200 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %201 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %200, i32 0, i32 5
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = load i64, i64* @SAA7164_PORT_VBI1, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i64 %203
  %205 = call i32 @saa7164_vbi_unregister(%struct.TYPE_6__* %204)
  br label %206

206:                                              ; preds = %199, %189
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** @saa7164_boards, align 8
  %208 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %209 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 5
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @SAA7164_MPEG_VBI, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %223

216:                                              ; preds = %206
  %217 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %218 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %217, i32 0, i32 5
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %218, align 8
  %220 = load i64, i64* @SAA7164_PORT_VBI2, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i64 %220
  %222 = call i32 @saa7164_vbi_unregister(%struct.TYPE_6__* %221)
  br label %223

223:                                              ; preds = %216, %206
  %224 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %225 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %224, i32 0, i32 4
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = call i32 @saa7164_i2c_unregister(i32* %227)
  %229 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %230 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %229, i32 0, i32 4
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 1
  %233 = call i32 @saa7164_i2c_unregister(i32* %232)
  %234 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %235 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %234, i32 0, i32 4
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 2
  %238 = call i32 @saa7164_i2c_unregister(i32* %237)
  %239 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %240 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %243 = call i32 @free_irq(i32 %241, %struct.saa7164_dev* %242)
  %244 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %245 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %223
  %249 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %250 = call i32 @pci_disable_msi(%struct.pci_dev* %249)
  %251 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %252 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %251, i32 0, i32 1
  store i32 0, i32* %252, align 8
  br label %253

253:                                              ; preds = %248, %223
  %254 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %255 = call i32 @pci_disable_device(%struct.pci_dev* %254)
  %256 = call i32 @mutex_lock(i32* @devlist)
  %257 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %258 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %257, i32 0, i32 3
  %259 = call i32 @list_del(i32* %258)
  %260 = call i32 @mutex_unlock(i32* @devlist)
  %261 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %262 = call i32 @saa7164_dev_unregister(%struct.saa7164_dev* %261)
  %263 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %264 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %263, i32 0, i32 2
  %265 = call i32 @v4l2_device_unregister(i32* %264)
  %266 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %267 = call i32 @kfree(%struct.saa7164_dev* %266)
  ret void
}

declare dso_local %struct.saa7164_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @saa7164_api_set_debug(%struct.saa7164_dev*, i32) #1

declare dso_local i32 @saa7164_histogram_print(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @saa7164_shutdown(%struct.saa7164_dev*) #1

declare dso_local i32 @saa7164_dvb_unregister(%struct.TYPE_6__*) #1

declare dso_local i32 @saa7164_encoder_unregister(%struct.TYPE_6__*) #1

declare dso_local i32 @saa7164_vbi_unregister(%struct.TYPE_6__*) #1

declare dso_local i32 @saa7164_i2c_unregister(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.saa7164_dev*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @saa7164_dev_unregister(%struct.saa7164_dev*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.saa7164_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
