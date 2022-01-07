; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-enc.c_solo_capture_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-enc.c_solo_capture_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i64, i64, i64, i32 }

@SOLO_CAP_BASE = common dso_local global i32 0, align 4
@SOLO_CAP_PAGE_SIZE = common dso_local global i32 0, align 4
@SOLO_DEV_6110 = common dso_local global i64 0, align 8
@SOLO_CAP_BTW = common dso_local global i32 0, align 4
@SOLO_DIM_SCALE1 = common dso_local global i32 0, align 4
@SOLO_DIM_SCALE2 = common dso_local global i32 0, align 4
@SOLO_DIM_SCALE3 = common dso_local global i32 0, align 4
@SOLO_DIM_SCALE4 = common dso_local global i32 0, align 4
@SOLO_DIM_SCALE5 = common dso_local global i32 0, align 4
@VI_PROG_HSIZE = common dso_local global i64 0, align 8
@VI_PROG_VSIZE = common dso_local global i64 0, align 8
@SOLO_DIM_PROG = common dso_local global i32 0, align 4
@SOLO_VE_OSD_CH = common dso_local global i32 0, align 4
@SOLO_VE_OSD_BASE = common dso_local global i32 0, align 4
@SOLO_EOSD_EXT_ADDR = common dso_local global i32 0, align 4
@SOLO_VE_OSD_CLR = common dso_local global i32 0, align 4
@SOLO_DEV_6010 = common dso_local global i64 0, align 8
@SOLO_VE_OSD_OPT = common dso_local global i32 0, align 4
@SOLO_VE_OSD_H_SHADOW = common dso_local global i32 0, align 4
@SOLO_VE_OSD_V_SHADOW = common dso_local global i32 0, align 4
@SOLO_VE_OSD_V_DOUBLE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.solo_dev*)* @solo_capture_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solo_capture_config(%struct.solo_dev* %0) #0 {
  %2 = alloca %struct.solo_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %2, align 8
  %7 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %8 = load i32, i32* @SOLO_CAP_BASE, align 4
  %9 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %10 = call i32 @SOLO_CAP_EXT_SIZE(%struct.solo_dev* %9)
  %11 = load i32, i32* @SOLO_CAP_PAGE_SIZE, align 4
  %12 = sub nsw i32 %10, %11
  %13 = ashr i32 %12, 16
  %14 = call i32 @SOLO_CAP_MAX_PAGE(i32 %13)
  %15 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %16 = call i32 @SOLO_CAP_EXT_ADDR(%struct.solo_dev* %15)
  %17 = ashr i32 %16, 16
  %18 = call i32 @SOLO_CAP_BASE_ADDR(i32 %17)
  %19 = or i32 %14, %18
  %20 = call i32 @solo_reg_write(%struct.solo_dev* %7, i32 %8, i32 %19)
  %21 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %22 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SOLO_DEV_6110, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %1
  %27 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %28 = load i32, i32* @SOLO_CAP_BTW, align 4
  %29 = call i32 @SOLO_CAP_PROG_BANDWIDTH(i32 2)
  %30 = or i32 131072, %29
  %31 = call i32 @SOLO_CAP_MAX_BANDWIDTH(i32 36)
  %32 = or i32 %30, %31
  %33 = call i32 @solo_reg_write(%struct.solo_dev* %27, i32 %28, i32 %32)
  br label %42

34:                                               ; preds = %1
  %35 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %36 = load i32, i32* @SOLO_CAP_BTW, align 4
  %37 = call i32 @SOLO_CAP_PROG_BANDWIDTH(i32 2)
  %38 = or i32 131072, %37
  %39 = call i32 @SOLO_CAP_MAX_BANDWIDTH(i32 32)
  %40 = or i32 %38, %39
  %41 = call i32 @solo_reg_write(%struct.solo_dev* %35, i32 %36, i32 %40)
  br label %42

