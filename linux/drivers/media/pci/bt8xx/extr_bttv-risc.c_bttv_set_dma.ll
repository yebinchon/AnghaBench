; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-risc.c_bttv_set_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-risc.c_bttv_set_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32, i32, i32, %struct.TYPE_11__, i32, %struct.TYPE_20__*, %struct.TYPE_19__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_16__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__*, %struct.TYPE_15__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"%d: capctl=%x lirq=%d top=%08llx/%08llx even=%08llx/%08llx\0A\00", align 1
@BT848_RISC_JUMP = common dso_local global i64 0, align 8
@BT848_RISC_IRQ = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@BTTV_TIMEOUT = common dso_local global i64 0, align 8
@RISC_SLOT_LOOP = common dso_local global i64 0, align 8
@BT848_CAP_CTL = common dso_local global i32 0, align 4
@BT848_RISC_STRT_ADD = common dso_local global i32 0, align 4
@BT848_GPIO_DMA_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bttv_set_dma(%struct.bttv* %0, i32 %1) #0 {
  %3 = alloca %struct.bttv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bttv*, %struct.bttv** %3, align 8
  %8 = getelementptr inbounds %struct.bttv, %struct.bttv* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load %struct.bttv*, %struct.bttv** %3, align 8
  %10 = getelementptr inbounds %struct.bttv, %struct.bttv* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %13 = icmp ne %struct.TYPE_15__* null, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.bttv*, %struct.bttv** %3, align 8
  %16 = getelementptr inbounds %struct.bttv, %struct.bttv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, 2
  store i32 %18, i32* %16, align 8
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.bttv*, %struct.bttv** %3, align 8
  %21 = getelementptr inbounds %struct.bttv, %struct.bttv* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %24 = icmp ne %struct.TYPE_18__* null, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.bttv*, %struct.bttv** %3, align 8
  %27 = getelementptr inbounds %struct.bttv, %struct.bttv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, 1
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %25, %19
  %31 = load %struct.bttv*, %struct.bttv** %3, align 8
  %32 = getelementptr inbounds %struct.bttv, %struct.bttv* %31, i32 0, i32 5
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %34 = icmp ne %struct.TYPE_20__* null, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.bttv*, %struct.bttv** %3, align 8
  %37 = getelementptr inbounds %struct.bttv, %struct.bttv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, 12
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %35, %30
  store i32 0, i32* %6, align 4
  %41 = load %struct.bttv*, %struct.bttv** %3, align 8
  %42 = getelementptr inbounds %struct.bttv, %struct.bttv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, 3
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 3, i32 0
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load %struct.bttv*, %struct.bttv** %3, align 8
  %51 = getelementptr inbounds %struct.bttv, %struct.bttv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, 12
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 12, i32 0
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load %struct.bttv*, %struct.bttv** %3, align 8
  %63 = getelementptr inbounds %struct.bttv, %struct.bttv* %62, i32 0, i32 7
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.bttv*, %struct.bttv** %3, align 8
  %68 = getelementptr inbounds %struct.bttv, %struct.bttv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.bttv*, %struct.bttv** %3, align 8
  %71 = getelementptr inbounds %struct.bttv, %struct.bttv* %70, i32 0, i32 5
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %71, align 8
  %73 = icmp ne %struct.TYPE_20__* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %40
  %75 = load %struct.bttv*, %struct.bttv** %3, align 8
  %76 = getelementptr inbounds %struct.bttv, %struct.bttv* %75, i32 0, i32 5
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  br label %82

81:                                               ; preds = %40
  br label %82

82:                                               ; preds = %81, %74
  %83 = phi i64 [ %80, %74 ], [ 0, %81 ]
  %84 = load %struct.bttv*, %struct.bttv** %3, align 8
  %85 = getelementptr inbounds %struct.bttv, %struct.bttv* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = icmp ne %struct.TYPE_15__* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %82
  %90 = load %struct.bttv*, %struct.bttv** %3, align 8
  %91 = getelementptr inbounds %struct.bttv, %struct.bttv* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  br label %98

97:                                               ; preds = %82
  br label %98

98:                                               ; preds = %97, %89
  %99 = phi i64 [ %96, %89 ], [ 0, %97 ]
  %100 = load %struct.bttv*, %struct.bttv** %3, align 8
  %101 = getelementptr inbounds %struct.bttv, %struct.bttv* %100, i32 0, i32 5
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %101, align 8
  %103 = icmp ne %struct.TYPE_20__* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load %struct.bttv*, %struct.bttv** %3, align 8
  %106 = getelementptr inbounds %struct.bttv, %struct.bttv* %105, i32 0, i32 5
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  br label %112

111:                                              ; preds = %98
  br label %112

112:                                              ; preds = %111, %104
  %113 = phi i64 [ %110, %104 ], [ 0, %111 ]
  %114 = load %struct.bttv*, %struct.bttv** %3, align 8
  %115 = getelementptr inbounds %struct.bttv, %struct.bttv* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %116, align 8
  %118 = icmp ne %struct.TYPE_18__* %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %112
  %120 = load %struct.bttv*, %struct.bttv** %3, align 8
  %121 = getelementptr inbounds %struct.bttv, %struct.bttv* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  br label %128

127:                                              ; preds = %112
  br label %128

