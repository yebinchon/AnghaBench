; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_samsung.c_samsung_nand_decode_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_samsung.c_samsung_nand_decode_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mtd_info = type { i32, i32, i32 }
%struct.nand_memory_organization = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Invalid OOB size value\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Could not decode ECC info\00", align 1
@NAND_NO_SUBPAGE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*)* @samsung_nand_decode_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @samsung_nand_decode_id(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.nand_memory_organization*, align 8
  %5 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %6 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %7 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %6)
  store %struct.mtd_info* %7, %struct.mtd_info** %3, align 8
  %8 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %9 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %8, i32 0, i32 2
  %10 = call %struct.nand_memory_organization* @nanddev_get_memorg(%struct.TYPE_6__* %9)
  store %struct.nand_memory_organization* %10, %struct.nand_memory_organization** %4, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %12 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 6
  br i1 %15, label %16, label %153

16:                                               ; preds = %1
  %17 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %18 = call i64 @nand_is_slc(%struct.nand_chip* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %153, label %20

20:                                               ; preds = %16
  %21 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 5
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %153

28:                                               ; preds = %20
  %29 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %30 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 3
  %37 = shl i32 2048, %36
  %38 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %4, align 8
  %39 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %4, align 8
  %41 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %44 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = ashr i32 %45, 2
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = ashr i32 %47, 2
  %49 = and i32 %48, 4
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 3
  %52 = or i32 %49, %51
  switch i32 %52, label %71 [
    i32 1, label %53
    i32 2, label %56
    i32 3, label %59
    i32 4, label %62
    i32 5, label %65
    i32 6, label %68
  ]

53:                                               ; preds = %28
  %54 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %4, align 8
  %55 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %54, i32 0, i32 1
  store i32 128, i32* %55, align 4
  br label %73

56:                                               ; preds = %28
  %57 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %4, align 8
  %58 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %57, i32 0, i32 1
  store i32 218, i32* %58, align 4
  br label %73

59:                                               ; preds = %28
  %60 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %4, align 8
  %61 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %60, i32 0, i32 1
  store i32 400, i32* %61, align 4
  br label %73

62:                                               ; preds = %28
  %63 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %4, align 8
  %64 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %63, i32 0, i32 1
  store i32 436, i32* %64, align 4
  br label %73

65:                                               ; preds = %28
  %66 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %4, align 8
  %67 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %66, i32 0, i32 1
  store i32 512, i32* %67, align 4
  br label %73

68:                                               ; preds = %28
  %69 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %4, align 8
  %70 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %69, i32 0, i32 1
  store i32 640, i32* %70, align 4
  br label %73

71:                                               ; preds = %28
  %72 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %68, %65, %62, %59, %56, %53
  %74 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %4, align 8
  %75 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %78 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %5, align 4
  %80 = ashr i32 %79, 2
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = ashr i32 %81, 1
  %83 = and i32 %82, 4
  %84 = load i32, i32* %5, align 4
  %85 = and i32 %84, 3
  %86 = or i32 %83, %85
  %87 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %4, align 8
  %88 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sdiv i32 %86, %89
  %91 = shl i32 131072, %90
  %92 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %4, align 8
  %93 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %5, align 4
  %95 = ashr i32 %94, 1
  %96 = and i32 %95, 4
  %97 = load i32, i32* %5, align 4
  %98 = and i32 %97, 3
  %99 = or i32 %96, %98
  %100 = shl i32 131072, %99
  %101 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %102 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %104 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 4
  %110 = and i32 %109, 7
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp slt i32 %111, 5
  br i1 %112, label %113, label %124

113:                                              ; preds = %73
  %114 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %115 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i32 512, i32* %117, align 8
  %118 = load i32, i32* %5, align 4
  %119 = shl i32 1, %118
  %120 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %121 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  store i32 %119, i32* %123, align 4
  br label %152

124:                                              ; preds = %73
  %125 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %126 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store i32 1024, i32* %128, align 8
  %129 = load i32, i32* %5, align 4
  switch i32 %129, label %145 [
    i32 5, label %130
    i32 6, label %135
    i32 7, label %140
  ]

130:                                              ; preds = %124
  %131 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %132 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  store i32 24, i32* %134, align 4
  br label %151

135:                                              ; preds = %124
  %136 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %137 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  store i32 40, i32* %139, align 4
  br label %151

140:                                              ; preds = %124
  %141 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %142 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  store i32 60, i32* %144, align 4
  br label %151

145:                                              ; preds = %124
  %146 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %147 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %148 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  store i32 0, i32* %150, align 8
  br label %151

151:                                              ; preds = %145, %140, %135, %130
  br label %152

152:                                              ; preds = %151, %113
  br label %201

153:                                              ; preds = %20, %16, %1
  %154 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %155 = call i32 @nand_decode_ext_id(%struct.nand_chip* %154)
  %156 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %157 = call i64 @nand_is_slc(%struct.nand_chip* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %200

159:                                              ; preds = %153
  %160 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %161 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %164, align 4
  switch i32 %165, label %198 [
    i32 220, label %166
    i32 241, label %175
  ]

166:                                              ; preds = %159
  %167 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %168 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  store i32 512, i32* %170, align 8
  %171 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %172 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  store i32 1, i32* %174, align 4
  br label %199

175:                                              ; preds = %159
  %176 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %177 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp sgt i32 %179, 4
  br i1 %180, label %181, label %197

181:                                              ; preds = %175
  %182 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %183 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 4
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @GENMASK(i32 1, i32 0)
  %189 = and i32 %187, %188
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %191, label %197

191:                                              ; preds = %181
  %192 = load i32, i32* @NAND_NO_SUBPAGE_WRITE, align 4
  %193 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %194 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %191, %181, %175
  br label %199

198:                                              ; preds = %159
  br label %199

199:                                              ; preds = %198, %197, %166
  br label %200

200:                                              ; preds = %199, %153
  br label %201

201:                                              ; preds = %200, %152
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.nand_memory_organization* @nanddev_get_memorg(%struct.TYPE_6__*) #1

declare dso_local i64 @nand_is_slc(%struct.nand_chip*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @nand_decode_ext_id(%struct.nand_chip*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
