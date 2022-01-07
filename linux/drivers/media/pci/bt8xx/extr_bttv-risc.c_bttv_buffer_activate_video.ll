; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-risc.c_bttv_buffer_activate_video.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-risc.c_bttv_buffer_activate_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32 }
%struct.bttv_buffer_set = type { %struct.TYPE_5__*, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { i64 }

@VIDEOBUF_ACTIVE = common dso_local global i8* null, align 8
@RISC_SLOT_O_FIELD = common dso_local global i32 0, align 4
@RISC_SLOT_E_FIELD = common dso_local global i32 0, align 4
@BT848_COLOR_FMT = common dso_local global i32 0, align 4
@BT848_COLOR_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bttv_buffer_activate_video(%struct.bttv* %0, %struct.bttv_buffer_set* %1) #0 {
  %3 = alloca %struct.bttv*, align 8
  %4 = alloca %struct.bttv_buffer_set*, align 8
  store %struct.bttv* %0, %struct.bttv** %3, align 8
  store %struct.bttv_buffer_set* %1, %struct.bttv_buffer_set** %4, align 8
  %5 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %6 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %5, i32 0, i32 2
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = icmp ne %struct.TYPE_5__* null, %7
  br i1 %8, label %9, label %153

9:                                                ; preds = %2
  %10 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %11 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = icmp ne %struct.TYPE_5__* null, %12
  br i1 %13, label %14, label %153

14:                                               ; preds = %9
  %15 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %16 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %19 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = icmp eq %struct.TYPE_5__* %17, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %14
  %23 = load i8*, i8** @VIDEOBUF_ACTIVE, align 8
  %24 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %25 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i8* %23, i8** %28, align 8
  %29 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %30 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %22
  %38 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %39 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %38, i32 0, i32 2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @list_del(%struct.TYPE_6__* %42)
  br label %44

44:                                               ; preds = %37, %22
  br label %90

45:                                               ; preds = %14
  %46 = load i8*, i8** @VIDEOBUF_ACTIVE, align 8
  %47 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %48 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %47, i32 0, i32 2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i8* %46, i8** %51, align 8
  %52 = load i8*, i8** @VIDEOBUF_ACTIVE, align 8
  %53 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %54 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i8* %52, i8** %57, align 8
  %58 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %59 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %45
  %67 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %68 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = call i32 @list_del(%struct.TYPE_6__* %71)
  br label %73

73:                                               ; preds = %66, %45
  %74 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %75 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %73
  %83 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %84 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = call i32 @list_del(%struct.TYPE_6__* %87)
  br label %89

89:                                               ; preds = %82, %73
  br label %90

90:                                               ; preds = %89, %44
  %91 = load %struct.bttv*, %struct.bttv** %3, align 8
  %92 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %93 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %92, i32 0, i32 2
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  %96 = call i32 @bttv_apply_geo(%struct.bttv* %91, i32* %95, i32 1)
  %97 = load %struct.bttv*, %struct.bttv** %3, align 8
  %98 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %99 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  %102 = call i32 @bttv_apply_geo(%struct.bttv* %97, i32* %101, i32 0)
  %103 = load %struct.bttv*, %struct.bttv** %3, align 8
  %104 = load i32, i32* @RISC_SLOT_O_FIELD, align 4
  %105 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %106 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %105, i32 0, i32 2
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 5
  %109 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %110 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @bttv_risc_hook(%struct.bttv* %103, i32 %104, i32* %108, i32 %111)
  %113 = load %struct.bttv*, %struct.bttv** %3, align 8
  %114 = load i32, i32* @RISC_SLOT_E_FIELD, align 4
  %115 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %116 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %115, i32 0, i32 0
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %120 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @bttv_risc_hook(%struct.bttv* %113, i32 %114, i32* %118, i32 %121)
  %123 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %124 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %123, i32 0, i32 2
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, 240
  %129 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %130 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %129, i32 0, i32 0
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, 15
  %135 = or i32 %128, %134
  %136 = load i32, i32* @BT848_COLOR_FMT, align 4
  %137 = call i32 @btaor(i32 %135, i32 -256, i32 %136)
  %138 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %139 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %138, i32 0, i32 2
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 10
  %144 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %145 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %144, i32 0, i32 0
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 5
  %150 = or i32 %143, %149
  %151 = load i32, i32* @BT848_COLOR_CTL, align 4
  %152 = call i32 @btaor(i32 %150, i32 -16, i32 %151)
  br label %300

153:                                              ; preds = %9, %2
  %154 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %155 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %154, i32 0, i32 2
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = icmp ne %struct.TYPE_5__* null, %156
  br i1 %157, label %158, label %222

158:                                              ; preds = %153
  %159 = load i8*, i8** @VIDEOBUF_ACTIVE, align 8
  %160 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %161 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %160, i32 0, i32 2
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  store i8* %159, i8** %164, align 8
  %165 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %166 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %165, i32 0, i32 2
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %158
  %174 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %175 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %174, i32 0, i32 2
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = call i32 @list_del(%struct.TYPE_6__* %178)
  br label %180

180:                                              ; preds = %173, %158
  %181 = load %struct.bttv*, %struct.bttv** %3, align 8
  %182 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %183 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %182, i32 0, i32 2
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 3
  %186 = call i32 @bttv_apply_geo(%struct.bttv* %181, i32* %185, i32 1)
  %187 = load %struct.bttv*, %struct.bttv** %3, align 8
  %188 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %189 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %188, i32 0, i32 2
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 3
  %192 = call i32 @bttv_apply_geo(%struct.bttv* %187, i32* %191, i32 0)
  %193 = load %struct.bttv*, %struct.bttv** %3, align 8
  %194 = load i32, i32* @RISC_SLOT_O_FIELD, align 4
  %195 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %196 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %195, i32 0, i32 2
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 5
  %199 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %200 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @bttv_risc_hook(%struct.bttv* %193, i32 %194, i32* %198, i32 %201)
  %203 = load %struct.bttv*, %struct.bttv** %3, align 8
  %204 = load i32, i32* @RISC_SLOT_E_FIELD, align 4
  %205 = call i32 @bttv_risc_hook(%struct.bttv* %203, i32 %204, i32* null, i32 0)
  %206 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %207 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %206, i32 0, i32 2
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = and i32 %210, 255
  %212 = load i32, i32* @BT848_COLOR_FMT, align 4
  %213 = call i32 @btaor(i32 %211, i32 -256, i32 %212)
  %214 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %215 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %214, i32 0, i32 2
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = and i32 %218, 15
  %220 = load i32, i32* @BT848_COLOR_CTL, align 4
  %221 = call i32 @btaor(i32 %219, i32 -16, i32 %220)
  br label %299

222:                                              ; preds = %153
  %223 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %224 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %223, i32 0, i32 0
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %224, align 8
  %226 = icmp ne %struct.TYPE_5__* null, %225
  br i1 %226, label %227, label %291

227:                                              ; preds = %222
  %228 = load i8*, i8** @VIDEOBUF_ACTIVE, align 8
  %229 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %230 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %229, i32 0, i32 0
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 4
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 1
  store i8* %228, i8** %233, align 8
  %234 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %235 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %234, i32 0, i32 0
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %227
  %243 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %244 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %243, i32 0, i32 0
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 4
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = call i32 @list_del(%struct.TYPE_6__* %247)
  br label %249

249:                                              ; preds = %242, %227
  %250 = load %struct.bttv*, %struct.bttv** %3, align 8
  %251 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %252 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %251, i32 0, i32 0
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 3
  %255 = call i32 @bttv_apply_geo(%struct.bttv* %250, i32* %254, i32 1)
  %256 = load %struct.bttv*, %struct.bttv** %3, align 8
  %257 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %258 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %257, i32 0, i32 0
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 3
  %261 = call i32 @bttv_apply_geo(%struct.bttv* %256, i32* %260, i32 0)
  %262 = load %struct.bttv*, %struct.bttv** %3, align 8
  %263 = load i32, i32* @RISC_SLOT_O_FIELD, align 4
  %264 = call i32 @bttv_risc_hook(%struct.bttv* %262, i32 %263, i32* null, i32 0)
  %265 = load %struct.bttv*, %struct.bttv** %3, align 8
  %266 = load i32, i32* @RISC_SLOT_E_FIELD, align 4
  %267 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %268 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %267, i32 0, i32 0
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 2
  %271 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %272 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @bttv_risc_hook(%struct.bttv* %265, i32 %266, i32* %270, i32 %273)
  %275 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %276 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %275, i32 0, i32 0
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = and i32 %279, 255
  %281 = load i32, i32* @BT848_COLOR_FMT, align 4
  %282 = call i32 @btaor(i32 %280, i32 -256, i32 %281)
  %283 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %4, align 8
  %284 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %283, i32 0, i32 0
  %285 = load %struct.TYPE_5__*, %struct.TYPE_5__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = and i32 %287, 15
  %289 = load i32, i32* @BT848_COLOR_CTL, align 4
  %290 = call i32 @btaor(i32 %288, i32 -16, i32 %289)
  br label %298

291:                                              ; preds = %222
  %292 = load %struct.bttv*, %struct.bttv** %3, align 8
  %293 = load i32, i32* @RISC_SLOT_O_FIELD, align 4
  %294 = call i32 @bttv_risc_hook(%struct.bttv* %292, i32 %293, i32* null, i32 0)
  %295 = load %struct.bttv*, %struct.bttv** %3, align 8
  %296 = load i32, i32* @RISC_SLOT_E_FIELD, align 4
  %297 = call i32 @bttv_risc_hook(%struct.bttv* %295, i32 %296, i32* null, i32 0)
  br label %298

298:                                              ; preds = %291, %249
  br label %299

299:                                              ; preds = %298, %180
  br label %300

300:                                              ; preds = %299, %90
  ret i32 0
}

declare dso_local i32 @list_del(%struct.TYPE_6__*) #1

declare dso_local i32 @bttv_apply_geo(%struct.bttv*, i32*, i32) #1

declare dso_local i32 @bttv_risc_hook(%struct.bttv*, i32, i32*, i32) #1

declare dso_local i32 @btaor(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
