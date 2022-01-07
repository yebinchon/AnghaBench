; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-cpld.c_cobalt_cpld_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-cpld.c_cobalt_cpld_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.cobalt = type { i32 }

@multipliers = common dso_local global %struct.TYPE_3__* null, align 8
@DCO_MIN = common dso_local global i32 0, align 4
@DCO_MAX = common dso_local global i32 0, align 4
@SI570_CLOCK_CTRL = common dso_local global i32 0, align 4
@S01755_REG_CLOCK_CTRL_BITMAP_CLKHSMA_FPGA_CTRL = common dso_local global i32 0, align 4
@S01755_REG_CLOCK_CTRL_BITMAP_CLKHSMA_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%u: %6ph\0A\00", align 1
@SI570_REG7 = common dso_local global i32 0, align 4
@SI570_REG8 = common dso_local global i32 0, align 4
@SI570_REG9 = common dso_local global i32 0, align 4
@SI570_REG10 = common dso_local global i32 0, align 4
@SI570_REG11 = common dso_local global i32 0, align 4
@SI570_REG12 = common dso_local global i32 0, align 4
@S01755_REG_CLOCK_CTRL_BITMAP_CLKHSMA_WR_TRIGGER = common dso_local global i32 0, align 4
@S01755_REG_CLOCK_CTRL_BITMAP_CLKHSMA_RST_TRIGGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"retry: %6ph\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Needed %d retries\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cobalt_cpld_set_freq(%struct.cobalt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cobalt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [6 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [6 x i32], align 16
  store %struct.cobalt* %0, %struct.cobalt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 39170000, i32* %6, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %15, align 4
  store i32 3, i32* %17, align 4
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %56, %2
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @multipliers, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %23)
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %21
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @multipliers, align 8
  %28 = load i32, i32* %11, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %18, align 4
  %35 = mul i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @DCO_MIN, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @DCO_MAX, align 4
  %42 = icmp ugt i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %26
  br label %56

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = shl i32 %45, 28
  %47 = add i32 %46, 19585000
  %48 = call i32 @div_u64_rem(i32 %47, i32 39170000, i32* %19)
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  store i32 1, i32* %15, align 4
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %19, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %52, %44
  br label %56

56:                                               ; preds = %55, %43
  %57 = load i32, i32* %11, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %21

59:                                               ; preds = %21
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %240

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @multipliers, align 8
  %66 = load i32, i32* %10, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = mul i32 %64, %70
  store i32 %71, i32* %7, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @multipliers, align 8
  %73 = load i32, i32* %10, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** @multipliers, align 8
  %80 = load i32, i32* %10, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 4
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %7, align 4
  %87 = shl i32 %86, 28
  %88 = call i32 @div_u64(i32 %87, i32 39170000)
  store i32 %88, i32* %8, align 4
  %89 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %90 = load i32, i32* @SI570_CLOCK_CTRL, align 4
  %91 = call i32 @cpld_read(%struct.cobalt* %89, i32 %90)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* @S01755_REG_CLOCK_CTRL_BITMAP_CLKHSMA_FPGA_CTRL, align 4
  %93 = load i32, i32* %16, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* @S01755_REG_CLOCK_CTRL_BITMAP_CLKHSMA_EN, align 4
  %96 = load i32, i32* %16, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %13, align 4
  %99 = shl i32 %98, 5
  %100 = load i32, i32* %12, align 4
  %101 = ashr i32 %100, 2
  %102 = or i32 %99, %101
  %103 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  store i32 %102, i32* %103, align 16
  %104 = load i32, i32* %12, align 4
  %105 = and i32 %104, 3
  %106 = shl i32 %105, 6
  %107 = load i32, i32* %8, align 4
  %108 = lshr i32 %107, 32
  %109 = or i32 %106, %108
  %110 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 1
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* %8, align 4
  %112 = lshr i32 %111, 24
  %113 = and i32 %112, 255
  %114 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 2
  store i32 %113, i32* %114, align 8
  %115 = load i32, i32* %8, align 4
  %116 = lshr i32 %115, 16
  %117 = and i32 %116, 255
  %118 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 3
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* %8, align 4
  %120 = lshr i32 %119, 8
  %121 = and i32 %120, 255
  %122 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 4
  store i32 %121, i32* %122, align 16
  %123 = load i32, i32* %8, align 4
  %124 = and i32 %123, 255
  %125 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 5
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* %5, align 4
  %127 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  %128 = call i32 (i32, i8*, ...) @cobalt_dbg(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %126, i32* %127)
  br label %129

