; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap_elm.c_elm_load_syndrome.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap_elm.c_elm_load_syndrome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elm_info = type { i32, i32, i32 }
%struct.elm_errorvec = type { i64 }

@ELM_SYNDROME_FRAGMENT_0 = common dso_local global i32 0, align 4
@SYNDROME_FRAGMENT_REG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid config bch_type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elm_info*, %struct.elm_errorvec*, i32*)* @elm_load_syndrome to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elm_load_syndrome(%struct.elm_info* %0, %struct.elm_errorvec* %1, i32* %2) #0 {
  %4 = alloca %struct.elm_info*, align 8
  %5 = alloca %struct.elm_errorvec*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.elm_info* %0, %struct.elm_info** %4, align 8
  store %struct.elm_errorvec* %1, %struct.elm_errorvec** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %181, %3
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.elm_info*, %struct.elm_info** %4, align 8
  %13 = getelementptr inbounds %struct.elm_info, %struct.elm_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %184

16:                                               ; preds = %10
  %17 = load %struct.elm_errorvec*, %struct.elm_errorvec** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.elm_errorvec, %struct.elm_errorvec* %17, i64 %19
  %21 = getelementptr inbounds %struct.elm_errorvec, %struct.elm_errorvec* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %174

24:                                               ; preds = %16
  %25 = load %struct.elm_info*, %struct.elm_info** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @elm_configure_page_mode(%struct.elm_info* %25, i32 %26, i32 1)
  %28 = load i32, i32* @ELM_SYNDROME_FRAGMENT_0, align 4
  %29 = load i32, i32* @SYNDROME_FRAGMENT_REG_SIZE, align 4
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %29, %30
  %32 = add nsw i32 %28, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.elm_info*, %struct.elm_info** %4, align 8
  %34 = getelementptr inbounds %struct.elm_info, %struct.elm_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %171 [
    i32 128, label %36
    i32 129, label %74
    i32 130, label %101
  ]

36:                                               ; preds = %24
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 9
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cpu_to_be32(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.elm_info*, %struct.elm_info** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @elm_write_reg(%struct.elm_info* %41, i32 %42, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 4
  store i32 %46, i32* %8, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cpu_to_be32(i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load %struct.elm_info*, %struct.elm_info** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @elm_write_reg(%struct.elm_info* %51, i32 %52, i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 4
  store i32 %56, i32* %8, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @cpu_to_be32(i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.elm_info*, %struct.elm_info** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @elm_write_reg(%struct.elm_info* %61, i32 %62, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 4
  store i32 %66, i32* %8, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %9, align 4
  %70 = load %struct.elm_info*, %struct.elm_info** %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @elm_write_reg(%struct.elm_info* %70, i32 %71, i32 %72)
  br label %173

74:                                               ; preds = %24
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @cpu_to_be32(i32 %77)
  %79 = ashr i32 %78, 4
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 15
  %84 = shl i32 %83, 28
  %85 = or i32 %79, %84
  store i32 %85, i32* %9, align 4
  %86 = load %struct.elm_info*, %struct.elm_info** %4, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @elm_write_reg(%struct.elm_info* %86, i32 %87, i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 4
  store i32 %91, i32* %8, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @cpu_to_be32(i32 %94)
  %96 = ashr i32 %95, 12
  store i32 %96, i32* %9, align 4
  %97 = load %struct.elm_info*, %struct.elm_info** %4, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @elm_write_reg(%struct.elm_info* %97, i32 %98, i32 %99)
  br label %173

101:                                              ; preds = %24
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 22
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @cpu_to_be32(i32 %104)
  store i32 %105, i32* %9, align 4
  %106 = load %struct.elm_info*, %struct.elm_info** %4, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @elm_write_reg(%struct.elm_info* %106, i32 %107, i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 4
  store i32 %111, i32* %8, align 4
  %112 = load i32*, i32** %6, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 18
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @cpu_to_be32(i32 %114)
  store i32 %115, i32* %9, align 4
  %116 = load %struct.elm_info*, %struct.elm_info** %4, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @elm_write_reg(%struct.elm_info* %116, i32 %117, i32 %118)
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 4
  store i32 %121, i32* %8, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 14
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @cpu_to_be32(i32 %124)
  store i32 %125, i32* %9, align 4
  %126 = load %struct.elm_info*, %struct.elm_info** %4, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @elm_write_reg(%struct.elm_info* %126, i32 %127, i32 %128)
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 4
  store i32 %131, i32* %8, align 4
  %132 = load i32*, i32** %6, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 10
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @cpu_to_be32(i32 %134)
  store i32 %135, i32* %9, align 4
  %136 = load %struct.elm_info*, %struct.elm_info** %4, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @elm_write_reg(%struct.elm_info* %136, i32 %137, i32 %138)
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 4
  store i32 %141, i32* %8, align 4
  %142 = load i32*, i32** %6, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 6
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @cpu_to_be32(i32 %144)
  store i32 %145, i32* %9, align 4
  %146 = load %struct.elm_info*, %struct.elm_info** %4, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @elm_write_reg(%struct.elm_info* %146, i32 %147, i32 %148)
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 4
  store i32 %151, i32* %8, align 4
  %152 = load i32*, i32** %6, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @cpu_to_be32(i32 %154)
  store i32 %155, i32* %9, align 4
  %156 = load %struct.elm_info*, %struct.elm_info** %4, align 8
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @elm_write_reg(%struct.elm_info* %156, i32 %157, i32 %158)
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 4
  store i32 %161, i32* %8, align 4
  %162 = load i32*, i32** %6, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @cpu_to_be32(i32 %164)
  %166 = ashr i32 %165, 16
  store i32 %166, i32* %9, align 4
  %167 = load %struct.elm_info*, %struct.elm_info** %4, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @elm_write_reg(%struct.elm_info* %167, i32 %168, i32 %169)
  br label %173

171:                                              ; preds = %24
  %172 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %173

173:                                              ; preds = %171, %101, %74, %36
  br label %174

174:                                              ; preds = %173, %16
  %175 = load %struct.elm_info*, %struct.elm_info** %4, align 8
  %176 = getelementptr inbounds %struct.elm_info, %struct.elm_info* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %6, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  store i32* %180, i32** %6, align 8
  br label %181

181:                                              ; preds = %174
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %7, align 4
  br label %10

184:                                              ; preds = %10
  ret void
}

declare dso_local i32 @elm_configure_page_mode(%struct.elm_info*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @elm_write_reg(%struct.elm_info*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
