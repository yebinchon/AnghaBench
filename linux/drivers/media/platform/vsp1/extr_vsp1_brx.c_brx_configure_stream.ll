; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_brx.c_brx_configure_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_brx.c_brx_configure_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { i64, i32 }
%struct.vsp1_pipeline = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.vsp1_dl_list = type { i32 }
%struct.vsp1_dl_body = type { i32 }
%struct.vsp1_brx = type { i32, %struct.TYPE_11__*, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32 }

@VI6_BRU_INCTRL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_FLAG_PREMUL_ALPHA = common dso_local global i32 0, align 4
@VI6_BRU_INCTRL_NRM = common dso_local global i32 0, align 4
@VI6_BRU_VIRRPF_SIZE = common dso_local global i32 0, align 4
@VI6_BRU_VIRRPF_SIZE_HSIZE_SHIFT = common dso_local global i32 0, align 4
@VI6_BRU_VIRRPF_SIZE_VSIZE_SHIFT = common dso_local global i32 0, align 4
@VI6_BRU_VIRRPF_LOC = common dso_local global i32 0, align 4
@VI6_BRU_VIRRPF_COL = common dso_local global i32 0, align 4
@VI6_BRU_VIRRPF_COL_A_SHIFT = common dso_local global i32 0, align 4
@VSP1_ENTITY_BRU = common dso_local global i64 0, align 8
@VI6_BRU_ROP = common dso_local global i32 0, align 4
@VI6_ROP_NOP = common dso_local global i32 0, align 4
@VI6_BRU_CTRL_RBC = common dso_local global i32 0, align 4
@VI6_BRU_CTRL_DSTSEL_VRPF = common dso_local global i32 0, align 4
@VI6_BRU_BLD_CCMDX_255_SRC_A = common dso_local global i32 0, align 4
@VI6_BRU_BLD_CCMDY_COEFY = common dso_local global i32 0, align 4
@VI6_BRU_BLD_CCMDY_SRC_A = common dso_local global i32 0, align 4
@VI6_BRU_BLD_ACMDX_255_SRC_A = common dso_local global i32 0, align 4
@VI6_BRU_BLD_ACMDY_COEFY = common dso_local global i32 0, align 4
@VI6_BRU_BLD_COEFY_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_entity*, %struct.vsp1_pipeline*, %struct.vsp1_dl_list*, %struct.vsp1_dl_body*)* @brx_configure_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brx_configure_stream(%struct.vsp1_entity* %0, %struct.vsp1_pipeline* %1, %struct.vsp1_dl_list* %2, %struct.vsp1_dl_body* %3) #0 {
  %5 = alloca %struct.vsp1_entity*, align 8
  %6 = alloca %struct.vsp1_pipeline*, align 8
  %7 = alloca %struct.vsp1_dl_list*, align 8
  %8 = alloca %struct.vsp1_dl_body*, align 8
  %9 = alloca %struct.vsp1_brx*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %5, align 8
  store %struct.vsp1_pipeline* %1, %struct.vsp1_pipeline** %6, align 8
  store %struct.vsp1_dl_list* %2, %struct.vsp1_dl_list** %7, align 8
  store %struct.vsp1_dl_body* %3, %struct.vsp1_dl_body** %8, align 8
  %15 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %16 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %15, i32 0, i32 1
  %17 = call %struct.vsp1_brx* @to_brx(i32* %16)
  store %struct.vsp1_brx* %17, %struct.vsp1_brx** %9, align 8
  %18 = load %struct.vsp1_brx*, %struct.vsp1_brx** %9, align 8
  %19 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %18, i32 0, i32 2
  %20 = load %struct.vsp1_brx*, %struct.vsp1_brx** %9, align 8
  %21 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vsp1_brx*, %struct.vsp1_brx** %9, align 8
  %25 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_12__* %19, i32 %23, i32 %27)
  store %struct.v4l2_mbus_framefmt* %28, %struct.v4l2_mbus_framefmt** %10, align 8
  %29 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %30 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = icmp ne %struct.TYPE_8__* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %4
  %34 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %35 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  br label %41

40:                                               ; preds = %4
  br label %41