129:                                              ; preds = %228, %63
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %17, align 4
  %132 = icmp ne i32 %130, 0
  br i1 %132, label %133, label %231

133:                                              ; preds = %129
  %134 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %135 = load i32, i32* @SI570_CLOCK_CTRL, align 4
  %136 = load i32, i32* @S01755_REG_CLOCK_CTRL_BITMAP_CLKHSMA_EN, align 4
  %137 = load i32, i32* @S01755_REG_CLOCK_CTRL_BITMAP_CLKHSMA_FPGA_CTRL, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @cpld_write(%struct.cobalt* %134, i32 %135, i32 %138)
  %140 = call i32 @usleep_range(i32 10000, i32 15000)
  %141 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %142 = load i32, i32* @SI570_REG7, align 4
  %143 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  %144 = load i32, i32* %143, align 16
  %145 = call i32 @cpld_write(%struct.cobalt* %141, i32 %142, i32 %144)
  %146 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %147 = load i32, i32* @SI570_REG8, align 4
  %148 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @cpld_write(%struct.cobalt* %146, i32 %147, i32 %149)
  %151 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %152 = load i32, i32* @SI570_REG9, align 4
  %153 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @cpld_write(%struct.cobalt* %151, i32 %152, i32 %154)
  %156 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %157 = load i32, i32* @SI570_REG10, align 4
  %158 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 3
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @cpld_write(%struct.cobalt* %156, i32 %157, i32 %159)
  %161 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %162 = load i32, i32* @SI570_REG11, align 4
  %163 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 4
  %164 = load i32, i32* %163, align 16
  %165 = call i32 @cpld_write(%struct.cobalt* %161, i32 %162, i32 %164)
  %166 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %167 = load i32, i32* @SI570_REG12, align 4
  %168 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 5
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @cpld_write(%struct.cobalt* %166, i32 %167, i32 %169)
  %171 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %172 = load i32, i32* @SI570_CLOCK_CTRL, align 4
  %173 = load i32, i32* @S01755_REG_CLOCK_CTRL_BITMAP_CLKHSMA_EN, align 4
  %174 = load i32, i32* @S01755_REG_CLOCK_CTRL_BITMAP_CLKHSMA_WR_TRIGGER, align 4
  %175 = or i32 %173, %174
  %176 = call i32 @cpld_write(%struct.cobalt* %171, i32 %172, i32 %175)
  %177 = call i32 @usleep_range(i32 10000, i32 15000)
  %178 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %179 = load i32, i32* @SI570_CLOCK_CTRL, align 4
  %180 = load i32, i32* @S01755_REG_CLOCK_CTRL_BITMAP_CLKHSMA_EN, align 4
  %181 = load i32, i32* @S01755_REG_CLOCK_CTRL_BITMAP_CLKHSMA_FPGA_CTRL, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @cpld_write(%struct.cobalt* %178, i32 %179, i32 %182)
  %184 = call i32 @usleep_range(i32 10000, i32 15000)
  %185 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %186 = load i32, i32* @SI570_REG7, align 4
  %187 = call i32 @cpld_read(%struct.cobalt* %185, i32 %186)
  %188 = getelementptr inbounds [6 x i32], [6 x i32]* %20, i64 0, i64 0
  store i32 %187, i32* %188, align 16
  %189 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %190 = load i32, i32* @SI570_REG8, align 4
  %191 = call i32 @cpld_read(%struct.cobalt* %189, i32 %190)
  %192 = getelementptr inbounds [6 x i32], [6 x i32]* %20, i64 0, i64 1
  store i32 %191, i32* %192, align 4
  %193 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %194 = load i32, i32* @SI570_REG9, align 4
  %195 = call i32 @cpld_read(%struct.cobalt* %193, i32 %194)
  %196 = getelementptr inbounds [6 x i32], [6 x i32]* %20, i64 0, i64 2
  store i32 %195, i32* %196, align 8
  %197 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %198 = load i32, i32* @SI570_REG10, align 4
  %199 = call i32 @cpld_read(%struct.cobalt* %197, i32 %198)
  %200 = getelementptr inbounds [6 x i32], [6 x i32]* %20, i64 0, i64 3
  store i32 %199, i32* %200, align 4
  %201 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %202 = load i32, i32* @SI570_REG11, align 4
  %203 = call i32 @cpld_read(%struct.cobalt* %201, i32 %202)
  %204 = getelementptr inbounds [6 x i32], [6 x i32]* %20, i64 0, i64 4
  store i32 %203, i32* %204, align 16
  %205 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %206 = load i32, i32* @SI570_REG12, align 4
  %207 = call i32 @cpld_read(%struct.cobalt* %205, i32 %206)
  %208 = getelementptr inbounds [6 x i32], [6 x i32]* %20, i64 0, i64 5
  store i32 %207, i32* %208, align 4
  %209 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %210 = load i32, i32* @SI570_CLOCK_CTRL, align 4
  %211 = load i32, i32* @S01755_REG_CLOCK_CTRL_BITMAP_CLKHSMA_EN, align 4
  %212 = load i32, i32* @S01755_REG_CLOCK_CTRL_BITMAP_CLKHSMA_FPGA_CTRL, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @S01755_REG_CLOCK_CTRL_BITMAP_CLKHSMA_RST_TRIGGER, align 4
  %215 = or i32 %213, %214
  %216 = call i32 @cpld_write(%struct.cobalt* %209, i32 %210, i32 %215)
  %217 = call i32 @usleep_range(i32 10000, i32 15000)
  %218 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %219 = load i32, i32* @SI570_CLOCK_CTRL, align 4
  %220 = load i32, i32* @S01755_REG_CLOCK_CTRL_BITMAP_CLKHSMA_EN, align 4
  %221 = call i32 @cpld_write(%struct.cobalt* %218, i32 %219, i32 %220)
  %222 = call i32 @usleep_range(i32 10000, i32 15000)
  %223 = getelementptr inbounds [6 x i32], [6 x i32]* %20, i64 0, i64 0
  %224 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  %225 = call i32 @memcmp(i32* %223, i32* %224, i32 24)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %133
  br label %231

228:                                              ; preds = %133
  %229 = getelementptr inbounds [6 x i32], [6 x i32]* %20, i64 0, i64 0
  %230 = call i32 (i32, i8*, ...) @cobalt_dbg(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %229)
  br label %129

231:                                              ; preds = %227, %129
  %232 = load i32, i32* %17, align 4
  %233 = sub nsw i32 2, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %231
  %236 = load i32, i32* %17, align 4
  %237 = sub nsw i32 2, %236
  %238 = call i32 @cobalt_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %237)
  br label %239

239:                                              ; preds = %235, %231
  store i32 1, i32* %3, align 4
  br label %240

240:                                              ; preds = %239, %62
  %241 = load i32, i32* %3, align 4
  ret i32 %241
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @div_u64_rem(i32, i32, i32*) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @cpld_read(%struct.cobalt*, i32) #1

declare dso_local i32 @cobalt_dbg(i32, i8*, ...) #1

declare dso_local i32 @cpld_write(%struct.cobalt*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @cobalt_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
