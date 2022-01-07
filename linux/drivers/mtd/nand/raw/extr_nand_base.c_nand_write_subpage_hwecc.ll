; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_write_subpage_hwecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_write_subpage_hwecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i32 (%struct.nand_chip.0*, i32*, i32*)*, i32 (%struct.nand_chip.1*, i32)* }
%struct.nand_chip.0 = type opaque
%struct.nand_chip.1 = type opaque
%struct.mtd_info = type { i32 }

@NAND_ECC_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, i32, i32*, i32, i32)* @nand_write_subpage_hwecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_write_subpage_hwecc(%struct.nand_chip* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mtd_info*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %25 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %26 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %25)
  store %struct.mtd_info* %26, %struct.mtd_info** %14, align 8
  %27 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %28 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %15, align 8
  %30 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %31 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %16, align 8
  %34 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %35 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %17, align 4
  %38 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %39 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %18, align 4
  %42 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %43 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %19, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %17, align 4
  %48 = sdiv i32 %46, %47
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %49, %50
  %52 = sub nsw i32 %51, 1
  %53 = load i32, i32* %17, align 4
  %54 = sdiv i32 %52, %53
  store i32 %54, i32* %21, align 4
  %55 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  %56 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %19, align 4
  %59 = sdiv i32 %57, %58
  store i32 %59, i32* %22, align 4
  %60 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @nand_prog_page_begin_op(%struct.nand_chip* %60, i32 %61, i32 0, i32* null, i32 0)
  store i32 %62, i32* %24, align 4
  %63 = load i32, i32* %24, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %6
  %66 = load i32, i32* %24, align 4
  store i32 %66, i32* %7, align 4
  br label %177

67:                                               ; preds = %6
  store i32 0, i32* %23, align 4
  br label %68

68:                                               ; preds = %139, %67
  %69 = load i32, i32* %23, align 4
  %70 = load i32, i32* %19, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %142

72:                                               ; preds = %68
  %73 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %74 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 6
  %76 = load i32 (%struct.nand_chip.1*, i32)*, i32 (%struct.nand_chip.1*, i32)** %75, align 8
  %77 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %78 = bitcast %struct.nand_chip* %77 to %struct.nand_chip.1*
  %79 = load i32, i32* @NAND_ECC_WRITE, align 4
  %80 = call i32 %76(%struct.nand_chip.1* %78, i32 %79)
  %81 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @nand_write_data_op(%struct.nand_chip* %81, i32* %82, i32 %83, i32 0)
  store i32 %84, i32* %24, align 4
  %85 = load i32, i32* %24, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %72
  %88 = load i32, i32* %24, align 4
  store i32 %88, i32* %7, align 4
  br label %177

89:                                               ; preds = %72
  %90 = load i32, i32* %23, align 4
  %91 = load i32, i32* %20, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %23, align 4
  %95 = load i32, i32* %21, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93, %89
  %98 = load i32*, i32** %16, align 8
  %99 = load i32, i32* %18, align 4
  %100 = call i32 @memset(i32* %98, i32 255, i32 %99)
  br label %111

101:                                              ; preds = %93
  %102 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %103 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 5
  %105 = load i32 (%struct.nand_chip.0*, i32*, i32*)*, i32 (%struct.nand_chip.0*, i32*, i32*)** %104, align 8
  %106 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %107 = bitcast %struct.nand_chip* %106 to %struct.nand_chip.0*
  %108 = load i32*, i32** %11, align 8
  %109 = load i32*, i32** %16, align 8
  %110 = call i32 %105(%struct.nand_chip.0* %107, i32* %108, i32* %109)
  br label %111

111:                                              ; preds = %101, %97
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load i32, i32* %23, align 4
  %116 = load i32, i32* %20, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %23, align 4
  %120 = load i32, i32* %21, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %118, %114, %111
  %123 = load i32*, i32** %15, align 8
  %124 = load i32, i32* %22, align 4
  %125 = call i32 @memset(i32* %123, i32 255, i32 %124)
  br label %126

126:                                              ; preds = %122, %118
  %127 = load i32, i32* %17, align 4
  %128 = load i32*, i32** %11, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %11, align 8
  %131 = load i32, i32* %18, align 4
  %132 = load i32*, i32** %16, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32* %134, i32** %16, align 8
  %135 = load i32, i32* %22, align 4
  %136 = load i32*, i32** %15, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32* %138, i32** %15, align 8
  br label %139

139:                                              ; preds = %126
  %140 = load i32, i32* %23, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %23, align 4
  br label %68

142:                                              ; preds = %68
  %143 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %144 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  store i32* %146, i32** %16, align 8
  %147 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  %148 = load i32*, i32** %16, align 8
  %149 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %150 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %153 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @mtd_ooblayout_set_eccbytes(%struct.mtd_info* %147, i32* %148, i32* %151, i32 0, i32 %155)
  store i32 %156, i32* %24, align 4
  %157 = load i32, i32* %24, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %142
  %160 = load i32, i32* %24, align 4
  store i32 %160, i32* %7, align 4
  br label %177

161:                                              ; preds = %142
  %162 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %163 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %164 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  %167 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @nand_write_data_op(%struct.nand_chip* %162, i32* %165, i32 %168, i32 0)
  store i32 %169, i32* %24, align 4
  %170 = load i32, i32* %24, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %161
  %173 = load i32, i32* %24, align 4
  store i32 %173, i32* %7, align 4
  br label %177

174:                                              ; preds = %161
  %175 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %176 = call i32 @nand_prog_page_end_op(%struct.nand_chip* %175)
  store i32 %176, i32* %7, align 4
  br label %177

177:                                              ; preds = %174, %172, %159, %87, %65
  %178 = load i32, i32* %7, align 4
  ret i32 %178
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_prog_page_begin_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @nand_write_data_op(%struct.nand_chip*, i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mtd_ooblayout_set_eccbytes(%struct.mtd_info*, i32*, i32*, i32, i32) #1

declare dso_local i32 @nand_prog_page_end_op(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
