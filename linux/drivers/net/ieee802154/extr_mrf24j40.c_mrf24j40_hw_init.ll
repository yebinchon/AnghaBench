; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrf24j40 = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@REG_SOFTRST = common dso_local global i32 0, align 4
@REG_PACON2 = common dso_local global i32 0, align 4
@REG_TXSTBL = common dso_local global i32 0, align 4
@REG_RFCON0 = common dso_local global i32 0, align 4
@REG_RFCON1 = common dso_local global i32 0, align 4
@REG_RFCON2 = common dso_local global i32 0, align 4
@REG_RFCON6 = common dso_local global i32 0, align 4
@REG_RFCON7 = common dso_local global i32 0, align 4
@REG_RFCON8 = common dso_local global i32 0, align 4
@REG_SLPCON1 = common dso_local global i32 0, align 4
@REG_BBREG2 = common dso_local global i32 0, align 4
@REG_CCAEDTH = common dso_local global i32 0, align 4
@REG_BBREG6 = common dso_local global i32 0, align 4
@REG_RFCTL = common dso_local global i32 0, align 4
@REG_RXMCR = common dso_local global i32 0, align 4
@MRF24J40MC = common dso_local global i64 0, align 8
@REG_TESTMODE = common dso_local global i32 0, align 4
@REG_TRISGPIO = common dso_local global i32 0, align 4
@REG_GPIO = common dso_local global i32 0, align 4
@REG_RFCON3 = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [115 x i8] c"Using edge triggered irq's are not recommended, because it can cause races and result in a non-functional driver!\0A\00", align 1
@REG_SLPCON0 = common dso_local global i32 0, align 4
@BIT_INTEDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrf24j40*)* @mrf24j40_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrf24j40_hw_init(%struct.mrf24j40* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mrf24j40*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mrf24j40* %0, %struct.mrf24j40** %3, align 8
  %6 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %7 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @REG_SOFTRST, align 4
  %10 = call i32 @regmap_write(i32 %8, i32 %9, i32 7)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %215

14:                                               ; preds = %1
  %15 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %16 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @REG_PACON2, align 4
  %19 = call i32 @regmap_write(i32 %17, i32 %18, i32 152)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %215

23:                                               ; preds = %14
  %24 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %25 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @REG_TXSTBL, align 4
  %28 = call i32 @regmap_write(i32 %26, i32 %27, i32 149)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %215

32:                                               ; preds = %23
  %33 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %34 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @REG_RFCON0, align 4
  %37 = call i32 @regmap_write(i32 %35, i32 %36, i32 3)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %215

41:                                               ; preds = %32
  %42 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %43 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @REG_RFCON1, align 4
  %46 = call i32 @regmap_write(i32 %44, i32 %45, i32 1)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %215

50:                                               ; preds = %41
  %51 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %52 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @REG_RFCON2, align 4
  %55 = call i32 @regmap_write(i32 %53, i32 %54, i32 128)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %215

59:                                               ; preds = %50
  %60 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %61 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @REG_RFCON6, align 4
  %64 = call i32 @regmap_write(i32 %62, i32 %63, i32 144)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %215

68:                                               ; preds = %59
  %69 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %70 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @REG_RFCON7, align 4
  %73 = call i32 @regmap_write(i32 %71, i32 %72, i32 128)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %215

77:                                               ; preds = %68
  %78 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %79 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @REG_RFCON8, align 4
  %82 = call i32 @regmap_write(i32 %80, i32 %81, i32 16)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %215

86:                                               ; preds = %77
  %87 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %88 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @REG_SLPCON1, align 4
  %91 = call i32 @regmap_write(i32 %89, i32 %90, i32 33)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %215

95:                                               ; preds = %86
  %96 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %97 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @REG_BBREG2, align 4
  %100 = call i32 @regmap_write(i32 %98, i32 %99, i32 128)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %215

104:                                              ; preds = %95
  %105 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %106 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @REG_CCAEDTH, align 4
  %109 = call i32 @regmap_write(i32 %107, i32 %108, i32 96)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %215

113:                                              ; preds = %104
  %114 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %115 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @REG_BBREG6, align 4
  %118 = call i32 @regmap_write(i32 %116, i32 %117, i32 64)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %215

122:                                              ; preds = %113
  %123 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %124 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @REG_RFCTL, align 4
  %127 = call i32 @regmap_write(i32 %125, i32 %126, i32 4)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  br label %215

131:                                              ; preds = %122
  %132 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %133 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @REG_RFCTL, align 4
  %136 = call i32 @regmap_write(i32 %134, i32 %135, i32 0)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  br label %215

140:                                              ; preds = %131
  %141 = call i32 @udelay(i32 192)
  %142 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %143 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @REG_RXMCR, align 4
  %146 = call i32 @regmap_update_bits(i32 %144, i32 %145, i32 3, i32 0)
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %5, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %140
  br label %215

150:                                              ; preds = %140
  %151 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %152 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %151, i32 0, i32 1
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = call %struct.TYPE_3__* @spi_get_device_id(%struct.TYPE_4__* %153)
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @MRF24J40MC, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %180

159:                                              ; preds = %150
  %160 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %161 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @REG_TESTMODE, align 4
  %164 = call i32 @regmap_update_bits(i32 %162, i32 %163, i32 7, i32 7)
  %165 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %166 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @REG_TRISGPIO, align 4
  %169 = call i32 @regmap_update_bits(i32 %167, i32 %168, i32 8, i32 8)
  %170 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %171 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @REG_GPIO, align 4
  %174 = call i32 @regmap_update_bits(i32 %172, i32 %173, i32 8, i32 8)
  %175 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %176 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @REG_RFCON3, align 4
  %179 = call i32 @regmap_write(i32 %177, i32 %178, i32 40)
  br label %180

180:                                              ; preds = %159, %150
  %181 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %182 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %181, i32 0, i32 1
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @irq_get_trigger_type(i32 %185)
  store i32 %186, i32* %4, align 4
  %187 = load i32, i32* %4, align 4
  %188 = icmp eq i32 %187, 129
  br i1 %188, label %193, label %189

189:                                              ; preds = %180
  %190 = load i32, i32* %4, align 4
  %191 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %189, %180
  %194 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %195 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %194, i32 0, i32 1
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = call i32 @dev_warn(i32* %197, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str, i64 0, i64 0))
  br label %199

199:                                              ; preds = %193, %189
  %200 = load i32, i32* %4, align 4
  switch i32 %200, label %213 [
    i32 129, label %201
    i32 128, label %201
  ]

201:                                              ; preds = %199, %199
  %202 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %203 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @REG_SLPCON0, align 4
  %206 = load i32, i32* @BIT_INTEDGE, align 4
  %207 = load i32, i32* @BIT_INTEDGE, align 4
  %208 = call i32 @regmap_update_bits(i32 %204, i32 %205, i32 %206, i32 %207)
  store i32 %208, i32* %5, align 4
  %209 = load i32, i32* %5, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %201
  br label %215

212:                                              ; preds = %201
  br label %214

213:                                              ; preds = %199
  br label %214

214:                                              ; preds = %213, %212
  store i32 0, i32* %2, align 4
  br label %217

215:                                              ; preds = %211, %149, %139, %130, %121, %112, %103, %94, %85, %76, %67, %58, %49, %40, %31, %22, %13
  %216 = load i32, i32* %5, align 4
  store i32 %216, i32* %2, align 4
  br label %217

217:                                              ; preds = %215, %214
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_3__* @spi_get_device_id(%struct.TYPE_4__*) #1

declare dso_local i32 @irq_get_trigger_type(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
