; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_read_page_raw_syndrome.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_read_page_raw_syndrome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.mtd_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @nand_read_page_raw_syndrome to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_read_page_raw_syndrome(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %18 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %17)
  store %struct.mtd_info* %18, %struct.mtd_info** %10, align 8
  %19 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %20 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %24 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %28 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %13, align 8
  %30 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @nand_read_page_op(%struct.nand_chip* %30, i32 %31, i32 0, i32* null, i32 0)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %5, align 4
  br label %155

37:                                               ; preds = %4
  %38 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %39 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %14, align 4
  br label %42

42:                                               ; preds = %124, %37
  %43 = load i32, i32* %14, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %127

45:                                               ; preds = %42
  %46 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @nand_read_data_op(%struct.nand_chip* %46, i32* %47, i32 %48, i32 0)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %16, align 4
  store i32 %53, i32* %5, align 4
  br label %155

54:                                               ; preds = %45
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %7, align 8
  %59 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %60 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %54
  %65 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %68 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @nand_read_data_op(%struct.nand_chip* %65, i32* %66, i32 %70, i32 0)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i32, i32* %16, align 4
  store i32 %75, i32* %5, align 4
  br label %155

76:                                               ; preds = %64
  %77 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %78 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %13, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %13, align 8
  br label %84

84:                                               ; preds = %76, %54
  %85 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @nand_read_data_op(%struct.nand_chip* %85, i32* %86, i32 %87, i32 0)
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %16, align 4
  store i32 %92, i32* %5, align 4
  br label %155

93:                                               ; preds = %84
  %94 = load i32, i32* %12, align 4
  %95 = load i32*, i32** %13, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %13, align 8
  %98 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %99 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %93
  %104 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %105 = load i32*, i32** %13, align 8
  %106 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %107 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @nand_read_data_op(%struct.nand_chip* %104, i32* %105, i32 %109, i32 0)
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %103
  %114 = load i32, i32* %16, align 4
  store i32 %114, i32* %5, align 4
  br label %155

115:                                              ; preds = %103
  %116 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %117 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load i32*, i32** %13, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %13, align 8
  br label %123

123:                                              ; preds = %115, %93
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %14, align 4
  br label %42

127:                                              ; preds = %42
  %128 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %129 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = load i32*, i32** %13, align 8
  %133 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %134 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = ptrtoint i32* %132 to i64
  %137 = ptrtoint i32* %135 to i64
  %138 = sub i64 %136, %137
  %139 = sdiv exact i64 %138, 4
  %140 = sub nsw i64 %131, %139
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* %15, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %127
  %145 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %146 = load i32*, i32** %13, align 8
  %147 = load i32, i32* %15, align 4
  %148 = call i32 @nand_read_data_op(%struct.nand_chip* %145, i32* %146, i32 %147, i32 0)
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %16, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = load i32, i32* %16, align 4
  store i32 %152, i32* %5, align 4
  br label %155

153:                                              ; preds = %144
  br label %154

154:                                              ; preds = %153, %127
  store i32 0, i32* %5, align 4
  br label %155

155:                                              ; preds = %154, %151, %113, %91, %74, %52, %35
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_read_page_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @nand_read_data_op(%struct.nand_chip*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
