; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-core.c_start_ts_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-core.c_start_ts_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget = type { i32, i32, i32, %struct.saa7146_dev*, %struct.TYPE_4__, i32, %struct.TYPE_3__*, i64, i32, i32, i32 }
%struct.saa7146_dev = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"budget: %p\0A\00", align 1
@MC1 = common dso_local global i32 0, align 4
@MASK_20 = common dso_local global i32 0, align 4
@PCI_BT_V1 = common dso_local global i32 0, align 4
@DD1_INIT = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@MASK_09 = common dso_local global i32 0, align 4
@MASK_25 = common dso_local global i32 0, align 4
@BRS_CTRL = common dso_local global i32 0, align 4
@MASK_10 = common dso_local global i32 0, align 4
@MASK_26 = common dso_local global i32 0, align 4
@BUDGET_VIDEO_PORTA = common dso_local global i32 0, align 4
@MASK_08 = common dso_local global i32 0, align 4
@MASK_24 = common dso_local global i32 0, align 4
@BASE_ODD3 = common dso_local global i32 0, align 4
@BASE_EVEN3 = common dso_local global i32 0, align 4
@PROT_ADDR3 = common dso_local global i32 0, align 4
@BASE_PAGE3 = common dso_local global i32 0, align 4
@ME1 = common dso_local global i32 0, align 4
@PITCH3 = common dso_local global i32 0, align 4
@NUM_LINE_BYTE3 = common dso_local global i32 0, align 4
@MASK_04 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.budget*)* @start_ts_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_ts_capture(%struct.budget* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.budget*, align 8
  %4 = alloca %struct.saa7146_dev*, align 8
  store %struct.budget* %0, %struct.budget** %3, align 8
  %5 = load %struct.budget*, %struct.budget** %3, align 8
  %6 = getelementptr inbounds %struct.budget, %struct.budget* %5, i32 0, i32 3
  %7 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  store %struct.saa7146_dev* %7, %struct.saa7146_dev** %4, align 8
  %8 = load %struct.budget*, %struct.budget** %3, align 8
  %9 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.budget* %8)
  %10 = load %struct.budget*, %struct.budget** %3, align 8
  %11 = getelementptr inbounds %struct.budget, %struct.budget* %10, i32 0, i32 10
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.budget*, %struct.budget** %3, align 8
  %16 = getelementptr inbounds %struct.budget, %struct.budget* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %1
  store i32 0, i32* %2, align 4
  br label %248

20:                                               ; preds = %14
  %21 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %22 = load i32, i32* @MC1, align 4
  %23 = load i32, i32* @MASK_20, align 4
  %24 = call i32 @saa7146_write(%struct.saa7146_dev* %21, i32 %22, i32 %23)
  %25 = load %struct.budget*, %struct.budget** %3, align 8
  %26 = getelementptr inbounds %struct.budget, %struct.budget* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.budget*, %struct.budget** %3, align 8
  %29 = getelementptr inbounds %struct.budget, %struct.budget* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @memset(i32 %27, i32 0, i32 %30)
  %32 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %33 = load i32, i32* @PCI_BT_V1, align 4
  %34 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %35 = load i32, i32* @PCI_BT_V1, align 4
  %36 = call i32 @saa7146_read(%struct.saa7146_dev* %34, i32 %35)
  %37 = and i32 %36, -2031617
  %38 = or i32 1835008, %37
  %39 = call i32 @saa7146_write(%struct.saa7146_dev* %32, i32 %33, i32 %38)
  %40 = load %struct.budget*, %struct.budget** %3, align 8
  %41 = getelementptr inbounds %struct.budget, %struct.budget* %40, i32 0, i32 7
  store i64 0, i64* %41, align 8
  %42 = load %struct.budget*, %struct.budget** %3, align 8
  %43 = getelementptr inbounds %struct.budget, %struct.budget* %42, i32 0, i32 6
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %114 [
    i32 132, label %47
    i32 128, label %60
    i32 133, label %73
    i32 130, label %73
    i32 129, label %73
    i32 131, label %73
  ]

47:                                               ; preds = %20
  %48 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %49 = load i32, i32* @DD1_INIT, align 4
  %50 = call i32 @saa7146_write(%struct.saa7146_dev* %48, i32 %49, i32 67108864)
  %51 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %52 = load i32, i32* @MC2, align 4
  %53 = load i32, i32* @MASK_09, align 4
  %54 = load i32, i32* @MASK_25, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @saa7146_write(%struct.saa7146_dev* %51, i32 %52, i32 %55)
  %57 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %58 = load i32, i32* @BRS_CTRL, align 4
  %59 = call i32 @saa7146_write(%struct.saa7146_dev* %57, i32 %58, i32 0)
  br label %155

