; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_get_5720_nvram_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_get_5720_nvram_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32, i8* }

@NVRAM_CFG1 = common dso_local global i32 0, align 4
@NVRAM_CFG1_5752VENDOR_MASK = common dso_local global i32 0, align 4
@ASIC_REV_5762 = common dso_local global i64 0, align 8
@NVRAM_CFG1_5762VENDOR_MASK = common dso_local global i32 0, align 4
@NO_NVRAM = common dso_local global i32 0, align 4
@JEDEC_MACRONIX = common dso_local global i8* null, align 8
@NVRAM_BUFFERED = common dso_local global i32 0, align 4
@NO_NVRAM_ADDR_TRANS = common dso_local global i32 0, align 4
@FLASH = common dso_local global i32 0, align 4
@NVRAM_AUTOSENSE_STATUS = common dso_local global i32 0, align 4
@AUTOSENSE_DEVID = common dso_local global i32 0, align 4
@AUTOSENSE_DEVID_MASK = common dso_local global i32 0, align 4
@AUTOSENSE_SIZE_IN_MB = common dso_local global i32 0, align 4
@JEDEC_ATMEL = common dso_local global i8* null, align 8
@NVRAM_CFG1_COMPAT_BYPASS = common dso_local global i32 0, align 4
@ATMEL_AT24C512_CHIP_SIZE = common dso_local global i32 0, align 4
@ATMEL_AT24C02_CHIP_SIZE = common dso_local global i32 0, align 4
@TG3_NVRAM_SIZE_256KB = common dso_local global i8* null, align 8
@TG3_NVRAM_SIZE_512KB = common dso_local global i8* null, align 8
@TG3_NVRAM_SIZE_1MB = common dso_local global i8* null, align 8
@TG3_NVRAM_SIZE_128KB = common dso_local global i8* null, align 8
@JEDEC_ST = common dso_local global i8* null, align 8
@TG3_EEPROM_MAGIC = common dso_local global i32 0, align 4
@TG3_EEPROM_MAGIC_FW_MSK = common dso_local global i32 0, align 4
@TG3_EEPROM_MAGIC_FW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_get_5720_nvram_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_get_5720_nvram_info(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %7 = load i32, i32* @NVRAM_CFG1, align 4
  %8 = call i32 @tr32(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @NVRAM_CFG1_5752VENDOR_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.tg3*, %struct.tg3** %2, align 8
  %13 = call i64 @tg3_asic_rev(%struct.tg3* %12)
  %14 = load i64, i64* @ASIC_REV_5762, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %58

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @NVRAM_CFG1_5762VENDOR_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load %struct.tg3*, %struct.tg3** %2, align 8
  %23 = load i32, i32* @NO_NVRAM, align 4
  %24 = call i32 @tg3_flag_set(%struct.tg3* %22, i32 %23)
  br label %207

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %57 [
    i32 132, label %27
    i32 130, label %27
    i32 129, label %27
    i32 128, label %27
    i32 131, label %27
    i32 134, label %54
    i32 133, label %55
    i32 141, label %56
  ]

27:                                               ; preds = %25, %25, %25, %25, %25
  %28 = load %struct.tg3*, %struct.tg3** %2, align 8
  %29 = getelementptr inbounds %struct.tg3, %struct.tg3* %28, i32 0, i32 0
  store i32 4096, i32* %29, align 8
  %30 = load i8*, i8** @JEDEC_MACRONIX, align 8
  %31 = load %struct.tg3*, %struct.tg3** %2, align 8
  %32 = getelementptr inbounds %struct.tg3, %struct.tg3* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.tg3*, %struct.tg3** %2, align 8
  %34 = load i32, i32* @NVRAM_BUFFERED, align 4
  %35 = call i32 @tg3_flag_set(%struct.tg3* %33, i32 %34)
  %36 = load %struct.tg3*, %struct.tg3** %2, align 8
  %37 = load i32, i32* @NO_NVRAM_ADDR_TRANS, align 4
  %38 = call i32 @tg3_flag_set(%struct.tg3* %36, i32 %37)
  %39 = load %struct.tg3*, %struct.tg3** %2, align 8
  %40 = load i32, i32* @FLASH, align 4
  %41 = call i32 @tg3_flag_set(%struct.tg3* %39, i32 %40)
  %42 = load i32, i32* @NVRAM_AUTOSENSE_STATUS, align 4
  %43 = call i32 @tr32(i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @AUTOSENSE_DEVID, align 4
  %46 = ashr i32 %44, %45
  %47 = load i32, i32* @AUTOSENSE_DEVID_MASK, align 4
  %48 = and i32 %46, %47
  %49 = shl i32 1, %48
  %50 = load i32, i32* @AUTOSENSE_SIZE_IN_MB, align 4
  %51 = shl i32 %49, %50
  %52 = load %struct.tg3*, %struct.tg3** %2, align 8
  %53 = getelementptr inbounds %struct.tg3, %struct.tg3* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %207

54:                                               ; preds = %25
  store i32 136, i32* %4, align 4
  br label %57

55:                                               ; preds = %25
  store i32 135, i32* %4, align 4
  br label %57

56:                                               ; preds = %25
  store i32 137, i32* %4, align 4
  br label %57

57:                                               ; preds = %25, %56, %55, %54
  br label %58

58:                                               ; preds = %57, %1
  %59 = load i32, i32* %4, align 4
  switch i32 %59, label %161 [
    i32 136, label %60
    i32 135, label %60
    i32 150, label %85
    i32 165, label %85
    i32 164, label %85
    i32 149, label %85
    i32 163, label %85
    i32 162, label %85
    i32 148, label %85
    i32 161, label %85
    i32 160, label %85
    i32 147, label %85
    i32 159, label %85
    i32 166, label %85
    i32 146, label %123
    i32 142, label %123
    i32 158, label %123
    i32 154, label %123
    i32 145, label %123
    i32 141, label %123
    i32 157, label %123
    i32 153, label %123
    i32 144, label %123
    i32 140, label %123
    i32 156, label %123
    i32 152, label %123
    i32 143, label %123
    i32 139, label %123
    i32 155, label %123
    i32 151, label %123
    i32 138, label %123
    i32 137, label %123
  ]

60:                                               ; preds = %58, %58
  %61 = load i8*, i8** @JEDEC_ATMEL, align 8
  %62 = load %struct.tg3*, %struct.tg3** %2, align 8
  %63 = getelementptr inbounds %struct.tg3, %struct.tg3* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load %struct.tg3*, %struct.tg3** %2, align 8
  %65 = load i32, i32* @NVRAM_BUFFERED, align 4
  %66 = call i32 @tg3_flag_set(%struct.tg3* %64, i32 %65)
  %67 = load i32, i32* @NVRAM_CFG1_COMPAT_BYPASS, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %3, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* @NVRAM_CFG1, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @tw32(i32 %71, i32 %72)
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, 136
  br i1 %75, label %76, label %80

76:                                               ; preds = %60
  %77 = load i32, i32* @ATMEL_AT24C512_CHIP_SIZE, align 4
  %78 = load %struct.tg3*, %struct.tg3** %2, align 8
  %79 = getelementptr inbounds %struct.tg3, %struct.tg3* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %84

80:                                               ; preds = %60
  %81 = load i32, i32* @ATMEL_AT24C02_CHIP_SIZE, align 4
  %82 = load %struct.tg3*, %struct.tg3** %2, align 8
  %83 = getelementptr inbounds %struct.tg3, %struct.tg3* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %80, %76
  br label %207

85:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %86 = load i8*, i8** @JEDEC_ATMEL, align 8
  %87 = load %struct.tg3*, %struct.tg3** %2, align 8
  %88 = getelementptr inbounds %struct.tg3, %struct.tg3* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load %struct.tg3*, %struct.tg3** %2, align 8
  %90 = load i32, i32* @NVRAM_BUFFERED, align 4
  %91 = call i32 @tg3_flag_set(%struct.tg3* %89, i32 %90)
  %92 = load %struct.tg3*, %struct.tg3** %2, align 8
  %93 = load i32, i32* @FLASH, align 4
  %94 = call i32 @tg3_flag_set(%struct.tg3* %92, i32 %93)
  %95 = load i32, i32* %4, align 4
  switch i32 %95, label %111 [
    i32 149, label %96
    i32 163, label %96
    i32 162, label %96
    i32 148, label %101
    i32 161, label %101
    i32 160, label %101
    i32 147, label %106
    i32 159, label %106
  ]

96:                                               ; preds = %85, %85, %85
  %97 = load i8*, i8** @TG3_NVRAM_SIZE_256KB, align 8
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.tg3*, %struct.tg3** %2, align 8
  %100 = getelementptr inbounds %struct.tg3, %struct.tg3* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %122

101:                                              ; preds = %85, %85, %85
  %102 = load i8*, i8** @TG3_NVRAM_SIZE_512KB, align 8
  %103 = ptrtoint i8* %102 to i32
  %104 = load %struct.tg3*, %struct.tg3** %2, align 8
  %105 = getelementptr inbounds %struct.tg3, %struct.tg3* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  br label %122

106:                                              ; preds = %85, %85
  %107 = load i8*, i8** @TG3_NVRAM_SIZE_1MB, align 8
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.tg3*, %struct.tg3** %2, align 8
  %110 = getelementptr inbounds %struct.tg3, %struct.tg3* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %122

111:                                              ; preds = %85
  %112 = load %struct.tg3*, %struct.tg3** %2, align 8
  %113 = call i64 @tg3_asic_rev(%struct.tg3* %112)
  %114 = load i64, i64* @ASIC_REV_5762, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load i8*, i8** @TG3_NVRAM_SIZE_128KB, align 8
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.tg3*, %struct.tg3** %2, align 8
  %120 = getelementptr inbounds %struct.tg3, %struct.tg3* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %116, %111
  br label %122

122:                                              ; preds = %121, %106, %101, %96
  br label %165

123:                                              ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %124 = load i8*, i8** @JEDEC_ST, align 8
  %125 = load %struct.tg3*, %struct.tg3** %2, align 8
  %126 = getelementptr inbounds %struct.tg3, %struct.tg3* %125, i32 0, i32 2
  store i8* %124, i8** %126, align 8
  %127 = load %struct.tg3*, %struct.tg3** %2, align 8
  %128 = load i32, i32* @NVRAM_BUFFERED, align 4
  %129 = call i32 @tg3_flag_set(%struct.tg3* %127, i32 %128)
  %130 = load %struct.tg3*, %struct.tg3** %2, align 8
  %131 = load i32, i32* @FLASH, align 4
  %132 = call i32 @tg3_flag_set(%struct.tg3* %130, i32 %131)
  %133 = load i32, i32* %4, align 4
  switch i32 %133, label %149 [
    i32 145, label %134
    i32 141, label %134
    i32 157, label %134
    i32 153, label %134
    i32 144, label %139
    i32 140, label %139
    i32 156, label %139
    i32 152, label %139
    i32 143, label %144
    i32 139, label %144
    i32 155, label %144
    i32 151, label %144
  ]

134:                                              ; preds = %123, %123, %123, %123
  %135 = load i8*, i8** @TG3_NVRAM_SIZE_256KB, align 8
  %136 = ptrtoint i8* %135 to i32
  %137 = load %struct.tg3*, %struct.tg3** %2, align 8
  %138 = getelementptr inbounds %struct.tg3, %struct.tg3* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  br label %160

139:                                              ; preds = %123, %123, %123, %123
  %140 = load i8*, i8** @TG3_NVRAM_SIZE_512KB, align 8
  %141 = ptrtoint i8* %140 to i32
  %142 = load %struct.tg3*, %struct.tg3** %2, align 8
  %143 = getelementptr inbounds %struct.tg3, %struct.tg3* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  br label %160

144:                                              ; preds = %123, %123, %123, %123
  %145 = load i8*, i8** @TG3_NVRAM_SIZE_1MB, align 8
  %146 = ptrtoint i8* %145 to i32
  %147 = load %struct.tg3*, %struct.tg3** %2, align 8
  %148 = getelementptr inbounds %struct.tg3, %struct.tg3* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  br label %160

149:                                              ; preds = %123
  %150 = load %struct.tg3*, %struct.tg3** %2, align 8
  %151 = call i64 @tg3_asic_rev(%struct.tg3* %150)
  %152 = load i64, i64* @ASIC_REV_5762, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load i8*, i8** @TG3_NVRAM_SIZE_128KB, align 8
  %156 = ptrtoint i8* %155 to i32
  %157 = load %struct.tg3*, %struct.tg3** %2, align 8
  %158 = getelementptr inbounds %struct.tg3, %struct.tg3* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  br label %159

159:                                              ; preds = %154, %149
  br label %160

160:                                              ; preds = %159, %144, %139, %134
  br label %165

161:                                              ; preds = %58
  %162 = load %struct.tg3*, %struct.tg3** %2, align 8
  %163 = load i32, i32* @NO_NVRAM, align 4
  %164 = call i32 @tg3_flag_set(%struct.tg3* %162, i32 %163)
  br label %207

165:                                              ; preds = %160, %122
  %166 = load %struct.tg3*, %struct.tg3** %2, align 8
  %167 = load i32, i32* %3, align 4
  %168 = call i32 @tg3_nvram_get_pagesize(%struct.tg3* %166, i32 %167)
  %169 = load %struct.tg3*, %struct.tg3** %2, align 8
  %170 = getelementptr inbounds %struct.tg3, %struct.tg3* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 264
  br i1 %172, label %173, label %182

173:                                              ; preds = %165
  %174 = load %struct.tg3*, %struct.tg3** %2, align 8
  %175 = getelementptr inbounds %struct.tg3, %struct.tg3* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 528
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load %struct.tg3*, %struct.tg3** %2, align 8
  %180 = load i32, i32* @NO_NVRAM_ADDR_TRANS, align 4
  %181 = call i32 @tg3_flag_set(%struct.tg3* %179, i32 %180)
  br label %182

182:                                              ; preds = %178, %173, %165
  %183 = load %struct.tg3*, %struct.tg3** %2, align 8
  %184 = call i64 @tg3_asic_rev(%struct.tg3* %183)
  %185 = load i64, i64* @ASIC_REV_5762, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %207

187:                                              ; preds = %182
  %188 = load %struct.tg3*, %struct.tg3** %2, align 8
  %189 = call i64 @tg3_nvram_read(%struct.tg3* %188, i32 0, i32* %6)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  br label %207

192:                                              ; preds = %187
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* @TG3_EEPROM_MAGIC, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %206

196:                                              ; preds = %192
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @TG3_EEPROM_MAGIC_FW_MSK, align 4
  %199 = and i32 %197, %198
  %200 = load i32, i32* @TG3_EEPROM_MAGIC_FW, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %196
  %203 = load %struct.tg3*, %struct.tg3** %2, align 8
  %204 = load i32, i32* @NO_NVRAM, align 4
  %205 = call i32 @tg3_flag_set(%struct.tg3* %203, i32 %204)
  br label %206

206:                                              ; preds = %202, %196, %192
  br label %207

207:                                              ; preds = %21, %27, %84, %161, %191, %206, %182
  ret void
}

declare dso_local i32 @tr32(i32) #1

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i32 @tg3_flag_set(%struct.tg3*, i32) #1

declare dso_local i32 @tw32(i32, i32) #1

declare dso_local i32 @tg3_nvram_get_pagesize(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_nvram_read(%struct.tg3*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
