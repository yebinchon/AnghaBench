; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ene_ir.c_ene_rx_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ene_ir.c_ene_rx_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ene_device = type { i64, i64, i32, i32, %struct.TYPE_2__*, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i8*, i8* }

@.str = private unnamed_addr constant [39 x i8] c"RX: setup receiver, learning mode = %d\00", align 1
@ENE_CIRCFG2 = common dso_local global i32 0, align 4
@sample_period = common dso_local global i32 0, align 4
@ENE_DEFAULT_SAMPLE_PERIOD = common dso_local global i32 0, align 4
@ENE_DEFAULT_PLL_FREQ = common dso_local global i64 0, align 8
@ENE_CIRRLC_CFG = common dso_local global i32 0, align 4
@ENE_CIRRLC_CFG_OVERFLOW = common dso_local global i32 0, align 4
@ENE_HW_C = common dso_local global i64 0, align 8
@ENE_CIRCFG = common dso_local global i32 0, align 4
@ENE_CIRCFG_CARR_DEMOD = common dso_local global i32 0, align 4
@ENE_CIRCAR_PULS = common dso_local global i32 0, align 4
@ENE_CIRCFG2_CARR_DETECT = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@ENE_FW_SAMPLE_PERIOD_FAN = common dso_local global i32 0, align 4
@ENE_FW_SMPL_BUF_FAN_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ene_device*)* @ene_rx_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ene_rx_setup(%struct.ene_device* %0) #0 {
  %2 = alloca %struct.ene_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ene_device* %0, %struct.ene_device** %2, align 8
  %5 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %6 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %5, i32 0, i32 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %11 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %10, i32 0, i32 7
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i1 [ true, %1 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %20 = load i32, i32* @ENE_CIRCFG2, align 4
  %21 = call i32 @ene_write_reg(%struct.ene_device* %19, i32 %20, i32 0)
  %22 = load i32, i32* @sample_period, align 4
  %23 = load i32, i32* @ENE_DEFAULT_SAMPLE_PERIOD, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %14
  %26 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %27 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ENE_DEFAULT_PLL_FREQ, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 2
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %25, %14
  %34 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %35 = load i32, i32* @ENE_CIRRLC_CFG, align 4
  %36 = load i32, i32* @sample_period, align 4
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* @ENE_CIRRLC_CFG_OVERFLOW, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @ene_write_reg(%struct.ene_device* %34, i32 %35, i32 %40)
  %42 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %43 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ENE_HW_C, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  br label %114

48:                                               ; preds = %33
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %90

51:                                               ; preds = %48
  %52 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %53 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @WARN_ON(i32 %57)
  %59 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %60 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %61 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @ene_rx_select_input(%struct.ene_device* %59, i32 %65)
  %67 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %68 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %67, i32 0, i32 3
  store i32 0, i32* %68, align 4
  %69 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %70 = load i32, i32* @ENE_CIRCFG, align 4
  %71 = load i32, i32* @ENE_CIRCFG_CARR_DEMOD, align 4
  %72 = call i32 @ene_set_reg_mask(%struct.ene_device* %69, i32 %70, i32 %71)
  %73 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %74 = load i32, i32* @ENE_CIRCAR_PULS, align 4
  %75 = call i32 @ene_write_reg(%struct.ene_device* %73, i32 %74, i32 99)
  %76 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %77 = load i32, i32* @ENE_CIRCFG2, align 4
  %78 = load i32, i32* @ENE_CIRCFG2_CARR_DETECT, align 4
  %79 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %80 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %51
  %84 = load i64, i64* @debug, align 8
  %85 = icmp ne i64 %84, 0
  br label %86

86:                                               ; preds = %83, %51
  %87 = phi i1 [ true, %51 ], [ %85, %83 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 @ene_set_clear_reg_mask(%struct.ene_device* %76, i32 %77, i32 %78, i32 %88)
  br label %113

90:                                               ; preds = %48
  %91 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %92 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %97 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %96, i32 0, i32 3
  store i32 1, i32* %97, align 4
  br label %104

98:                                               ; preds = %90
  %99 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %100 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %101 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @ene_rx_select_input(%struct.ene_device* %99, i32 %102)
  br label %104

104:                                              ; preds = %98, %95
  %105 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %106 = load i32, i32* @ENE_CIRCFG, align 4
  %107 = load i32, i32* @ENE_CIRCFG_CARR_DEMOD, align 4
  %108 = call i32 @ene_clear_reg_mask(%struct.ene_device* %105, i32 %106, i32 %107)
  %109 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %110 = load i32, i32* @ENE_CIRCFG2, align 4
  %111 = load i32, i32* @ENE_CIRCFG2_CARR_DETECT, align 4
  %112 = call i32 @ene_clear_reg_mask(%struct.ene_device* %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %104, %86
  br label %114

114:                                              ; preds = %113, %47
  %115 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %116 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %139

119:                                              ; preds = %114
  %120 = load i32, i32* @ENE_FW_SAMPLE_PERIOD_FAN, align 4
  %121 = call i8* @US_TO_NS(i32 %120)
  %122 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %123 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %122, i32 0, i32 4
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 4
  store i8* %121, i8** %125, align 8
  %126 = load i32, i32* @ENE_FW_SMPL_BUF_FAN_MSK, align 4
  %127 = load i32, i32* @ENE_FW_SAMPLE_PERIOD_FAN, align 4
  %128 = mul nsw i32 %126, %127
  %129 = call i8* @US_TO_NS(i32 %128)
  %130 = ptrtoint i8* %129 to i64
  %131 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %132 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %131, i32 0, i32 4
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  store i64 %130, i64* %134, align 8
  %135 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %136 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %135, i32 0, i32 4
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  store i64 %130, i64* %138, align 8
  br label %160

139:                                              ; preds = %114
  %140 = load i32, i32* @sample_period, align 4
  %141 = call i8* @US_TO_NS(i32 %140)
  %142 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %143 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %142, i32 0, i32 4
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 4
  store i8* %141, i8** %145, align 8
  %146 = load i32, i32* @sample_period, align 4
  %147 = mul nsw i32 127, %146
  %148 = call i8* @US_TO_NS(i32 %147)
  %149 = ptrtoint i8* %148 to i64
  %150 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %151 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %150, i32 0, i32 4
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  store i64 %149, i64* %153, align 8
  %154 = call i8* @US_TO_NS(i32 200000)
  %155 = ptrtoint i8* %154 to i64
  %156 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %157 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %156, i32 0, i32 4
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  store i64 %155, i64* %159, align 8
  br label %160

160:                                              ; preds = %139, %119
  %161 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %162 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %160
  %166 = load i32, i32* @sample_period, align 4
  %167 = call i8* @US_TO_NS(i32 %166)
  %168 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %169 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %168, i32 0, i32 4
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 3
  store i8* %167, i8** %171, align 8
  br label %172

172:                                              ; preds = %165, %160
  %173 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %174 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %173, i32 0, i32 4
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %179 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %178, i32 0, i32 4
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp sgt i64 %177, %182
  br i1 %183, label %184, label %194

184:                                              ; preds = %172
  %185 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %186 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %185, i32 0, i32 4
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %191 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %190, i32 0, i32 4
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 2
  store i64 %189, i64* %193, align 8
  br label %194

194:                                              ; preds = %184, %172
  %195 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %196 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %195, i32 0, i32 4
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %201 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %200, i32 0, i32 4
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp slt i64 %199, %204
  br i1 %205, label %206, label %216

206:                                              ; preds = %194
  %207 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %208 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %207, i32 0, i32 4
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %213 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %212, i32 0, i32 4
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 2
  store i64 %211, i64* %215, align 8
  br label %216

216:                                              ; preds = %206, %194
  ret void
}

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @ene_write_reg(%struct.ene_device*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ene_rx_select_input(%struct.ene_device*, i32) #1

declare dso_local i32 @ene_set_reg_mask(%struct.ene_device*, i32, i32) #1

declare dso_local i32 @ene_set_clear_reg_mask(%struct.ene_device*, i32, i32, i32) #1

declare dso_local i32 @ene_clear_reg_mask(%struct.ene_device*, i32, i32) #1

declare dso_local i8* @US_TO_NS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
