; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_debiirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_debiirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i32, i32*, i32, i32, i32, %struct.TYPE_3__*, i32*, i32*, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"debi\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"type 0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"DEBI irq oops @ %ld, psr:0x%08x, ssr:0x%08x\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@PSR = common dso_local global i32 0, align 4
@SSR = common dso_local global i32 0, align 4
@RX_BUFF = common dso_local global i32 0, align 4
@CA_CI_MODULE_PRESENT = common dso_local global i32 0, align 4
@CA_CI_MODULE_READY = common dso_local global i32 0, align 4
@Reserved_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"debi DATA_CI_PUT\0A\00", align 1
@TX_BUFF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"debi DATA_MPEG_PLAY\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"debi DATA_BMP_LOAD\0A\00", align 1
@DEBINOSWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @debiirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debiirq(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.av7110*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.av7110*
  store %struct.av7110* %10, %struct.av7110** %3, align 8
  %11 = load %struct.av7110*, %struct.av7110** %3, align 8
  %12 = getelementptr inbounds %struct.av7110, %struct.av7110* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 8
  %16 = and i32 %15, 31
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %17 = call i32 @print_time(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i32, i8*, ...) @dprintk(i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %37

22:                                               ; preds = %1
  %23 = load i32, i32* @jiffies, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  %26 = load %struct.av7110*, %struct.av7110** %3, align 8
  %27 = getelementptr inbounds %struct.av7110, %struct.av7110* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PSR, align 4
  %30 = call i32 @saa7146_read(i32 %28, i32 %29)
  %31 = load %struct.av7110*, %struct.av7110** %3, align 8
  %32 = getelementptr inbounds %struct.av7110, %struct.av7110* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SSR, align 4
  %35 = call i32 @saa7146_read(i32 %33, i32 %34)
  %36 = call i32 (i8*, i32*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32* %25, i32 %30, i32 %35)
  br label %191

37:                                               ; preds = %1
  %38 = load %struct.av7110*, %struct.av7110** %3, align 8
  %39 = getelementptr inbounds %struct.av7110, %struct.av7110* %38, i32 0, i32 0
  store i32 -1, i32* %39, align 8
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 255
  switch i32 %41, label %189 [
    i32 128, label %42
    i32 130, label %54
    i32 132, label %76
    i32 133, label %76
    i32 129, label %76
    i32 137, label %103
    i32 135, label %157
    i32 134, label %167
    i32 136, label %180
    i32 131, label %183
    i32 138, label %186
  ]

42:                                               ; preds = %37
  %43 = load %struct.av7110*, %struct.av7110** %3, align 8
  %44 = getelementptr inbounds %struct.av7110, %struct.av7110* %43, i32 0, i32 8
  %45 = load %struct.av7110*, %struct.av7110** %3, align 8
  %46 = getelementptr inbounds %struct.av7110, %struct.av7110* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.av7110*, %struct.av7110** %3, align 8
  %49 = getelementptr inbounds %struct.av7110, %struct.av7110* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = sdiv i32 %50, 188
  %52 = call i32 @dvb_dmx_swfilter_packets(%struct.TYPE_4__* %44, i32* %47, i32 %51)
  %53 = load i32, i32* @RX_BUFF, align 4
  store i32 %53, i32* %6, align 4
  br label %190

54:                                               ; preds = %37
  %55 = load %struct.av7110*, %struct.av7110** %3, align 8
  %56 = getelementptr inbounds %struct.av7110, %struct.av7110* %55, i32 0, i32 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = load %struct.av7110*, %struct.av7110** %3, align 8
  %62 = getelementptr inbounds %struct.av7110, %struct.av7110* %61, i32 0, i32 7
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load %struct.av7110*, %struct.av7110** %3, align 8
  %68 = getelementptr inbounds %struct.av7110, %struct.av7110* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.av7110*, %struct.av7110** %3, align 8
  %71 = getelementptr inbounds %struct.av7110, %struct.av7110* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @av7110_record_cb(i32* %66, i32* %69, i32 %72)
  br label %74

74:                                               ; preds = %60, %54
  %75 = load i32, i32* @RX_BUFF, align 4
  store i32 %75, i32* %6, align 4
  br label %190

76:                                               ; preds = %37, %37, %37
  %77 = load %struct.av7110*, %struct.av7110** %3, align 8
  %78 = getelementptr inbounds %struct.av7110, %struct.av7110* %77, i32 0, i32 6
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %76
  %86 = load %struct.av7110*, %struct.av7110** %3, align 8
  %87 = getelementptr inbounds %struct.av7110, %struct.av7110* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.av7110*, %struct.av7110** %3, align 8
  %90 = getelementptr inbounds %struct.av7110, %struct.av7110* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.av7110*, %struct.av7110** %3, align 8
  %93 = getelementptr inbounds %struct.av7110, %struct.av7110* %92, i32 0, i32 6
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.av7110*, %struct.av7110** %3, align 8
  %100 = call i32 @DvbDmxFilterCallback(i32* %88, i32 %91, i32* null, i32 0, i32 %98, %struct.av7110* %99)
  br label %101

101:                                              ; preds = %85, %76
  %102 = load i32, i32* @RX_BUFF, align 4
  store i32 %102, i32* %6, align 4
  br label %190

103:                                              ; preds = %37
  %104 = load %struct.av7110*, %struct.av7110** %3, align 8
  %105 = getelementptr inbounds %struct.av7110, %struct.av7110* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  store i32* %106, i32** %7, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %109, 2
  br i1 %110, label %111, label %145

111:                                              ; preds = %103
  %112 = load i32*, i32** %7, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 255
  br i1 %115, label %116, label %145

116:                                              ; preds = %111
  store i32 0, i32* %8, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 5
  %119 = load i32, i32* %118, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load i32, i32* @CA_CI_MODULE_PRESENT, align 4
  %123 = load i32, i32* %8, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %121, %116
  %126 = load i32*, i32** %7, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 5
  %128 = load i32, i32* %127, align 4
  %129 = icmp sgt i32 %128, 5
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load i32, i32* @CA_CI_MODULE_READY, align 4
  %132 = load i32, i32* %8, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %130, %125
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.av7110*, %struct.av7110** %3, align 8
  %137 = getelementptr inbounds %struct.av7110, %struct.av7110* %136, i32 0, i32 5
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = load i32*, i32** %7, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  store i32 %135, i32* %144, align 4
  br label %155

145:                                              ; preds = %111, %103
  %146 = load %struct.av7110*, %struct.av7110** %3, align 8
  %147 = getelementptr inbounds %struct.av7110, %struct.av7110* %146, i32 0, i32 4
  %148 = load %struct.av7110*, %struct.av7110** %3, align 8
  %149 = getelementptr inbounds %struct.av7110, %struct.av7110* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.av7110*, %struct.av7110** %3, align 8
  %152 = getelementptr inbounds %struct.av7110, %struct.av7110* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @ci_get_data(i32* %147, i32* %150, i32 %153)
  br label %155

155:                                              ; preds = %145, %134
  %156 = load i32, i32* @RX_BUFF, align 4
  store i32 %156, i32* %6, align 4
  br label %190

157:                                              ; preds = %37
  %158 = load %struct.av7110*, %struct.av7110** %3, align 8
  %159 = load %struct.av7110*, %struct.av7110** %3, align 8
  %160 = getelementptr inbounds %struct.av7110, %struct.av7110* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.av7110*, %struct.av7110** %3, align 8
  %163 = getelementptr inbounds %struct.av7110, %struct.av7110* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @CI_handle(%struct.av7110* %158, i32* %161, i32 %164)
  %166 = load i32, i32* @RX_BUFF, align 4
  store i32 %166, i32* %6, align 4
  br label %190

167:                                              ; preds = %37
  %168 = load %struct.av7110*, %struct.av7110** %3, align 8
  %169 = getelementptr inbounds %struct.av7110, %struct.av7110* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* @Reserved_SIZE, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  store i32 0, i32* %174, align 4
  %175 = load %struct.av7110*, %struct.av7110** %3, align 8
  %176 = getelementptr inbounds %struct.av7110, %struct.av7110* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 (i8*, i32*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %177)
  %179 = load i32, i32* @RX_BUFF, align 4
  store i32 %179, i32* %6, align 4
  br label %190

180:                                              ; preds = %37
  %181 = call i32 (i32, i8*, ...) @dprintk(i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %182 = load i32, i32* @TX_BUFF, align 4
  store i32 %182, i32* %6, align 4
  br label %190

183:                                              ; preds = %37
  %184 = call i32 (i32, i8*, ...) @dprintk(i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %185 = load i32, i32* @TX_BUFF, align 4
  store i32 %185, i32* %6, align 4
  br label %190

186:                                              ; preds = %37
  %187 = call i32 (i32, i8*, ...) @dprintk(i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %188 = load i32, i32* @TX_BUFF, align 4
  store i32 %188, i32* %6, align 4
  br label %190

189:                                              ; preds = %37
  br label %190

190:                                              ; preds = %189, %186, %183, %180, %167, %157, %155, %101, %74, %42
  br label %191

191:                                              ; preds = %190, %22
  %192 = load %struct.av7110*, %struct.av7110** %3, align 8
  %193 = getelementptr inbounds %struct.av7110, %struct.av7110* %192, i32 0, i32 3
  %194 = call i32 @spin_lock(i32* %193)
  %195 = load i32, i32* %6, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %191
  %198 = load %struct.av7110*, %struct.av7110** %3, align 8
  %199 = load i32, i32* @DEBINOSWAP, align 4
  %200 = load i32, i32* %6, align 4
  %201 = call i32 @iwdebi(%struct.av7110* %198, i32 %199, i32 %200, i32 0, i32 2)
  br label %202

202:                                              ; preds = %197, %191
  %203 = load %struct.av7110*, %struct.av7110** %3, align 8
  %204 = call i32 @ARM_ClearMailBox(%struct.av7110* %203)
  %205 = load %struct.av7110*, %struct.av7110** %3, align 8
  %206 = getelementptr inbounds %struct.av7110, %struct.av7110* %205, i32 0, i32 3
  %207 = call i32 @spin_unlock(i32* %206)
  ret void
}

declare dso_local i32 @print_time(i8*) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @printk(i8*, i32*, ...) #1

declare dso_local i32 @saa7146_read(i32, i32) #1

declare dso_local i32 @dvb_dmx_swfilter_packets(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @av7110_record_cb(i32*, i32*, i32) #1

declare dso_local i32 @DvbDmxFilterCallback(i32*, i32, i32*, i32, i32, %struct.av7110*) #1

declare dso_local i32 @ci_get_data(i32*, i32*, i32) #1

declare dso_local i32 @CI_handle(%struct.av7110*, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iwdebi(%struct.av7110*, i32, i32, i32, i32) #1

declare dso_local i32 @ARM_ClearMailBox(%struct.av7110*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