41:                                               ; preds = %40, %33
  %42 = phi i32 [ %39, %33 ], [ 0, %40 ]
  store i32 %42, i32* %11, align 4
  %43 = load %struct.vsp1_brx*, %struct.vsp1_brx** %9, align 8
  %44 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %45 = load i32, i32* @VI6_BRU_INCTRL, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @V4L2_PIX_FMT_FLAG_PREMUL_ALPHA, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %53

51:                                               ; preds = %41
  %52 = load i32, i32* @VI6_BRU_INCTRL_NRM, align 4
  br label %53

53:                                               ; preds = %51, %50
  %54 = phi i32 [ 0, %50 ], [ %52, %51 ]
  %55 = call i32 @vsp1_brx_write(%struct.vsp1_brx* %43, %struct.vsp1_dl_body* %44, i32 %45, i32 %54)
  %56 = load %struct.vsp1_brx*, %struct.vsp1_brx** %9, align 8
  %57 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %58 = load i32, i32* @VI6_BRU_VIRRPF_SIZE, align 4
  %59 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %60 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @VI6_BRU_VIRRPF_SIZE_HSIZE_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %65 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @VI6_BRU_VIRRPF_SIZE_VSIZE_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = or i32 %63, %68
  %70 = call i32 @vsp1_brx_write(%struct.vsp1_brx* %56, %struct.vsp1_dl_body* %57, i32 %58, i32 %69)
  %71 = load %struct.vsp1_brx*, %struct.vsp1_brx** %9, align 8
  %72 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %73 = load i32, i32* @VI6_BRU_VIRRPF_LOC, align 4
  %74 = call i32 @vsp1_brx_write(%struct.vsp1_brx* %71, %struct.vsp1_dl_body* %72, i32 %73, i32 0)
  %75 = load %struct.vsp1_brx*, %struct.vsp1_brx** %9, align 8
  %76 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %77 = load i32, i32* @VI6_BRU_VIRRPF_COL, align 4
  %78 = load %struct.vsp1_brx*, %struct.vsp1_brx** %9, align 8
  %79 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @VI6_BRU_VIRRPF_COL_A_SHIFT, align 4
  %82 = shl i32 255, %81
  %83 = or i32 %80, %82
  %84 = call i32 @vsp1_brx_write(%struct.vsp1_brx* %75, %struct.vsp1_dl_body* %76, i32 %77, i32 %83)
  %85 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %86 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @VSP1_ENTITY_BRU, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %53
  %91 = load %struct.vsp1_brx*, %struct.vsp1_brx** %9, align 8
  %92 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %93 = load i32, i32* @VI6_BRU_ROP, align 4
  %94 = call i32 @VI6_BRU_ROP_DSTSEL_BRUIN(i32 1)
  %95 = load i32, i32* @VI6_ROP_NOP, align 4
  %96 = call i32 @VI6_BRU_ROP_CROP(i32 %95)
  %97 = or i32 %94, %96
  %98 = load i32, i32* @VI6_ROP_NOP, align 4
  %99 = call i32 @VI6_BRU_ROP_AROP(i32 %98)
  %100 = or i32 %97, %99
  %101 = call i32 @vsp1_brx_write(%struct.vsp1_brx* %91, %struct.vsp1_dl_body* %92, i32 %93, i32 %100)
  br label %102

102:                                              ; preds = %90, %53
  store i32 0, i32* %12, align 4
  br label %103

103:                                              ; preds = %195, %102
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.vsp1_brx*, %struct.vsp1_brx** %9, align 8
  %106 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ult i32 %104, %108
  br i1 %109, label %110, label %198

110:                                              ; preds = %103
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %111 = load %struct.vsp1_brx*, %struct.vsp1_brx** %9, align 8
  %112 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %111, i32 0, i32 1
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = icmp ne %struct.TYPE_10__* %118, null
  br i1 %119, label %120, label %137

120:                                              ; preds = %110
  %121 = load i32, i32* @VI6_BRU_CTRL_RBC, align 4
  %122 = load i32, i32* %14, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %14, align 4
  %124 = load %struct.vsp1_brx*, %struct.vsp1_brx** %9, align 8
  %125 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %124, i32 0, i32 1
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @V4L2_PIX_FMT_FLAG_PREMUL_ALPHA, align 4
  %136 = and i32 %134, %135
  store i32 %136, i32* %13, align 4
  br label %145

