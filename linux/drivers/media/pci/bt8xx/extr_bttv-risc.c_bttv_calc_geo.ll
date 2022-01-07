; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-risc.c_bttv_calc_geo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-risc.c_bttv_calc_geo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i64, i64, i64 }
%struct.bttv_geometry = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.bttv_tvnorm = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i64, i64, i64 }
%struct.v4l2_rect = type { i32, i64, i64, i64 }

@MIN_VDELAY = common dso_local global i64 0, align 8
@BT848_VSCALE_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*, %struct.bttv_geometry*, i32, i32, i32, %struct.bttv_tvnorm*, %struct.v4l2_rect*)* @bttv_calc_geo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bttv_calc_geo(%struct.bttv* %0, %struct.bttv_geometry* %1, i32 %2, i32 %3, i32 %4, %struct.bttv_tvnorm* %5, %struct.v4l2_rect* %6) #0 {
  %8 = alloca %struct.bttv*, align 8
  %9 = alloca %struct.bttv_geometry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bttv_tvnorm*, align 8
  %14 = alloca %struct.v4l2_rect*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %8, align 8
  store %struct.bttv_geometry* %1, %struct.bttv_geometry** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.bttv_tvnorm* %5, %struct.bttv_tvnorm** %13, align 8
  store %struct.v4l2_rect* %6, %struct.v4l2_rect** %14, align 8
  %18 = load %struct.v4l2_rect*, %struct.v4l2_rect** %14, align 8
  %19 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %13, align 8
  %22 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %20, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %7
  %28 = load %struct.v4l2_rect*, %struct.v4l2_rect** %14, align 8
  %29 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %13, align 8
  %32 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %30, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %27
  %38 = load %struct.v4l2_rect*, %struct.v4l2_rect** %14, align 8
  %39 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %13, align 8
  %42 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %40, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %37
  %48 = load %struct.v4l2_rect*, %struct.v4l2_rect** %14, align 8
  %49 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %13, align 8
  %52 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %50, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %47
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %13, align 8
  %60 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ule i32 %58, %61
  br i1 %62, label %71, label %63

63:                                               ; preds = %57, %47, %37, %27, %7
  %64 = load %struct.bttv*, %struct.bttv** %8, align 8
  %65 = getelementptr inbounds %struct.bttv, %struct.bttv* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.bttv*, %struct.bttv** %8, align 8
  %68 = getelementptr inbounds %struct.bttv, %struct.bttv* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %63, %57
  %72 = load %struct.bttv*, %struct.bttv** %8, align 8
  %73 = load %struct.bttv_geometry*, %struct.bttv_geometry** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %13, align 8
  %78 = call i32 @bttv_calc_geo_old(%struct.bttv* %72, %struct.bttv_geometry* %73, i32 %74, i32 %75, i32 %76, %struct.bttv_tvnorm* %77)
  br label %228

79:                                               ; preds = %63
  %80 = load %struct.v4l2_rect*, %struct.v4l2_rect** %14, align 8
  %81 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = load i32, i32* %10, align 4
  %85 = mul i32 %84, 16
  %86 = call i32 @min(i32 %83, i32 %85)
  store i32 %86, i32* %15, align 4
  %87 = load %struct.v4l2_rect*, %struct.v4l2_rect** %14, align 8
  %88 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* %11, align 4
  %92 = mul i32 %91, 16
  %93 = call i32 @min(i32 %90, i32 %92)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.bttv_geometry*, %struct.bttv_geometry** %9, align 8
  %96 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %15, align 4
  %98 = mul i32 %97, 4096
  %99 = load i32, i32* %10, align 4
  %100 = lshr i32 %99, 1
  %101 = add i32 %98, %100
  %102 = load i32, i32* %10, align 4
  %103 = udiv i32 %101, %102
  %104 = sub i32 %103, 4096
  %105 = load %struct.bttv_geometry*, %struct.bttv_geometry** %9, align 8
  %106 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.v4l2_rect*, %struct.v4l2_rect** %14, align 8
  %108 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = mul i32 %109, %110
  %112 = load i32, i32* %15, align 4
  %113 = add i32 %111, %112
  %114 = load i32, i32* %15, align 4
  %115 = udiv i32 %113, %114
  %116 = and i32 %115, -2
  %117 = load %struct.bttv_geometry*, %struct.bttv_geometry** %9, align 8
  %118 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %16, align 4
  %120 = load %struct.bttv_geometry*, %struct.bttv_geometry** %9, align 8
  %121 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load %struct.v4l2_rect*, %struct.v4l2_rect** %14, align 8
  %123 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %13, align 8
  %126 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = sub nsw i64 %124, %129
  %131 = load i64, i64* @MIN_VDELAY, align 8
  %132 = add nsw i64 %130, %131
  %133 = load %struct.bttv_geometry*, %struct.bttv_geometry** %9, align 8
  %134 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %133, i32 0, i32 4
  store i64 %132, i64* %134, align 8
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = lshr i32 %135, %139
  store i32 %140, i32* %17, align 4
  %141 = load i32, i32* %17, align 4
  %142 = mul i32 %141, 512
  %143 = load i32, i32* %11, align 4
  %144 = lshr i32 %143, 1
  %145 = add i32 %142, %144
  %146 = load i32, i32* %11, align 4
  %147 = udiv i32 %145, %146
  %148 = sub i32 %147, 512
  store i32 %148, i32* %17, align 4
  %149 = load i32, i32* %17, align 4
  %150 = zext i32 %149 to i64
  %151 = sub i64 65536, %150
  %152 = and i64 %151, 8191
  %153 = trunc i64 %152 to i32
  %154 = load %struct.bttv_geometry*, %struct.bttv_geometry** %9, align 8
  %155 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %154, i32 0, i32 5
  store i32 %153, i32* %155, align 8
  %156 = load i32, i32* %12, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %79
  %159 = load i32, i32* @BT848_VSCALE_INT, align 4
  %160 = shl i32 %159, 8
  br label %162

