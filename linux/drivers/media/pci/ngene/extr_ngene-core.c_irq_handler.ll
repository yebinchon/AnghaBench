; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene = type { i64, i32, i32*, i32, i64, i32, i32, %struct.TYPE_12__*, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32, i64*, i64, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.device }
%struct.device = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@MAX_STREAM = common dso_local global i64 0, align 8
@NGENE_INT_COUNTS = common dso_local global i32 0, align 4
@FORCE_NMI = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@EVENT_QUEUE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"event overflow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ngene*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.ngene*
  store %struct.ngene* %14, %struct.ngene** %6, align 8
  %15 = load %struct.ngene*, %struct.ngene** %6, align 8
  %16 = getelementptr inbounds %struct.ngene, %struct.ngene* %15, i32 0, i32 15
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %7, align 8
  store i64 0, i64* %8, align 8
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i64, i64* @MAX_STREAM, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.ngene*, %struct.ngene** %6, align 8
  %22 = getelementptr inbounds %struct.ngene, %struct.ngene* %21, i32 0, i32 14
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %2
  %26 = load i32, i32* @NGENE_INT_COUNTS, align 4
  %27 = call i64 @ngreadl(i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.ngene*, %struct.ngene** %6, align 8
  %30 = getelementptr inbounds %struct.ngene, %struct.ngene* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %25
  %34 = load i32, i32* @FORCE_NMI, align 4
  %35 = call i32 @ngwritel(i32 0, i32 %34)
  %36 = load %struct.ngene*, %struct.ngene** %6, align 8
  %37 = getelementptr inbounds %struct.ngene, %struct.ngene* %36, i32 0, i32 1
  store i32 1, i32* %37, align 8
  %38 = load %struct.ngene*, %struct.ngene** %6, align 8
  %39 = getelementptr inbounds %struct.ngene, %struct.ngene* %38, i32 0, i32 12
  %40 = call i32 @wake_up(i32* %39)
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.ngene*, %struct.ngene** %6, align 8
  %43 = getelementptr inbounds %struct.ngene, %struct.ngene* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %33, %25
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %216

47:                                               ; preds = %2
  %48 = load i32, i32* @FORCE_NMI, align 4
  %49 = call i32 @ngwritel(i32 0, i32 %48)
  %50 = load %struct.ngene*, %struct.ngene** %6, align 8
  %51 = getelementptr inbounds %struct.ngene, %struct.ngene* %50, i32 0, i32 11
  %52 = call i32 @spin_lock(i32* %51)
  %53 = load %struct.ngene*, %struct.ngene** %6, align 8
  %54 = getelementptr inbounds %struct.ngene, %struct.ngene* %53, i32 0, i32 13
  %55 = load i64*, i64** %54, align 8
  store i64* %55, i64** %11, align 8
  %56 = load i64*, i64** %11, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %58, label %85

58:                                               ; preds = %47
  %59 = load i64*, i64** %11, align 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %58
  %63 = load %struct.ngene*, %struct.ngene** %6, align 8
  %64 = getelementptr inbounds %struct.ngene, %struct.ngene* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %85

69:                                               ; preds = %62
  %70 = load %struct.ngene*, %struct.ngene** %6, align 8
  %71 = getelementptr inbounds %struct.ngene, %struct.ngene* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %69, %58
  %77 = load %struct.ngene*, %struct.ngene** %6, align 8
  %78 = getelementptr inbounds %struct.ngene, %struct.ngene* %77, i32 0, i32 13
  store i64* null, i64** %78, align 8
  %79 = load %struct.ngene*, %struct.ngene** %6, align 8
  %80 = getelementptr inbounds %struct.ngene, %struct.ngene* %79, i32 0, i32 1
  store i32 1, i32* %80, align 8
  %81 = load %struct.ngene*, %struct.ngene** %6, align 8
  %82 = getelementptr inbounds %struct.ngene, %struct.ngene* %81, i32 0, i32 12
  %83 = call i32 @wake_up(i32* %82)
  %84 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %76, %69, %62, %47
  %86 = load %struct.ngene*, %struct.ngene** %6, align 8
  %87 = getelementptr inbounds %struct.ngene, %struct.ngene* %86, i32 0, i32 11
  %88 = call i32 @spin_unlock(i32* %87)
  %89 = load %struct.ngene*, %struct.ngene** %6, align 8
  %90 = getelementptr inbounds %struct.ngene, %struct.ngene* %89, i32 0, i32 9
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 128
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %148

96:                                               ; preds = %85
  %97 = load %struct.ngene*, %struct.ngene** %6, align 8
  %98 = getelementptr inbounds %struct.ngene, %struct.ngene* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  %101 = load i32, i32* @EVENT_QUEUE_SIZE, align 4
  %102 = sub nsw i32 %101, 1
  %103 = and i32 %100, %102
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %12, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load %struct.ngene*, %struct.ngene** %6, align 8
  %107 = getelementptr inbounds %struct.ngene, %struct.ngene* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %105, %108
  br i1 %109, label %110, label %128

110:                                              ; preds = %96
  %111 = load %struct.ngene*, %struct.ngene** %6, align 8
  %112 = getelementptr inbounds %struct.ngene, %struct.ngene* %111, i32 0, i32 10
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = load %struct.ngene*, %struct.ngene** %6, align 8
  %115 = getelementptr inbounds %struct.ngene, %struct.ngene* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i64 %117
  %119 = load %struct.ngene*, %struct.ngene** %6, align 8
  %120 = getelementptr inbounds %struct.ngene, %struct.ngene* %119, i32 0, i32 9
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = bitcast %struct.TYPE_8__* %118 to i8*
  %123 = bitcast %struct.TYPE_8__* %121 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %122, i8* align 4 %123, i64 4, i1 false)
  %124 = load i64, i64* %12, align 8
  %125 = trunc i64 %124 to i32
  %126 = load %struct.ngene*, %struct.ngene** %6, align 8
  %127 = getelementptr inbounds %struct.ngene, %struct.ngene* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 8
  br label %137

