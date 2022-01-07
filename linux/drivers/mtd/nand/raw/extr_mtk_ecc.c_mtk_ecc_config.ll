; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_ecc.c_mtk_ecc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_ecc.c_mtk_ecc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_ecc = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32*, i64, i32 }
%struct.mtk_ecc_config = type { i32, i64, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"invalid ecc strength %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ECC_ENCODE = common dso_local global i64 0, align 8
@ECC_MS_SHIFT = common dso_local global i64 0, align 8
@ECC_ENCCNFG = common dso_local global i64 0, align 8
@ECC_NFI_MODE = common dso_local global i64 0, align 8
@ECC_ENCDIADDR = common dso_local global i64 0, align 8
@DEC_CNFG_CORRECT = common dso_local global i64 0, align 8
@DEC_EMPTY_EN = common dso_local global i64 0, align 8
@ECC_DECCNFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_ecc*, %struct.mtk_ecc_config*)* @mtk_ecc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_ecc_config(%struct.mtk_ecc* %0, %struct.mtk_ecc_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_ecc*, align 8
  %5 = alloca %struct.mtk_ecc_config*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mtk_ecc* %0, %struct.mtk_ecc** %4, align 8
  store %struct.mtk_ecc_config* %1, %struct.mtk_ecc_config** %5, align 8
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %34, %2
  %12 = load i64, i64* %10, align 8
  %13 = load %struct.mtk_ecc*, %struct.mtk_ecc** %4, align 8
  %14 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %12, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %11
  %20 = load %struct.mtk_ecc*, %struct.mtk_ecc** %4, align 8
  %21 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mtk_ecc_config*, %struct.mtk_ecc_config** %5, align 8
  %29 = getelementptr inbounds %struct.mtk_ecc_config, %struct.mtk_ecc_config* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %37

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %10, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %10, align 8
  br label %11

37:                                               ; preds = %32, %11
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.mtk_ecc*, %struct.mtk_ecc** %4, align 8
  %40 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %38, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %37
  %46 = load %struct.mtk_ecc*, %struct.mtk_ecc** %4, align 8
  %47 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.mtk_ecc_config*, %struct.mtk_ecc_config** %5, align 8
  %50 = getelementptr inbounds %struct.mtk_ecc_config, %struct.mtk_ecc_config* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %166

55:                                               ; preds = %37
  %56 = load i64, i64* %10, align 8
  store i64 %56, i64* %6, align 8
  %57 = load %struct.mtk_ecc_config*, %struct.mtk_ecc_config** %5, align 8
  %58 = getelementptr inbounds %struct.mtk_ecc_config, %struct.mtk_ecc_config* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ECC_ENCODE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %108

62:                                               ; preds = %55
  %63 = load %struct.mtk_ecc_config*, %struct.mtk_ecc_config** %5, align 8
  %64 = getelementptr inbounds %struct.mtk_ecc_config, %struct.mtk_ecc_config* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 %65, 3
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.mtk_ecc_config*, %struct.mtk_ecc_config** %5, align 8
  %70 = getelementptr inbounds %struct.mtk_ecc_config, %struct.mtk_ecc_config* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.mtk_ecc*, %struct.mtk_ecc** %4, align 8
  %73 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = shl i64 %71, %76
  %78 = or i64 %68, %77
  store i64 %78, i64* %9, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @ECC_MS_SHIFT, align 8
  %81 = shl i64 %79, %80
  %82 = load i64, i64* %9, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %9, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load %struct.mtk_ecc*, %struct.mtk_ecc** %4, align 8
  %86 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ECC_ENCCNFG, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @writel(i64 %84, i64 %89)
  %91 = load %struct.mtk_ecc_config*, %struct.mtk_ecc_config** %5, align 8
  %92 = getelementptr inbounds %struct.mtk_ecc_config, %struct.mtk_ecc_config* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ECC_NFI_MODE, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %62
  %97 = load %struct.mtk_ecc_config*, %struct.mtk_ecc_config** %5, align 8
  %98 = getelementptr inbounds %struct.mtk_ecc_config, %struct.mtk_ecc_config* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @lower_32_bits(i32 %99)
  %101 = load %struct.mtk_ecc*, %struct.mtk_ecc** %4, align 8
  %102 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @ECC_ENCDIADDR, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel(i64 %100, i64 %105)
  br label %107

107:                                              ; preds = %96, %62
  br label %165

108:                                              ; preds = %55
  %109 = load %struct.mtk_ecc_config*, %struct.mtk_ecc_config** %5, align 8
  %110 = getelementptr inbounds %struct.mtk_ecc_config, %struct.mtk_ecc_config* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = shl i32 %111, 3
  %113 = load %struct.mtk_ecc_config*, %struct.mtk_ecc_config** %5, align 8
  %114 = getelementptr inbounds %struct.mtk_ecc_config, %struct.mtk_ecc_config* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.mtk_ecc*, %struct.mtk_ecc** %4, align 8
  %117 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %116, i32 0, i32 2
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = mul nsw i32 %115, %120
  %122 = add nsw i32 %112, %121
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %7, align 8
  %124 = load i64, i64* %6, align 8
  %125 = load %struct.mtk_ecc_config*, %struct.mtk_ecc_config** %5, align 8
  %126 = getelementptr inbounds %struct.mtk_ecc_config, %struct.mtk_ecc_config* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.mtk_ecc*, %struct.mtk_ecc** %4, align 8
  %129 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %128, i32 0, i32 2
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = shl i64 %127, %132
  %134 = or i64 %124, %133
  store i64 %134, i64* %9, align 8
  %135 = load i64, i64* %7, align 8
  %136 = load i64, i64* @ECC_MS_SHIFT, align 8
  %137 = shl i64 %135, %136
  %138 = load i64, i64* @DEC_CNFG_CORRECT, align 8
  %139 = or i64 %137, %138
  %140 = load i64, i64* %9, align 8
  %141 = or i64 %140, %139
  store i64 %141, i64* %9, align 8
  %142 = load i64, i64* @DEC_EMPTY_EN, align 8
  %143 = load i64, i64* %9, align 8
  %144 = or i64 %143, %142
  store i64 %144, i64* %9, align 8
  %145 = load i64, i64* %9, align 8
  %146 = load %struct.mtk_ecc*, %struct.mtk_ecc** %4, align 8
  %147 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @ECC_DECCNFG, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @writel(i64 %145, i64 %150)
  %152 = load %struct.mtk_ecc_config*, %struct.mtk_ecc_config** %5, align 8
  %153 = getelementptr inbounds %struct.mtk_ecc_config, %struct.mtk_ecc_config* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %108
  %157 = load %struct.mtk_ecc_config*, %struct.mtk_ecc_config** %5, align 8
  %158 = getelementptr inbounds %struct.mtk_ecc_config, %struct.mtk_ecc_config* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = sub nsw i32 %159, 1
  %161 = shl i32 1, %160
  %162 = load %struct.mtk_ecc*, %struct.mtk_ecc** %4, align 8
  %163 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %156, %108
  br label %165

165:                                              ; preds = %164, %107
  store i32 0, i32* %3, align 4
  br label %166

166:                                              ; preds = %165, %45
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