161:                                              ; preds = %79
  br label %162

162:                                              ; preds = %161, %158
  %163 = phi i32 [ %160, %158 ], [ 0, %161 ]
  %164 = load %struct.bttv_geometry*, %struct.bttv_geometry** %9, align 8
  %165 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 8
  %168 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %13, align 8
  %169 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.bttv_geometry*, %struct.bttv_geometry** %9, align 8
  %172 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %171, i32 0, i32 9
  store i32 %170, i32* %172, align 8
  %173 = load %struct.bttv_geometry*, %struct.bttv_geometry** %9, align 8
  %174 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = lshr i32 %175, 8
  %177 = and i32 %176, 3
  %178 = load %struct.bttv_geometry*, %struct.bttv_geometry** %9, align 8
  %179 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = lshr i32 %180, 6
  %182 = and i32 %181, 12
  %183 = or i32 %177, %182
  %184 = load %struct.bttv_geometry*, %struct.bttv_geometry** %9, align 8
  %185 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = lshr i32 %186, 4
  %188 = and i32 %187, 48
  %189 = or i32 %183, %188
  %190 = zext i32 %189 to i64
  %191 = load %struct.bttv_geometry*, %struct.bttv_geometry** %9, align 8
  %192 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = ashr i64 %193, 2
  %195 = and i64 %194, 192
  %196 = or i64 %190, %195
  %197 = trunc i64 %196 to i32
  %198 = load %struct.bttv_geometry*, %struct.bttv_geometry** %9, align 8
  %199 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %198, i32 0, i32 6
  store i32 %197, i32* %199, align 4
  %200 = load %struct.bttv*, %struct.bttv** %8, align 8
  %201 = getelementptr inbounds %struct.bttv, %struct.bttv* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %223

204:                                              ; preds = %162
  %205 = load i32, i32* %10, align 4
  %206 = icmp ult i32 %205, 193
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  br label %213

208:                                              ; preds = %204
  %209 = load i32, i32* %10, align 4
  %210 = icmp ult i32 %209, 385
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i32 1, i32 0
  br label %213

213:                                              ; preds = %208, %207
  %214 = phi i32 [ 2, %207 ], [ %212, %208 ]
  %215 = load %struct.bttv_geometry*, %struct.bttv_geometry** %9, align 8
  %216 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %215, i32 0, i32 7
  store i32 %214, i32* %216, align 8
  %217 = load i32, i32* %10, align 4
  %218 = icmp ult i32 %217, 769
  %219 = zext i1 %218 to i64
  %220 = select i1 %218, i32 1, i32 0
  %221 = load %struct.bttv_geometry*, %struct.bttv_geometry** %9, align 8
  %222 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %221, i32 0, i32 8
  store i32 %220, i32* %222, align 4
  br label %228

223:                                              ; preds = %162
  %224 = load %struct.bttv_geometry*, %struct.bttv_geometry** %9, align 8
  %225 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %224, i32 0, i32 7
  store i32 0, i32* %225, align 8
  %226 = load %struct.bttv_geometry*, %struct.bttv_geometry** %9, align 8
  %227 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %226, i32 0, i32 8
  store i32 0, i32* %227, align 4
  br label %228

228:                                              ; preds = %71, %223, %213
  ret void
}

declare dso_local i32 @bttv_calc_geo_old(%struct.bttv*, %struct.bttv_geometry*, i32, i32, i32, %struct.bttv_tvnorm*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