137:                                              ; preds = %110
  %138 = load i32, i32* @VI6_ROP_NOP, align 4
  %139 = call i32 @VI6_BRU_CTRL_CROP(i32 %138)
  %140 = load i32, i32* @VI6_ROP_NOP, align 4
  %141 = call i32 @VI6_BRU_CTRL_AROP(i32 %140)
  %142 = or i32 %139, %141
  %143 = load i32, i32* %14, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %14, align 4
  br label %145

145:                                              ; preds = %137, %120
  %146 = load i32, i32* %12, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load i32, i32* @VI6_BRU_CTRL_DSTSEL_VRPF, align 4
  %150 = load i32, i32* %14, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %14, align 4
  br label %152

152:                                              ; preds = %148, %145
  %153 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %154 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @VSP1_ENTITY_BRU, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %152
  %159 = load i32, i32* %12, align 4
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %166, label %161

161:                                              ; preds = %158, %152
  %162 = load i32, i32* %12, align 4
  %163 = call i32 @VI6_BRU_CTRL_SRCSEL_BRUIN(i32 %162)
  %164 = load i32, i32* %14, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %14, align 4
  br label %166

166:                                              ; preds = %161, %158
  %167 = load %struct.vsp1_brx*, %struct.vsp1_brx** %9, align 8
  %168 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %169 = load i32, i32* %12, align 4
  %170 = call i32 @VI6_BRU_CTRL(i32 %169)
  %171 = load i32, i32* %14, align 4
  %172 = call i32 @vsp1_brx_write(%struct.vsp1_brx* %167, %struct.vsp1_dl_body* %168, i32 %170, i32 %171)
  %173 = load %struct.vsp1_brx*, %struct.vsp1_brx** %9, align 8
  %174 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %175 = load i32, i32* %12, align 4
  %176 = call i32 @VI6_BRU_BLD(i32 %175)
  %177 = load i32, i32* @VI6_BRU_BLD_CCMDX_255_SRC_A, align 4
  %178 = load i32, i32* %13, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %166
  %181 = load i32, i32* @VI6_BRU_BLD_CCMDY_COEFY, align 4
  br label %184

182:                                              ; preds = %166
  %183 = load i32, i32* @VI6_BRU_BLD_CCMDY_SRC_A, align 4
  br label %184

184:                                              ; preds = %182, %180
  %185 = phi i32 [ %181, %180 ], [ %183, %182 ]
  %186 = or i32 %177, %185
  %187 = load i32, i32* @VI6_BRU_BLD_ACMDX_255_SRC_A, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @VI6_BRU_BLD_ACMDY_COEFY, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* @VI6_BRU_BLD_COEFY_SHIFT, align 4
  %192 = shl i32 255, %191
  %193 = or i32 %190, %192
  %194 = call i32 @vsp1_brx_write(%struct.vsp1_brx* %173, %struct.vsp1_dl_body* %174, i32 %176, i32 %193)
  br label %195

195:                                              ; preds = %184
  %196 = load i32, i32* %12, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %12, align 4
  br label %103

198:                                              ; preds = %103
  ret void
}

declare dso_local %struct.vsp1_brx* @to_brx(i32*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @vsp1_brx_write(%struct.vsp1_brx*, %struct.vsp1_dl_body*, i32, i32) #1

declare dso_local i32 @VI6_BRU_ROP_DSTSEL_BRUIN(i32) #1

declare dso_local i32 @VI6_BRU_ROP_CROP(i32) #1

declare dso_local i32 @VI6_BRU_ROP_AROP(i32) #1

declare dso_local i32 @VI6_BRU_CTRL_CROP(i32) #1

declare dso_local i32 @VI6_BRU_CTRL_AROP(i32) #1

declare dso_local i32 @VI6_BRU_CTRL_SRCSEL_BRUIN(i32) #1

declare dso_local i32 @VI6_BRU_CTRL(i32) #1

declare dso_local i32 @VI6_BRU_BLD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