60:                                               ; preds = %20
  %61 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %62 = load i32, i32* @DD1_INIT, align 4
  %63 = call i32 @saa7146_write(%struct.saa7146_dev* %61, i32 %62, i32 512)
  %64 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %65 = load i32, i32* @MC2, align 4
  %66 = load i32, i32* @MASK_10, align 4
  %67 = load i32, i32* @MASK_26, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @saa7146_write(%struct.saa7146_dev* %64, i32 %65, i32 %68)
  %70 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %71 = load i32, i32* @BRS_CTRL, align 4
  %72 = call i32 @saa7146_write(%struct.saa7146_dev* %70, i32 %71, i32 1610612736)
  br label %155

73:                                               ; preds = %20, %20, %20, %20
  %74 = load %struct.budget*, %struct.budget** %3, align 8
  %75 = getelementptr inbounds %struct.budget, %struct.budget* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @BUDGET_VIDEO_PORTA, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %73
  %80 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %81 = load i32, i32* @DD1_INIT, align 4
  %82 = call i32 @saa7146_write(%struct.saa7146_dev* %80, i32 %81, i32 100663808)
  %83 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %84 = load i32, i32* @MC2, align 4
  %85 = load i32, i32* @MASK_09, align 4
  %86 = load i32, i32* @MASK_25, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @MASK_10, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @MASK_26, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @saa7146_write(%struct.saa7146_dev* %83, i32 %84, i32 %91)
  %93 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %94 = load i32, i32* @BRS_CTRL, align 4
  %95 = call i32 @saa7146_write(%struct.saa7146_dev* %93, i32 %94, i32 0)
  br label %113

96:                                               ; preds = %73
  %97 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %98 = load i32, i32* @DD1_INIT, align 4
  %99 = call i32 @saa7146_write(%struct.saa7146_dev* %97, i32 %98, i32 1536)
  %100 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %101 = load i32, i32* @MC2, align 4
  %102 = load i32, i32* @MASK_09, align 4
  %103 = load i32, i32* @MASK_25, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @MASK_10, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @MASK_26, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @saa7146_write(%struct.saa7146_dev* %100, i32 %101, i32 %108)
  %110 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %111 = load i32, i32* @BRS_CTRL, align 4
  %112 = call i32 @saa7146_write(%struct.saa7146_dev* %110, i32 %111, i32 1610612736)
  br label %113

113:                                              ; preds = %96, %79
  br label %155

114:                                              ; preds = %20
  %115 = load %struct.budget*, %struct.budget** %3, align 8
  %116 = getelementptr inbounds %struct.budget, %struct.budget* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @BUDGET_VIDEO_PORTA, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %137

120:                                              ; preds = %114
  %121 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %122 = load i32, i32* @DD1_INIT, align 4
  %123 = call i32 @saa7146_write(%struct.saa7146_dev* %121, i32 %122, i32 100663808)
  %124 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %125 = load i32, i32* @MC2, align 4
  %126 = load i32, i32* @MASK_09, align 4
  %127 = load i32, i32* @MASK_25, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @MASK_10, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @MASK_26, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @saa7146_write(%struct.saa7146_dev* %124, i32 %125, i32 %132)
  %134 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %135 = load i32, i32* @BRS_CTRL, align 4
  %136 = call i32 @saa7146_write(%struct.saa7146_dev* %134, i32 %135, i32 0)
  br label %154

137:                                              ; preds = %114
  %138 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %139 = load i32, i32* @DD1_INIT, align 4
  %140 = call i32 @saa7146_write(%struct.saa7146_dev* %138, i32 %139, i32 33555968)
  %141 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %142 = load i32, i32* @MC2, align 4
  %143 = load i32, i32* @MASK_09, align 4
  %144 = load i32, i32* @MASK_25, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @MASK_10, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @MASK_26, align 4
  %149 = or i32 %147, %148
  %150 = call i32 @saa7146_write(%struct.saa7146_dev* %141, i32 %142, i32 %149)
  %151 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %152 = load i32, i32* @BRS_CTRL, align 4
  %153 = call i32 @saa7146_write(%struct.saa7146_dev* %151, i32 %152, i32 1610612736)
  br label %154

154:                                              ; preds = %137, %120
  br label %155

155:                                              ; preds = %154, %113, %60, %47
  %156 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %157 = load i32, i32* @MC2, align 4
  %158 = load i32, i32* @MASK_08, align 4
  %159 = load i32, i32* @MASK_24, align 4
  %160 = or i32 %158, %159
  %161 = call i32 @saa7146_write(%struct.saa7146_dev* %156, i32 %157, i32 %160)
  %162 = call i32 @mdelay(i32 10)
  %163 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %164 = load i32, i32* @BASE_ODD3, align 4
  %165 = call i32 @saa7146_write(%struct.saa7146_dev* %163, i32 %164, i32 0)
  %166 = load %struct.budget*, %struct.budget** %3, align 8
  %167 = getelementptr inbounds %struct.budget, %struct.budget* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.budget*, %struct.budget** %3, align 8
  %170 = getelementptr inbounds %struct.budget, %struct.budget* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.budget*, %struct.budget** %3, align 8
  %173 = getelementptr inbounds %struct.budget, %struct.budget* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = mul nsw i32 %171, %174
  %176 = icmp sgt i32 %168, %175
  br i1 %176, label %177, label %188

