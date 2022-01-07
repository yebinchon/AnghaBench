; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32, i32, i32, i32, i32, %struct.onenand_chip* }
%struct.onenand_chip = type { i32 (%struct.mtd_info.0*)*, i32 (i64)*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.mtd_info.0 = type opaque

@ONENAND_REG_DEVICE_ID = common dso_local global i64 0, align 8
@ONENAND_REG_VERSION_ID = common dso_local global i64 0, align 8
@ONENAND_REG_TECHNOLOGY = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ONENAND_REG_DATA_BUFFER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*)* @onenand_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onenand_probe(%struct.mtd_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.onenand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %10 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %9, i32 0, i32 6
  %11 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  store %struct.onenand_chip* %11, %struct.onenand_chip** %4, align 8
  %12 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %13 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %12, i32 0, i32 0
  %14 = load i32 (%struct.mtd_info.0*)*, i32 (%struct.mtd_info.0*)** %13, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %16 = bitcast %struct.mtd_info* %15 to %struct.mtd_info.0*
  %17 = call i32 %14(%struct.mtd_info.0* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %2, align 4
  br label %218

22:                                               ; preds = %1
  %23 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %24 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %23, i32 0, i32 1
  %25 = load i32 (i64)*, i32 (i64)** %24, align 8
  %26 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %27 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %26, i32 0, i32 12
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ONENAND_REG_DEVICE_ID, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 %25(i64 %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %33 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %32, i32 0, i32 1
  %34 = load i32 (i64)*, i32 (i64)** %33, align 8
  %35 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %36 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %35, i32 0, i32 12
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ONENAND_REG_VERSION_ID, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 %34(i64 %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %42 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %41, i32 0, i32 1
  %43 = load i32 (i64)*, i32 (i64)** %42, align 8
  %44 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %45 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %44, i32 0, i32 12
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ONENAND_REG_TECHNOLOGY, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 %43(i64 %48)
  %50 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %51 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @onenand_print_device_info(i32 %52, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %57 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %60 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %62 = call i32 @onenand_check_features(%struct.mtd_info* %61)
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @onenand_get_density(i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %66 = call i64 @FLEXONENAND(%struct.onenand_chip* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %98

68:                                               ; preds = %22
  %69 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %70 = call i64 @ONENAND_IS_DDP(%struct.onenand_chip* %69)
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 2, i32 1
  %74 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %75 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 4
  %76 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %77 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 1
  %80 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %81 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %83 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 1
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i32 @kcalloc(i32 %85, i32 4, i32 %86)
  %88 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %89 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %91 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %68
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %218

97:                                               ; preds = %68
  br label %98

98:                                               ; preds = %97, %22
  %99 = load i32, i32* %7, align 4
  %100 = shl i32 16, %99
  %101 = shl i32 %100, 20
  %102 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %103 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 8
  %104 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %105 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %104, i32 0, i32 1
  %106 = load i32 (i64)*, i32 (i64)** %105, align 8
  %107 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %108 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %107, i32 0, i32 12
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @ONENAND_REG_DATA_BUFFER_SIZE, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 %106(i64 %111)
  %113 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %114 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %116 = call i64 @ONENAND_IS_4KB_PAGE(%struct.onenand_chip* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %98
  %119 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %120 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, 1
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %118, %98
  %124 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %125 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = ashr i32 %126, 5
  %128 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %129 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %131 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 6
  %134 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %135 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %137 = call i64 @FLEXONENAND(%struct.onenand_chip* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %123
  %140 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %141 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 %142, 1
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %139, %123
  %145 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %146 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @ffs(i32 %147)
  %149 = getelementptr i8, i8* %148, i64 -1
  %150 = ptrtoint i8* %149 to i32
  %151 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %152 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %151, i32 0, i32 7
  store i32 %150, i32* %152, align 4
  %153 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %154 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @ffs(i32 %155)
  %157 = getelementptr i8, i8* %156, i64 -1
  %158 = ptrtoint i8* %157 to i32
  %159 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %160 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %159, i32 0, i32 8
  store i32 %158, i32* %160, align 8
  %161 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %162 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %165 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %164, i32 0, i32 8
  %166 = load i32, i32* %165, align 8
  %167 = sub nsw i32 %163, %166
  %168 = shl i32 1, %167
  %169 = sub nsw i32 %168, 1
  %170 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %171 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %170, i32 0, i32 9
  store i32 %169, i32* %171, align 4
  %172 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %173 = call i64 @ONENAND_IS_DDP(%struct.onenand_chip* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %144
  %176 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %177 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %180 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %179, i32 0, i32 7
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  %183 = ashr i32 %178, %182
  %184 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %185 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %184, i32 0, i32 10
  store i32 %183, i32* %185, align 8
  br label %186

186:                                              ; preds = %175, %144
  %187 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %188 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %191 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %190, i32 0, i32 11
  store i32 %189, i32* %191, align 4
  %192 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %193 = call i64 @FLEXONENAND(%struct.onenand_chip* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %186
  %196 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %197 = call i32 @flexonenand_get_size(%struct.mtd_info* %196)
  br label %204

198:                                              ; preds = %186
  %199 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %200 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %203 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %202, i32 0, i32 4
  store i32 %201, i32* %203, align 8
  br label %204

204:                                              ; preds = %198, %195
  %205 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %206 = call i64 @ONENAND_IS_2PLANE(%struct.onenand_chip* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %204
  %209 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %210 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = shl i32 %211, 1
  store i32 %212, i32* %210, align 4
  %213 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %214 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = shl i32 %215, 1
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %208, %204
  store i32 0, i32* %2, align 4
  br label %218

218:                                              ; preds = %217, %94, %20
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

declare dso_local i32 @onenand_print_device_info(i32, i32) #1

declare dso_local i32 @onenand_check_features(%struct.mtd_info*) #1

declare dso_local i32 @onenand_get_density(i32) #1

declare dso_local i64 @FLEXONENAND(%struct.onenand_chip*) #1

declare dso_local i64 @ONENAND_IS_DDP(%struct.onenand_chip*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i64 @ONENAND_IS_4KB_PAGE(%struct.onenand_chip*) #1

declare dso_local i8* @ffs(i32) #1

declare dso_local i32 @flexonenand_get_size(%struct.mtd_info*) #1

declare dso_local i64 @ONENAND_IS_2PLANE(%struct.onenand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
