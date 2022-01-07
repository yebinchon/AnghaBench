; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_ecc_read_subpage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_ecc_read_subpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.gpmi_nand_data = type { i32, i32, i32, i32, i64, %struct.bch_geometry }
%struct.bch_geometry = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"page:%d, first:%d, last:%d, marker at:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"page:%d(%d:%d)%d, chunk:(%d:%d), BCH PG size:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, i32, i32*, i32)* @gpmi_ecc_read_subpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmi_ecc_read_subpage(%struct.nand_chip* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gpmi_nand_data*, align 8
  %13 = alloca %struct.bch_geometry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %26 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %27 = call %struct.gpmi_nand_data* @nand_get_controller_data(%struct.nand_chip* %26)
  store %struct.gpmi_nand_data* %27, %struct.gpmi_nand_data** %12, align 8
  %28 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %12, align 8
  %29 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %28, i32 0, i32 5
  store %struct.bch_geometry* %29, %struct.bch_geometry** %13, align 8
  %30 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %31 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %14, align 4
  store i32 0, i32* %24, align 4
  %34 = load %struct.bch_geometry*, %struct.bch_geometry** %13, align 8
  %35 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bch_geometry*, %struct.bch_geometry** %13, align 8
  %38 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %36, %39
  %41 = sdiv i32 %40, 8
  store i32 %41, i32* %23, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %14, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %20, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %45, %46
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* %14, align 4
  %50 = sdiv i32 %48, %49
  store i32 %50, i32* %21, align 4
  %51 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %12, align 8
  %52 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %5
  %56 = load %struct.bch_geometry*, %struct.bch_geometry** %13, align 8
  %57 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %14, align 4
  %60 = sdiv i32 %58, %59
  store i32 %60, i32* %22, align 4
  %61 = load i32, i32* %21, align 4
  %62 = load i32, i32* %22, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %55
  %65 = load i32, i32* %20, align 4
  %66 = load i32, i32* %22, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %12, align 8
  %70 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* %22, align 4
  %76 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @dev_dbg(i32 %71, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @gpmi_ecc_read_page(%struct.nand_chip* %77, i32* %78, i32 0, i32 %79)
  store i32 %80, i32* %6, align 4
  br label %201

81:                                               ; preds = %64, %55
  br label %82

82:                                               ; preds = %81, %5
  %83 = load %struct.bch_geometry*, %struct.bch_geometry** %13, align 8
  %84 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %20, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %82
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %23, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32, i32* %20, align 4
  %94 = mul nsw i32 %92, %93
  %95 = add nsw i32 %89, %94
  store i32 %95, i32* %24, align 4
  store i32 0, i32* %15, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %20, align 4
  %98 = load i32, i32* %14, align 4
  %99 = mul nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  store i32* %101, i32** %10, align 8
  br label %102

102:                                              ; preds = %88, %82
  %103 = load %struct.bch_geometry*, %struct.bch_geometry** %13, align 8
  %104 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.bch_geometry*, %struct.bch_geometry** %13, align 8
  %107 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %105, %108
  %110 = sdiv i32 %109, 8
  store i32 %110, i32* %23, align 4
  %111 = load i32, i32* %21, align 4
  %112 = load i32, i32* %20, align 4
  %113 = sub nsw i32 %111, %112
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %23, align 4
  %118 = add nsw i32 %116, %117
  %119 = load i32, i32* %16, align 4
  %120 = mul nsw i32 %118, %119
  %121 = add nsw i32 %115, %120
  store i32 %121, i32* %17, align 4
  %122 = load %struct.bch_geometry*, %struct.bch_geometry** %13, align 8
  %123 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = ashr i32 %124, 1
  store i32 %125, i32* %19, align 4
  %126 = load i32, i32* %16, align 4
  %127 = sub nsw i32 %126, 1
  %128 = call i32 @BF_BCH_FLASH0LAYOUT0_NBLOCKS(i32 %127)
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @BF_BCH_FLASH0LAYOUT0_META_SIZE(i32 %129)
  %131 = or i32 %128, %130
  %132 = load i32, i32* %19, align 4
  %133 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %12, align 8
  %134 = call i32 @BF_BCH_FLASH0LAYOUT0_ECC0(i32 %132, %struct.gpmi_nand_data* %133)
  %135 = or i32 %131, %134
  %136 = load %struct.bch_geometry*, %struct.bch_geometry** %13, align 8
  %137 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %12, align 8
  %140 = call i32 @BF_BCH_FLASH0LAYOUT0_GF(i32 %138, %struct.gpmi_nand_data* %139)
  %141 = or i32 %135, %140
  %142 = load %struct.bch_geometry*, %struct.bch_geometry** %13, align 8
  %143 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %12, align 8
  %146 = call i32 @BF_BCH_FLASH0LAYOUT0_DATA0_SIZE(i32 %144, %struct.gpmi_nand_data* %145)
  %147 = or i32 %141, %146
  %148 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %12, align 8
  %149 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* %17, align 4
  %151 = call i32 @BF_BCH_FLASH0LAYOUT1_PAGE_SIZE(i32 %150)
  %152 = load i32, i32* %19, align 4
  %153 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %12, align 8
  %154 = call i32 @BF_BCH_FLASH0LAYOUT1_ECCN(i32 %152, %struct.gpmi_nand_data* %153)
  %155 = or i32 %151, %154
  %156 = load %struct.bch_geometry*, %struct.bch_geometry** %13, align 8
  %157 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %12, align 8
  %160 = call i32 @BF_BCH_FLASH0LAYOUT1_GF(i32 %158, %struct.gpmi_nand_data* %159)
  %161 = or i32 %155, %160
  %162 = load %struct.bch_geometry*, %struct.bch_geometry** %13, align 8
  %163 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %12, align 8
  %166 = call i32 @BF_BCH_FLASH0LAYOUT1_DATAN_SIZE(i32 %164, %struct.gpmi_nand_data* %165)
  %167 = or i32 %161, %166
  %168 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %12, align 8
  %169 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %12, align 8
  %171 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %170, i32 0, i32 2
  store i32 1, i32* %171, align 8
  %172 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* %24, align 4
  %175 = load i32*, i32** %10, align 8
  %176 = load i32, i32* %17, align 4
  %177 = call i32 @nand_read_page_op(%struct.nand_chip* %172, i32 %173, i32 %174, i32* %175, i32 %176)
  store i32 %177, i32* %25, align 4
  %178 = load i32, i32* %25, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %102
  %181 = load i32, i32* %25, align 4
  store i32 %181, i32* %6, align 4
  br label %201

182:                                              ; preds = %102
  %183 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %12, align 8
  %184 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* %24, align 4
  %190 = load i32, i32* %20, align 4
  %191 = load i32, i32* %16, align 4
  %192 = load i32, i32* %17, align 4
  %193 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @dev_dbg(i32 %185, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %186, i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192)
  %194 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %195 = load i32*, i32** %10, align 8
  %196 = load i32, i32* %20, align 4
  %197 = load i32, i32* %21, align 4
  %198 = load i32, i32* %15, align 4
  %199 = call i32 @gpmi_count_bitflips(%struct.nand_chip* %194, i32* %195, i32 %196, i32 %197, i32 %198)
  store i32 %199, i32* %18, align 4
  %200 = load i32, i32* %18, align 4
  store i32 %200, i32* %6, align 4
  br label %201

201:                                              ; preds = %182, %180, %68
  %202 = load i32, i32* %6, align 4
  ret i32 %202
}

declare dso_local %struct.gpmi_nand_data* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @gpmi_ecc_read_page(%struct.nand_chip*, i32*, i32, i32) #1

declare dso_local i32 @BF_BCH_FLASH0LAYOUT0_NBLOCKS(i32) #1

declare dso_local i32 @BF_BCH_FLASH0LAYOUT0_META_SIZE(i32) #1

declare dso_local i32 @BF_BCH_FLASH0LAYOUT0_ECC0(i32, %struct.gpmi_nand_data*) #1

declare dso_local i32 @BF_BCH_FLASH0LAYOUT0_GF(i32, %struct.gpmi_nand_data*) #1

declare dso_local i32 @BF_BCH_FLASH0LAYOUT0_DATA0_SIZE(i32, %struct.gpmi_nand_data*) #1

declare dso_local i32 @BF_BCH_FLASH0LAYOUT1_PAGE_SIZE(i32) #1

declare dso_local i32 @BF_BCH_FLASH0LAYOUT1_ECCN(i32, %struct.gpmi_nand_data*) #1

declare dso_local i32 @BF_BCH_FLASH0LAYOUT1_GF(i32, %struct.gpmi_nand_data*) #1

declare dso_local i32 @BF_BCH_FLASH0LAYOUT1_DATAN_SIZE(i32, %struct.gpmi_nand_data*) #1

declare dso_local i32 @nand_read_page_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @gpmi_count_bitflips(%struct.nand_chip*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