128:                                              ; preds = %127, %119
  %129 = phi i64 [ %126, %119 ], [ 0, %127 ]
  %130 = call i32 @d2printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66, i32 %69, i64 %83, i64 %99, i64 %113, i64 %129)
  %131 = load i64, i64* @BT848_RISC_JUMP, align 8
  store i64 %131, i64* %5, align 8
  %132 = load %struct.bttv*, %struct.bttv** %3, align 8
  %133 = getelementptr inbounds %struct.bttv, %struct.bttv* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %157

136:                                              ; preds = %128
  %137 = load i64, i64* @BT848_RISC_IRQ, align 8
  %138 = load i64, i64* %5, align 8
  %139 = or i64 %138, %137
  store i64 %139, i64* %5, align 8
  %140 = load %struct.bttv*, %struct.bttv** %3, align 8
  %141 = getelementptr inbounds %struct.bttv, %struct.bttv* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 15
  %144 = shl i32 %143, 16
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* %5, align 8
  %147 = or i64 %146, %145
  store i64 %147, i64* %5, align 8
  %148 = load %struct.bttv*, %struct.bttv** %3, align 8
  %149 = getelementptr inbounds %struct.bttv, %struct.bttv* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = xor i32 %150, -1
  %152 = and i32 %151, 15
  %153 = shl i32 %152, 20
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %5, align 8
  %156 = or i64 %155, %154
  store i64 %156, i64* %5, align 8
  br label %157

157:                                              ; preds = %136, %128
  %158 = load %struct.bttv*, %struct.bttv** %3, align 8
  %159 = getelementptr inbounds %struct.bttv, %struct.bttv* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %173, label %163

163:                                              ; preds = %157
  %164 = load %struct.bttv*, %struct.bttv** %3, align 8
  %165 = getelementptr inbounds %struct.bttv, %struct.bttv* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %163
  %169 = load %struct.bttv*, %struct.bttv** %3, align 8
  %170 = getelementptr inbounds %struct.bttv, %struct.bttv* %169, i32 0, i32 5
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %170, align 8
  %172 = icmp ne %struct.TYPE_20__* %171, null
  br i1 %172, label %173, label %180

173:                                              ; preds = %168, %163, %157
  %174 = load %struct.bttv*, %struct.bttv** %3, align 8
  %175 = getelementptr inbounds %struct.bttv, %struct.bttv* %174, i32 0, i32 4
  %176 = load i64, i64* @jiffies, align 8
  %177 = load i64, i64* @BTTV_TIMEOUT, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @mod_timer(i32* %175, i64 %178)
  br label %184

180:                                              ; preds = %168
  %181 = load %struct.bttv*, %struct.bttv** %3, align 8
  %182 = getelementptr inbounds %struct.bttv, %struct.bttv* %181, i32 0, i32 4
  %183 = call i32 @del_timer(i32* %182)
  br label %184

184:                                              ; preds = %180, %173
  %185 = load i64, i64* %5, align 8
  %186 = call i32 @cpu_to_le32(i64 %185)
  %187 = load %struct.bttv*, %struct.bttv** %3, align 8
  %188 = getelementptr inbounds %struct.bttv, %struct.bttv* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load i64, i64* @RISC_SLOT_LOOP, align 8
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  store i32 %186, i32* %192, align 4
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* @BT848_CAP_CTL, align 4
  %195 = call i32 @btaor(i32 %193, i32 -16, i32 %194)
  %196 = load i32, i32* %6, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %215

198:                                              ; preds = %184
  %199 = load %struct.bttv*, %struct.bttv** %3, align 8
  %200 = getelementptr inbounds %struct.bttv, %struct.bttv* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  br label %227

204:                                              ; preds = %198
  %205 = load %struct.bttv*, %struct.bttv** %3, align 8
  %206 = getelementptr inbounds %struct.bttv, %struct.bttv* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @BT848_RISC_STRT_ADD, align 4
  %210 = call i32 @btwrite(i32 %208, i32 %209)
  %211 = load i32, i32* @BT848_GPIO_DMA_CTL, align 4
  %212 = call i32 @btor(i32 3, i32 %211)
  %213 = load %struct.bttv*, %struct.bttv** %3, align 8
  %214 = getelementptr inbounds %struct.bttv, %struct.bttv* %213, i32 0, i32 2
  store i32 1, i32* %214, align 8
  br label %226

215:                                              ; preds = %184
  %216 = load %struct.bttv*, %struct.bttv** %3, align 8
  %217 = getelementptr inbounds %struct.bttv, %struct.bttv* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %215
  br label %227

221:                                              ; preds = %215
  %222 = load i32, i32* @BT848_GPIO_DMA_CTL, align 4
  %223 = call i32 @btand(i32 -4, i32 %222)
  %224 = load %struct.bttv*, %struct.bttv** %3, align 8
  %225 = getelementptr inbounds %struct.bttv, %struct.bttv* %224, i32 0, i32 2
  store i32 0, i32* %225, align 8
  br label %226

226:                                              ; preds = %221, %204
  br label %227

227:                                              ; preds = %226, %220, %203
  ret void
}

declare dso_local i32 @d2printk(i8*, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @btaor(i32, i32, i32) #1

declare dso_local i32 @btwrite(i32, i32) #1

declare dso_local i32 @btor(i32, i32) #1

declare dso_local i32 @btand(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