177:                                              ; preds = %155
  %178 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %179 = load i32, i32* @BASE_EVEN3, align 4
  %180 = load %struct.budget*, %struct.budget** %3, align 8
  %181 = getelementptr inbounds %struct.budget, %struct.budget* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.budget*, %struct.budget** %3, align 8
  %184 = getelementptr inbounds %struct.budget, %struct.budget* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = mul nsw i32 %182, %185
  %187 = call i32 @saa7146_write(%struct.saa7146_dev* %178, i32 %179, i32 %186)
  br label %192

188:                                              ; preds = %155
  %189 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %190 = load i32, i32* @BASE_EVEN3, align 4
  %191 = call i32 @saa7146_write(%struct.saa7146_dev* %189, i32 %190, i32 0)
  br label %192

192:                                              ; preds = %188, %177
  %193 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %194 = load i32, i32* @PROT_ADDR3, align 4
  %195 = load %struct.budget*, %struct.budget** %3, align 8
  %196 = getelementptr inbounds %struct.budget, %struct.budget* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @saa7146_write(%struct.saa7146_dev* %193, i32 %194, i32 %197)
  %199 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %200 = load i32, i32* @BASE_PAGE3, align 4
  %201 = load %struct.budget*, %struct.budget** %3, align 8
  %202 = getelementptr inbounds %struct.budget, %struct.budget* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @ME1, align 4
  %206 = or i32 %204, %205
  %207 = or i32 %206, 144
  %208 = call i32 @saa7146_write(%struct.saa7146_dev* %199, i32 %200, i32 %207)
  %209 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %210 = load i32, i32* @PITCH3, align 4
  %211 = load %struct.budget*, %struct.budget** %3, align 8
  %212 = getelementptr inbounds %struct.budget, %struct.budget* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @saa7146_write(%struct.saa7146_dev* %209, i32 %210, i32 %213)
  %215 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %216 = load i32, i32* @NUM_LINE_BYTE3, align 4
  %217 = load %struct.budget*, %struct.budget** %3, align 8
  %218 = getelementptr inbounds %struct.budget, %struct.budget* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = shl i32 %219, 16
  %221 = load %struct.budget*, %struct.budget** %3, align 8
  %222 = getelementptr inbounds %struct.budget, %struct.budget* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = or i32 %220, %223
  %225 = call i32 @saa7146_write(%struct.saa7146_dev* %215, i32 %216, i32 %224)
  %226 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %227 = load i32, i32* @MC2, align 4
  %228 = load i32, i32* @MASK_04, align 4
  %229 = load i32, i32* @MASK_20, align 4
  %230 = or i32 %228, %229
  %231 = call i32 @saa7146_write(%struct.saa7146_dev* %226, i32 %227, i32 %230)
  %232 = load %struct.budget*, %struct.budget** %3, align 8
  %233 = getelementptr inbounds %struct.budget, %struct.budget* %232, i32 0, i32 3
  %234 = load %struct.saa7146_dev*, %struct.saa7146_dev** %233, align 8
  %235 = load i32, i32* @MASK_10, align 4
  %236 = call i32 @SAA7146_ISR_CLEAR(%struct.saa7146_dev* %234, i32 %235)
  %237 = load %struct.budget*, %struct.budget** %3, align 8
  %238 = getelementptr inbounds %struct.budget, %struct.budget* %237, i32 0, i32 3
  %239 = load %struct.saa7146_dev*, %struct.saa7146_dev** %238, align 8
  %240 = load i32, i32* @MASK_10, align 4
  %241 = call i32 @SAA7146_IER_ENABLE(%struct.saa7146_dev* %239, i32 %240)
  %242 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %243 = load i32, i32* @MC1, align 4
  %244 = load i32, i32* @MASK_04, align 4
  %245 = load i32, i32* @MASK_20, align 4
  %246 = or i32 %244, %245
  %247 = call i32 @saa7146_write(%struct.saa7146_dev* %242, i32 %243, i32 %246)
  store i32 0, i32* %2, align 4
  br label %248

248:                                              ; preds = %192, %19
  %249 = load i32, i32* %2, align 4
  ret i32 %249
}

declare dso_local i32 @dprintk(i32, i8*, %struct.budget*) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @saa7146_read(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @SAA7146_ISR_CLEAR(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @SAA7146_IER_ENABLE(%struct.saa7146_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
