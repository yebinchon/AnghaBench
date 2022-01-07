; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_ecc_write_page_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_ecc_write_page_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32* }
%struct.mtd_info = type { i64, i64 }
%struct.gpmi_nand_data = type { i64, i32*, %struct.bch_geometry }
%struct.bch_geometry = type { i32, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @gpmi_ecc_write_page_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmi_ecc_write_page_raw(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.gpmi_nand_data*, align 8
  %11 = alloca %struct.bch_geometry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %20 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %21 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %20)
  store %struct.mtd_info* %21, %struct.mtd_info** %9, align 8
  %22 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %23 = call %struct.gpmi_nand_data* @nand_get_controller_data(%struct.nand_chip* %22)
  store %struct.gpmi_nand_data* %23, %struct.gpmi_nand_data** %10, align 8
  %24 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %10, align 8
  %25 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %24, i32 0, i32 2
  store %struct.bch_geometry* %25, %struct.bch_geometry** %11, align 8
  %26 = load %struct.bch_geometry*, %struct.bch_geometry** %11, align 8
  %27 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %12, align 4
  %29 = load %struct.bch_geometry*, %struct.bch_geometry** %11, align 8
  %30 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bch_geometry*, %struct.bch_geometry** %11, align 8
  %33 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %31, %34
  store i32 %35, i32* %13, align 4
  %36 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %10, align 8
  %37 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %14, align 8
  %39 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %40 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %15, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %44, %4
  %48 = load i32*, i32** %14, align 8
  %49 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %50 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %53 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %51, %54
  %56 = call i32 @memset(i32* %48, i32 255, i64 %55)
  br label %57

57:                                               ; preds = %47, %44
  %58 = load i32*, i32** %14, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = load %struct.bch_geometry*, %struct.bch_geometry** %11, align 8
  %61 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @memcpy(i32* %58, i32* %59, i64 %62)
  %64 = load %struct.bch_geometry*, %struct.bch_geometry** %11, align 8
  %65 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = mul i64 %66, 8
  store i64 %67, i64* %17, align 8
  %68 = load i64, i64* %17, align 8
  store i64 %68, i64* %16, align 8
  store i32 0, i32* %19, align 4
  br label %69

69:                                               ; preds = %139, %57
  %70 = load i32, i32* %19, align 4
  %71 = load %struct.bch_geometry*, %struct.bch_geometry** %11, align 8
  %72 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %142

75:                                               ; preds = %69
  %76 = load i32*, i32** %6, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load i32*, i32** %14, align 8
  %80 = load i64, i64* %16, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* %12, align 4
  %84 = mul nsw i32 %82, %83
  %85 = mul nsw i32 %84, 8
  %86 = sext i32 %85 to i64
  %87 = load i32, i32* %12, align 4
  %88 = mul nsw i32 %87, 8
  %89 = call i32 @gpmi_copy_bits(i32* %79, i64 %80, i32* %81, i64 %86, i32 %88)
  br label %90

90:                                               ; preds = %78, %75
  %91 = load i32, i32* %12, align 4
  %92 = mul nsw i32 %91, 8
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %16, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %16, align 8
  %96 = load i32, i32* %19, align 4
  %97 = load %struct.bch_geometry*, %struct.bch_geometry** %11, align 8
  %98 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 %99, 1
  %101 = icmp eq i32 %96, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %90
  %103 = load i64, i64* %17, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 %103, %105
  %107 = urem i64 %106, 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %102
  %110 = load i64, i64* %17, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = add i64 %110, %112
  %114 = urem i64 %113, 8
  %115 = sub i64 8, %114
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = add i64 %117, %115
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %109, %102, %90
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load i32*, i32** %14, align 8
  %125 = load i64, i64* %16, align 8
  %126 = load i32*, i32** %15, align 8
  %127 = load i64, i64* %17, align 8
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @gpmi_copy_bits(i32* %124, i64 %125, i32* %126, i64 %127, i32 %128)
  br label %130

130:                                              ; preds = %123, %120
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* %16, align 8
  %134 = add i64 %133, %132
  store i64 %134, i64* %16, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* %17, align 8
  %138 = add i64 %137, %136
  store i64 %138, i64* %17, align 8
  br label %139

139:                                              ; preds = %130
  %140 = load i32, i32* %19, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %19, align 4
  br label %69

142:                                              ; preds = %69
  %143 = load i64, i64* %17, align 8
  %144 = udiv i64 %143, 8
  store i64 %144, i64* %18, align 8
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %170

147:                                              ; preds = %142
  %148 = load i64, i64* %18, align 8
  %149 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %150 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ult i64 %148, %151
  br i1 %152, label %153, label %170

153:                                              ; preds = %147
  %154 = load i32*, i32** %14, align 8
  %155 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %156 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load i64, i64* %18, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32*, i32** %15, align 8
  %162 = load i64, i64* %18, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %165 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %18, align 8
  %168 = sub i64 %166, %167
  %169 = call i32 @memcpy(i32* %160, i32* %163, i64 %168)
  br label %170

170:                                              ; preds = %153, %147, %142
  %171 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %10, align 8
  %172 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %170
  %176 = load i32*, i32** %14, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %14, align 8
  %180 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %181 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @swap(i32 %178, i32 %184)
  br label %186

186:                                              ; preds = %175, %170
  %187 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %188 = load i32, i32* %8, align 4
  %189 = load i32*, i32** %14, align 8
  %190 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %191 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %194 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = add i64 %192, %195
  %197 = call i32 @nand_prog_page_op(%struct.nand_chip* %187, i32 %188, i32 0, i32* %189, i64 %196)
  ret i32 %197
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.gpmi_nand_data* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @gpmi_copy_bits(i32*, i64, i32*, i64, i32) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @nand_prog_page_op(%struct.nand_chip*, i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
