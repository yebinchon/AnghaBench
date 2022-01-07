; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_micron.c_micron_nand_on_die_ecc_status_4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_micron.c_micron_nand_on_die_ecc_status_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.micron_nand = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.mtd_info = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@NAND_ECC_STATUS_WRITE_RECOMMENDED = common dso_local global i32 0, align 4
@NAND_STATUS_FAIL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, i8*, i32, i32)* @micron_nand_on_die_ecc_status_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @micron_nand_on_die_ecc_status_4(%struct.nand_chip* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.micron_nand*, align 8
  %13 = alloca %struct.mtd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %23 = call %struct.micron_nand* @nand_get_manufacturer_data(%struct.nand_chip* %22)
  store %struct.micron_nand* %23, %struct.micron_nand** %12, align 8
  %24 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %25 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %24)
  store %struct.mtd_info* %25, %struct.mtd_info** %13, align 8
  store i32 0, i32* %15, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @NAND_ECC_STATUS_WRITE_RECOMMENDED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %5
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @NAND_STATUS_FAIL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %37 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %35, %30
  store i32 0, i32* %6, align 4
  br label %212

42:                                               ; preds = %5
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %42
  %46 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %47 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %48 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %51 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @nand_read_data_op(%struct.nand_chip* %46, i32* %49, i32 %52, i32 0)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* %16, align 4
  store i32 %57, i32* %6, align 4
  br label %212

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %42
  %60 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %61 = call i32 @micron_nand_on_die_ecc_setup(%struct.nand_chip* %60, i32 0)
  %62 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.micron_nand*, %struct.micron_nand** %12, align 8
  %65 = getelementptr inbounds %struct.micron_nand, %struct.micron_nand* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %69 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %72 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %70, %73
  %75 = call i32 @nand_read_page_op(%struct.nand_chip* %62, i32 %63, i32 0, i32* %67, i32 %74)
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %59
  %79 = load i32, i32* %16, align 4
  store i32 %79, i32* %6, align 4
  br label %212

80:                                               ; preds = %59
  store i32 0, i32* %14, align 4
  br label %81

81:                                               ; preds = %207, %80
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %84 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ult i32 %82, %86
  br i1 %87, label %88, label %210

88:                                               ; preds = %81
  store i32 0, i32* %19, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %91 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = mul i32 %89, %93
  store i32 %94, i32* %17, align 4
  %95 = load %struct.micron_nand*, %struct.micron_nand** %12, align 8
  %96 = getelementptr inbounds %struct.micron_nand, %struct.micron_nand* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %17, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32* %101, i32** %20, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = load i32, i32* %17, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr i8, i8* %102, i64 %104
  %106 = bitcast i8* %105 to i32*
  store i32* %106, i32** %21, align 8
  store i32 0, i32* %18, align 4
  br label %107

107:                                              ; preds = %131, %88
  %108 = load i32, i32* %18, align 4
  %109 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %110 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ult i32 %108, %112
  br i1 %113, label %114, label %134

114:                                              ; preds = %107
  %115 = load i32*, i32** %21, align 8
  %116 = load i32, i32* %18, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %20, align 8
  %121 = load i32, i32* %18, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = xor i32 %119, %124
  %126 = call i64 @hweight8(i32 %125)
  %127 = load i32, i32* %19, align 4
  %128 = zext i32 %127 to i64
  %129 = add nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %19, align 4
  br label %131

131:                                              ; preds = %114
  %132 = load i32, i32* %18, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %18, align 4
  br label %107

134:                                              ; preds = %107
  %135 = load i32, i32* %14, align 4
  %136 = mul i32 %135, 16
  %137 = add i32 %136, 4
  store i32 %137, i32* %17, align 4
  %138 = load %struct.micron_nand*, %struct.micron_nand** %12, align 8
  %139 = getelementptr inbounds %struct.micron_nand, %struct.micron_nand* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %143 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %141, i64 %145
  %147 = load i32, i32* %17, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32* %149, i32** %20, align 8
  %150 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %151 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %17, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32* %155, i32** %21, align 8
  store i32 0, i32* %18, align 4
  br label %156

156:                                              ; preds = %181, %134
  %157 = load i32, i32* %18, align 4
  %158 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %159 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, 4
  %163 = icmp ult i32 %157, %162
  br i1 %163, label %164, label %184

164:                                              ; preds = %156
  %165 = load i32*, i32** %21, align 8
  %166 = load i32, i32* %18, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %20, align 8
  %171 = load i32, i32* %18, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = xor i32 %169, %174
  %176 = call i64 @hweight8(i32 %175)
  %177 = load i32, i32* %19, align 4
  %178 = zext i32 %177 to i64
  %179 = add nsw i64 %178, %176
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %19, align 4
  br label %181

181:                                              ; preds = %164
  %182 = load i32, i32* %18, align 4
  %183 = add i32 %182, 1
  store i32 %183, i32* %18, align 4
  br label %156

184:                                              ; preds = %156
  %185 = load i32, i32* %19, align 4
  %186 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %187 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = icmp ugt i32 %185, %189
  %191 = zext i1 %190 to i32
  %192 = call i64 @WARN_ON(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %184
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %6, align 4
  br label %212

197:                                              ; preds = %184
  %198 = load i32, i32* %19, align 4
  %199 = load i32, i32* %15, align 4
  %200 = call i32 @max(i32 %198, i32 %199)
  store i32 %200, i32* %15, align 4
  %201 = load i32, i32* %19, align 4
  %202 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %203 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = add i32 %205, %201
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %197
  %208 = load i32, i32* %14, align 4
  %209 = add i32 %208, 1
  store i32 %209, i32* %14, align 4
  br label %81

210:                                              ; preds = %81
  %211 = load i32, i32* %15, align 4
  store i32 %211, i32* %6, align 4
  br label %212

212:                                              ; preds = %210, %194, %78, %56, %41
  %213 = load i32, i32* %6, align 4
  ret i32 %213
}

declare dso_local %struct.micron_nand* @nand_get_manufacturer_data(%struct.nand_chip*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_read_data_op(%struct.nand_chip*, i32*, i32, i32) #1

declare dso_local i32 @micron_nand_on_die_ecc_setup(%struct.nand_chip*, i32) #1

declare dso_local i32 @nand_read_page_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i64 @hweight8(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