42:                                               ; preds = %34, %26
  %43 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %44 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %4, align 8
  %46 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %47 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %3, align 8
  %49 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %50 = load i32, i32* @SOLO_DIM_SCALE1, align 4
  %51 = load i64, i64* %4, align 8
  %52 = udiv i64 %51, 16
  %53 = call i32 @SOLO_DIM_H_MB_NUM(i64 %52)
  %54 = load i64, i64* %3, align 8
  %55 = udiv i64 %54, 8
  %56 = call i32 @SOLO_DIM_V_MB_NUM_FRAME(i64 %55)
  %57 = or i32 %53, %56
  %58 = load i64, i64* %3, align 8
  %59 = udiv i64 %58, 16
  %60 = call i32 @SOLO_DIM_V_MB_NUM_FIELD(i64 %59)
  %61 = or i32 %57, %60
  %62 = call i32 @solo_reg_write(%struct.solo_dev* %49, i32 %50, i32 %61)
  %63 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %64 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = udiv i64 %65, 2
  store i64 %66, i64* %4, align 8
  %67 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %68 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %3, align 8
  %70 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %71 = load i32, i32* @SOLO_DIM_SCALE2, align 4
  %72 = load i64, i64* %4, align 8
  %73 = udiv i64 %72, 16
  %74 = call i32 @SOLO_DIM_H_MB_NUM(i64 %73)
  %75 = load i64, i64* %3, align 8
  %76 = udiv i64 %75, 8
  %77 = call i32 @SOLO_DIM_V_MB_NUM_FRAME(i64 %76)
  %78 = or i32 %74, %77
  %79 = load i64, i64* %3, align 8
  %80 = udiv i64 %79, 16
  %81 = call i32 @SOLO_DIM_V_MB_NUM_FIELD(i64 %80)
  %82 = or i32 %78, %81
  %83 = call i32 @solo_reg_write(%struct.solo_dev* %70, i32 %71, i32 %82)
  %84 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %85 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = udiv i64 %86, 2
  store i64 %87, i64* %4, align 8
  %88 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %89 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = udiv i64 %90, 2
  store i64 %91, i64* %3, align 8
  %92 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %93 = load i32, i32* @SOLO_DIM_SCALE3, align 4
  %94 = load i64, i64* %4, align 8
  %95 = udiv i64 %94, 16
  %96 = call i32 @SOLO_DIM_H_MB_NUM(i64 %95)
  %97 = load i64, i64* %3, align 8
  %98 = udiv i64 %97, 8
  %99 = call i32 @SOLO_DIM_V_MB_NUM_FRAME(i64 %98)
  %100 = or i32 %96, %99
  %101 = load i64, i64* %3, align 8
  %102 = udiv i64 %101, 16
  %103 = call i32 @SOLO_DIM_V_MB_NUM_FIELD(i64 %102)
  %104 = or i32 %100, %103
  %105 = call i32 @solo_reg_write(%struct.solo_dev* %92, i32 %93, i32 %104)
  %106 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %107 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = udiv i64 %108, 3
  store i64 %109, i64* %4, align 8
  %110 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %111 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = udiv i64 %112, 3
  store i64 %113, i64* %3, align 8
  %114 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %115 = load i32, i32* @SOLO_DIM_SCALE4, align 4
  %116 = load i64, i64* %4, align 8
  %117 = udiv i64 %116, 16
  %118 = call i32 @SOLO_DIM_H_MB_NUM(i64 %117)
  %119 = load i64, i64* %3, align 8
  %120 = udiv i64 %119, 8
  %121 = call i32 @SOLO_DIM_V_MB_NUM_FRAME(i64 %120)
  %122 = or i32 %118, %121
  %123 = load i64, i64* %3, align 8
  %124 = udiv i64 %123, 16
  %125 = call i32 @SOLO_DIM_V_MB_NUM_FIELD(i64 %124)
  %126 = or i32 %122, %125
  %127 = call i32 @solo_reg_write(%struct.solo_dev* %114, i32 %115, i32 %126)
  %128 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %129 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = udiv i64 %130, 4
  store i64 %131, i64* %4, align 8
  %132 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %133 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = udiv i64 %134, 2
  store i64 %135, i64* %3, align 8
  %136 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %137 = load i32, i32* @SOLO_DIM_SCALE5, align 4
  %138 = load i64, i64* %4, align 8
  %139 = udiv i64 %138, 16
  %140 = call i32 @SOLO_DIM_H_MB_NUM(i64 %139)
  %141 = load i64, i64* %3, align 8
  %142 = udiv i64 %141, 8
  %143 = call i32 @SOLO_DIM_V_MB_NUM_FRAME(i64 %142)
  %144 = or i32 %140, %143
  %145 = load i64, i64* %3, align 8
  %146 = udiv i64 %145, 16
  %147 = call i32 @SOLO_DIM_V_MB_NUM_FIELD(i64 %146)
  %148 = or i32 %144, %147
  %149 = call i32 @solo_reg_write(%struct.solo_dev* %136, i32 %137, i32 %148)
  %150 = load i64, i64* @VI_PROG_HSIZE, align 8
  store i64 %150, i64* %4, align 8
  %151 = load i64, i64* @VI_PROG_VSIZE, align 8
  store i64 %151, i64* %3, align 8
  %152 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %153 = load i32, i32* @SOLO_DIM_PROG, align 4
  %154 = load i64, i64* %4, align 8
  %155 = udiv i64 %154, 16
  %156 = call i32 @SOLO_DIM_H_MB_NUM(i64 %155)
  %157 = load i64, i64* %3, align 8
  %158 = udiv i64 %157, 16
  %159 = call i32 @SOLO_DIM_V_MB_NUM_FRAME(i64 %158)
  %160 = or i32 %156, %159
  %161 = load i64, i64* %3, align 8
  %162 = udiv i64 %161, 16
  %163 = call i32 @SOLO_DIM_V_MB_NUM_FIELD(i64 %162)
  %164 = or i32 %160, %163
  %165 = call i32 @solo_reg_write(%struct.solo_dev* %152, i32 %153, i32 %164)
  %166 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %167 = load i32, i32* @SOLO_VE_OSD_CH, align 4
  %168 = call i32 @solo_reg_write(%struct.solo_dev* %166, i32 %167, i32 0)
  %169 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %170 = load i32, i32* @SOLO_VE_OSD_BASE, align 4
  %171 = load i32, i32* @SOLO_EOSD_EXT_ADDR, align 4
  %172 = ashr i32 %171, 16
  %173 = call i32 @solo_reg_write(%struct.solo_dev* %169, i32 %170, i32 %172)
  %174 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %175 = load i32, i32* @SOLO_VE_OSD_CLR, align 4
  %176 = call i32 @solo_reg_write(%struct.solo_dev* %174, i32 %175, i32 15761536)
  %177 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %178 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @SOLO_DEV_6010, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %42
  %183 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %184 = load i32, i32* @SOLO_VE_OSD_OPT, align 4
  %185 = load i32, i32* @SOLO_VE_OSD_H_SHADOW, align 4
  %186 = load i32, i32* @SOLO_VE_OSD_V_SHADOW, align 4
  %187 = or i32 %185, %186
  %188 = call i32 @solo_reg_write(%struct.solo_dev* %183, i32 %184, i32 %187)
  br label %198

