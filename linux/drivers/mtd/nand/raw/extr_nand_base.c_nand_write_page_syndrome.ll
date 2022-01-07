; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_write_page_syndrome.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_write_page_syndrome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 (%struct.nand_chip.0*, i32*, i32*)*, i32 (%struct.nand_chip.1*, i32)* }
%struct.nand_chip.0 = type opaque
%struct.nand_chip.1 = type opaque
%struct.mtd_info = type { i32 }

@NAND_ECC_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @nand_write_page_syndrome to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_write_page_syndrome(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %19 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %18)
  store %struct.mtd_info* %19, %struct.mtd_info** %10, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  %24 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %14, align 4
  %32 = load i32*, i32** %7, align 8
  store i32* %32, i32** %15, align 8
  %33 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %34 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %16, align 8
  %36 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @nand_prog_page_begin_op(%struct.nand_chip* %36, i32 %37, i32 0, i32* null, i32 0)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i32, i32* %17, align 4
  store i32 %42, i32* %5, align 4
  br label %179

43:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %139, %43
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %149

47:                                               ; preds = %44
  %48 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %49 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 6
  %51 = load i32 (%struct.nand_chip.1*, i32)*, i32 (%struct.nand_chip.1*, i32)** %50, align 8
  %52 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %53 = bitcast %struct.nand_chip* %52 to %struct.nand_chip.1*
  %54 = load i32, i32* @NAND_ECC_WRITE, align 4
  %55 = call i32 %51(%struct.nand_chip.1* %53, i32 %54)
  %56 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %57 = load i32*, i32** %15, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @nand_write_data_op(%struct.nand_chip* %56, i32* %57, i32 %58, i32 0)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %47
  %63 = load i32, i32* %17, align 4
  store i32 %63, i32* %5, align 4
  br label %179

64:                                               ; preds = %47
  %65 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %66 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %64
  %71 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %72 = load i32*, i32** %16, align 8
  %73 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %74 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @nand_write_data_op(%struct.nand_chip* %71, i32* %72, i32 %76, i32 0)
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i32, i32* %17, align 4
  store i32 %81, i32* %5, align 4
  br label %179

82:                                               ; preds = %70
  %83 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %84 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %16, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %16, align 8
  br label %90

90:                                               ; preds = %82, %64
  %91 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %92 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 5
  %94 = load i32 (%struct.nand_chip.0*, i32*, i32*)*, i32 (%struct.nand_chip.0*, i32*, i32*)** %93, align 8
  %95 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %96 = bitcast %struct.nand_chip* %95 to %struct.nand_chip.0*
  %97 = load i32*, i32** %15, align 8
  %98 = load i32*, i32** %16, align 8
  %99 = call i32 %94(%struct.nand_chip.0* %96, i32* %97, i32* %98)
  %100 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @nand_write_data_op(%struct.nand_chip* %100, i32* %101, i32 %102, i32 0)
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %90
  %107 = load i32, i32* %17, align 4
  store i32 %107, i32* %5, align 4
  br label %179

108:                                              ; preds = %90
  %109 = load i32, i32* %13, align 4
  %110 = load i32*, i32** %16, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32* %112, i32** %16, align 8
  %113 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %114 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %138

118:                                              ; preds = %108
  %119 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %120 = load i32*, i32** %16, align 8
  %121 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %122 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @nand_write_data_op(%struct.nand_chip* %119, i32* %120, i32 %124, i32 0)
  store i32 %125, i32* %17, align 4
  %126 = load i32, i32* %17, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %118
  %129 = load i32, i32* %17, align 4
  store i32 %129, i32* %5, align 4
  br label %179

130:                                              ; preds = %118
  %131 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %132 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load i32*, i32** %16, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  store i32* %137, i32** %16, align 8
  br label %138

138:                                              ; preds = %130, %108
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load i32*, i32** %15, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  store i32* %148, i32** %15, align 8
  br label %44

149:                                              ; preds = %44
  %150 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %151 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = load i32*, i32** %16, align 8
  %155 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %156 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = ptrtoint i32* %154 to i64
  %159 = ptrtoint i32* %157 to i64
  %160 = sub i64 %158, %159
  %161 = sdiv exact i64 %160, 4
  %162 = sub nsw i64 %153, %161
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %149
  %167 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %168 = load i32*, i32** %16, align 8
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @nand_write_data_op(%struct.nand_chip* %167, i32* %168, i32 %169, i32 0)
  store i32 %170, i32* %17, align 4
  %171 = load i32, i32* %17, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %166
  %174 = load i32, i32* %17, align 4
  store i32 %174, i32* %5, align 4
  br label %179

175:                                              ; preds = %166
  br label %176

176:                                              ; preds = %175, %149
  %177 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %178 = call i32 @nand_prog_page_end_op(%struct.nand_chip* %177)
  store i32 %178, i32* %5, align 4
  br label %179

179:                                              ; preds = %176, %173, %128, %106, %80, %62, %41
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_prog_page_begin_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @nand_write_data_op(%struct.nand_chip*, i32*, i32, i32) #1

declare dso_local i32 @nand_prog_page_end_op(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