128:                                              ; preds = %96
  %129 = load %struct.device*, %struct.device** %7, align 8
  %130 = call i32 @dev_err(%struct.device* %129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %131 = load %struct.ngene*, %struct.ngene** %6, align 8
  %132 = getelementptr inbounds %struct.ngene, %struct.ngene* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  %135 = load %struct.ngene*, %struct.ngene** %6, align 8
  %136 = getelementptr inbounds %struct.ngene, %struct.ngene* %135, i32 0, i32 6
  store i32 1, i32* %136, align 4
  br label %137

137:                                              ; preds = %128, %110
  %138 = load %struct.ngene*, %struct.ngene** %6, align 8
  %139 = getelementptr inbounds %struct.ngene, %struct.ngene* %138, i32 0, i32 9
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, -129
  store i32 %143, i32* %141, align 4
  %144 = load %struct.ngene*, %struct.ngene** %6, align 8
  %145 = getelementptr inbounds %struct.ngene, %struct.ngene* %144, i32 0, i32 8
  %146 = call i32 @tasklet_schedule(i32* %145)
  %147 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %137, %85
  br label %149

149:                                              ; preds = %206, %148
  %150 = load i64, i64* %10, align 8
  %151 = icmp sgt i64 %150, 0
  br i1 %151, label %152, label %214

152:                                              ; preds = %149
  %153 = load i64, i64* %10, align 8
  %154 = add nsw i64 %153, -1
  store i64 %154, i64* %10, align 8
  %155 = load %struct.ngene*, %struct.ngene** %6, align 8
  %156 = getelementptr inbounds %struct.ngene, %struct.ngene* %155, i32 0, i32 7
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = load i64, i64* %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = call i32 @spin_lock(i32* %160)
  %162 = load %struct.ngene*, %struct.ngene** %6, align 8
  %163 = getelementptr inbounds %struct.ngene, %struct.ngene* %162, i32 0, i32 7
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  %165 = load i64, i64* %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %167, align 8
  %169 = icmp ne %struct.TYPE_11__* %168, null
  br i1 %169, label %170, label %206

170:                                              ; preds = %152
  %171 = load %struct.ngene*, %struct.ngene** %6, align 8
  %172 = getelementptr inbounds %struct.ngene, %struct.ngene* %171, i32 0, i32 7
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %172, align 8
  %174 = load i64, i64* %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, 192
  %183 = icmp eq i32 %182, 128
  br i1 %183, label %184, label %205

184:                                              ; preds = %170
  %185 = load %struct.ngene*, %struct.ngene** %6, align 8
  %186 = getelementptr inbounds %struct.ngene, %struct.ngene* %185, i32 0, i32 7
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = load i64, i64* %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, 64
  store i32 %196, i32* %194, align 4
  %197 = load %struct.ngene*, %struct.ngene** %6, align 8
  %198 = getelementptr inbounds %struct.ngene, %struct.ngene* %197, i32 0, i32 7
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %198, align 8
  %200 = load i64, i64* %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 1
  %203 = call i32 @tasklet_schedule(i32* %202)
  %204 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %204, i32* %9, align 4
  br label %205

205:                                              ; preds = %184, %170
  br label %206

206:                                              ; preds = %205, %152
  %207 = load %struct.ngene*, %struct.ngene** %6, align 8
  %208 = getelementptr inbounds %struct.ngene, %struct.ngene* %207, i32 0, i32 7
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %208, align 8
  %210 = load i64, i64* %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  %213 = call i32 @spin_unlock(i32* %212)
  br label %149

214:                                              ; preds = %149
  %215 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %215, i32* %3, align 4
  br label %216

216:                                              ; preds = %214, %45
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i64 @ngreadl(i32) #1

declare dso_local i32 @ngwritel(i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