189:                                              ; preds = %42
  %190 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %191 = load i32, i32* @SOLO_VE_OSD_OPT, align 4
  %192 = load i32, i32* @SOLO_VE_OSD_V_DOUBLE, align 4
  %193 = load i32, i32* @SOLO_VE_OSD_H_SHADOW, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @SOLO_VE_OSD_V_SHADOW, align 4
  %196 = or i32 %194, %195
  %197 = call i32 @solo_reg_write(%struct.solo_dev* %190, i32 %191, i32 %196)
  br label %198

198:                                              ; preds = %189, %182
  %199 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %200 = call i32 @SOLO_EOSD_EXT_SIZE(%struct.solo_dev* %199)
  %201 = load i32, i32* @GFP_KERNEL, align 4
  %202 = call i8* @kzalloc(i32 %200, i32 %201)
  store i8* %202, i8** %5, align 8
  %203 = load i8*, i8** %5, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %206, label %205

205:                                              ; preds = %198
  br label %231

206:                                              ; preds = %198
  store i32 0, i32* %6, align 4
  br label %207

207:                                              ; preds = %225, %206
  %208 = load i32, i32* %6, align 4
  %209 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %210 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = icmp slt i32 %208, %211
  br i1 %212, label %213, label %228

213:                                              ; preds = %207
  %214 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %215 = load i8*, i8** %5, align 8
  %216 = load i32, i32* @SOLO_EOSD_EXT_ADDR, align 4
  %217 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %218 = call i32 @SOLO_EOSD_EXT_SIZE(%struct.solo_dev* %217)
  %219 = load i32, i32* %6, align 4
  %220 = mul nsw i32 %218, %219
  %221 = add nsw i32 %216, %220
  %222 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %223 = call i32 @SOLO_EOSD_EXT_SIZE(%struct.solo_dev* %222)
  %224 = call i32 @solo_p2m_dma(%struct.solo_dev* %214, i32 1, i8* %215, i32 %221, i32 %223, i32 0, i32 0)
  br label %225

225:                                              ; preds = %213
  %226 = load i32, i32* %6, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %6, align 4
  br label %207

228:                                              ; preds = %207
  %229 = load i8*, i8** %5, align 8
  %230 = call i32 @kfree(i8* %229)
  br label %231

231:                                              ; preds = %228, %205
  ret void
}

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @SOLO_CAP_MAX_PAGE(i32) #1

declare dso_local i32 @SOLO_CAP_EXT_SIZE(%struct.solo_dev*) #1

declare dso_local i32 @SOLO_CAP_BASE_ADDR(i32) #1

declare dso_local i32 @SOLO_CAP_EXT_ADDR(%struct.solo_dev*) #1

declare dso_local i32 @SOLO_CAP_PROG_BANDWIDTH(i32) #1

declare dso_local i32 @SOLO_CAP_MAX_BANDWIDTH(i32) #1

declare dso_local i32 @SOLO_DIM_H_MB_NUM(i64) #1

declare dso_local i32 @SOLO_DIM_V_MB_NUM_FRAME(i64) #1

declare dso_local i32 @SOLO_DIM_V_MB_NUM_FIELD(i64) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @SOLO_EOSD_EXT_SIZE(%struct.solo_dev*) #1

declare dso_local i32 @solo_p2m_dma(%struct.solo_dev*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
