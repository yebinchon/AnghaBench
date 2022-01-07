; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_nand_update_bbt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_nand_update_bbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, i32, i32, %struct.nand_bbt_descr*, %struct.nand_bbt_descr* }
%struct.nand_bbt_descr = type { i32, i32* }
%struct.mtd_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NAND_BBT_PERCHIP = common dso_local global i32 0, align 4
@NAND_BBT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32)* @nand_update_bbt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_update_bbt(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.nand_bbt_descr*, align 8
  %13 = alloca %struct.nand_bbt_descr*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %15 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %14)
  store %struct.mtd_info* %15, %struct.mtd_info** %6, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 5
  %18 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %17, align 8
  store %struct.nand_bbt_descr* %18, %struct.nand_bbt_descr** %12, align 8
  %19 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %20 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %19, i32 0, i32 4
  %21 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %20, align 8
  store %struct.nand_bbt_descr* %21, %struct.nand_bbt_descr** %13, align 8
  %22 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %12, align 8
  %28 = icmp ne %struct.nand_bbt_descr* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26, %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %131

32:                                               ; preds = %26
  %33 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %34 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 1, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %39 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %37, %40
  %42 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %43 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i32* @kmalloc(i32 %48, i32 %49)
  store i32* %50, i32** %11, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %32
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %131

56:                                               ; preds = %32
  %57 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %12, align 8
  %58 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @NAND_BBT_PERCHIP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %66 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = ashr i32 %64, %67
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %10, align 4
  br label %71

70:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  br label %71

71:                                               ; preds = %70, %63
  %72 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %12, align 8
  %73 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %13, align 8
  %81 = icmp ne %struct.nand_bbt_descr* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %71
  %83 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %13, align 8
  %84 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %82, %71
  %92 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %12, align 8
  %93 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @NAND_BBT_WRITE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %91
  %99 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %12, align 8
  %102 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %13, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @write_bbt(%struct.nand_chip* %99, i32* %100, %struct.nand_bbt_descr* %101, %struct.nand_bbt_descr* %102, i32 %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %127

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %91
  %110 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %13, align 8
  %111 = icmp ne %struct.nand_bbt_descr* %110, null
  br i1 %111, label %112, label %126

112:                                              ; preds = %109
  %113 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %13, align 8
  %114 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @NAND_BBT_WRITE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %112
  %120 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %121 = load i32*, i32** %11, align 8
  %122 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %13, align 8
  %123 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %12, align 8
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @write_bbt(%struct.nand_chip* %120, i32* %121, %struct.nand_bbt_descr* %122, %struct.nand_bbt_descr* %123, i32 %124)
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %119, %112, %109
  br label %127

127:                                              ; preds = %126, %107
  %128 = load i32*, i32** %11, align 8
  %129 = call i32 @kfree(i32* %128)
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %127, %53, %29
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @write_bbt(%struct.nand_chip*, i32*, %struct.nand_bbt_descr*, %struct.nand_bbt_descr*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
