; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_ecc_read_page_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_ecc_read_page_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32* }
%struct.mtd_info = type { i64, i64 }
%struct.gpmi_nand_data = type { i64, i32*, %struct.bch_geometry }
%struct.bch_geometry = type { i32, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @gpmi_ecc_read_page_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmi_ecc_read_page_raw(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca %struct.gpmi_nand_data*, align 8
  %12 = alloca %struct.bch_geometry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %22 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %23 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %22)
  store %struct.mtd_info* %23, %struct.mtd_info** %10, align 8
  %24 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %25 = call %struct.gpmi_nand_data* @nand_get_controller_data(%struct.nand_chip* %24)
  store %struct.gpmi_nand_data* %25, %struct.gpmi_nand_data** %11, align 8
  %26 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %11, align 8
  %27 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %26, i32 0, i32 2
  store %struct.bch_geometry* %27, %struct.bch_geometry** %12, align 8
  %28 = load %struct.bch_geometry*, %struct.bch_geometry** %12, align 8
  %29 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %13, align 4
  %31 = load %struct.bch_geometry*, %struct.bch_geometry** %12, align 8
  %32 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bch_geometry*, %struct.bch_geometry** %12, align 8
  %35 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %33, %36
  store i32 %37, i32* %14, align 4
  %38 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %11, align 8
  %39 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %15, align 8
  %41 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %42 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %19, align 8
  %44 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32*, i32** %15, align 8
  %47 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %48 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %51 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %49, %52
  %54 = call i32 @nand_read_page_op(%struct.nand_chip* %44, i32 %45, i32 0, i32* %46, i64 %53)
  store i32 %54, i32* %21, align 4
  %55 = load i32, i32* %21, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %4
  %58 = load i32, i32* %21, align 4
  store i32 %58, i32* %5, align 4
  br label %194

59:                                               ; preds = %4
  %60 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %11, align 8
  %61 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load i32*, i32** %15, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %15, align 8
  %69 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %70 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @swap(i32 %67, i32 %73)
  br label %75

75:                                               ; preds = %64, %59
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i32*, i32** %19, align 8
  %80 = load i32*, i32** %15, align 8
  %81 = load %struct.bch_geometry*, %struct.bch_geometry** %12, align 8
  %82 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @memcpy(i32* %79, i32* %80, i64 %83)
  br label %85

85:                                               ; preds = %78, %75
  %86 = load %struct.bch_geometry*, %struct.bch_geometry** %12, align 8
  %87 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = mul i64 %88, 8
  store i64 %89, i64* %17, align 8
  %90 = load i64, i64* %17, align 8
  store i64 %90, i64* %16, align 8
  store i32 0, i32* %20, align 4
  br label %91

91:                                               ; preds = %161, %85
  %92 = load i32, i32* %20, align 4
  %93 = load %struct.bch_geometry*, %struct.bch_geometry** %12, align 8
  %94 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %164

97:                                               ; preds = %91
  %98 = load i32*, i32** %7, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %112

100:                                              ; preds = %97
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %20, align 4
  %103 = load i32, i32* %13, align 4
  %104 = mul nsw i32 %102, %103
  %105 = mul nsw i32 %104, 8
  %106 = sext i32 %105 to i64
  %107 = load i32*, i32** %15, align 8
  %108 = load i64, i64* %16, align 8
  %109 = load i32, i32* %13, align 4
  %110 = mul nsw i32 %109, 8
  %111 = call i32 @gpmi_copy_bits(i32* %101, i64 %106, i32* %107, i64 %108, i32 %110)
  br label %112

112:                                              ; preds = %100, %97
  %113 = load i32, i32* %13, align 4
  %114 = mul nsw i32 %113, 8
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %16, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %16, align 8
  %118 = load i32, i32* %20, align 4
  %119 = load %struct.bch_geometry*, %struct.bch_geometry** %12, align 8
  %120 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %121, 1
  %123 = icmp eq i32 %118, %122
  br i1 %123, label %124, label %142

124:                                              ; preds = %112
  %125 = load i64, i64* %17, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = add i64 %125, %127
  %129 = urem i64 %128, 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %124
  %132 = load i64, i64* %17, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = add i64 %132, %134
  %136 = urem i64 %135, 8
  %137 = sub i64 8, %136
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = add i64 %139, %137
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %14, align 4
  br label %142

142:                                              ; preds = %131, %124, %112
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  %146 = load i32*, i32** %19, align 8
  %147 = load i64, i64* %17, align 8
  %148 = load i32*, i32** %15, align 8
  %149 = load i64, i64* %16, align 8
  %150 = load i32, i32* %14, align 4
  %151 = call i32 @gpmi_copy_bits(i32* %146, i64 %147, i32* %148, i64 %149, i32 %150)
  br label %152

152:                                              ; preds = %145, %142
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %16, align 8
  %156 = add i64 %155, %154
  store i64 %156, i64* %16, align 8
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = load i64, i64* %17, align 8
  %160 = add i64 %159, %158
  store i64 %160, i64* %17, align 8
  br label %161

161:                                              ; preds = %152
  %162 = load i32, i32* %20, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %20, align 4
  br label %91

164:                                              ; preds = %91
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %193

167:                                              ; preds = %164
  %168 = load i64, i64* %17, align 8
  %169 = udiv i64 %168, 8
  store i64 %169, i64* %18, align 8
  %170 = load i64, i64* %18, align 8
  %171 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %172 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ult i64 %170, %173
  br i1 %174, label %175, label %192

175:                                              ; preds = %167
  %176 = load i32*, i32** %19, align 8
  %177 = load i64, i64* %18, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  %179 = load i32*, i32** %15, align 8
  %180 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %181 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  %184 = load i64, i64* %18, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  %186 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %187 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* %18, align 8
  %190 = sub i64 %188, %189
  %191 = call i32 @memcpy(i32* %178, i32* %185, i64 %190)
  br label %192

192:                                              ; preds = %175, %167
  br label %193

193:                                              ; preds = %192, %164
  store i32 0, i32* %5, align 4
  br label %194

194:                                              ; preds = %193, %57
  %195 = load i32, i32* %5, align 4
  ret i32 %195
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.gpmi_nand_data* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @nand_read_page_op(%struct.nand_chip*, i32, i32, i32*, i64) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @gpmi_copy_bits(i32*, i64, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
