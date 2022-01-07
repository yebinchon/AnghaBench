; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_verify_bbt_descr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_verify_bbt_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, i32 }
%struct.nand_bbt_descr = type { i32, i32, i32, i64 }
%struct.mtd_info = type { i32 }

@NAND_BBT_NRBITS_MSK = common dso_local global i32 0, align 4
@NAND_BBT_NO_OOB = common dso_local global i32 0, align 4
@NAND_BBT_USE_FLASH = common dso_local global i32 0, align 4
@NAND_BBT_VERSION = common dso_local global i32 0, align 4
@NAND_BBT_SAVECONTENT = common dso_local global i32 0, align 4
@NAND_BBT_PERCHIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, %struct.nand_bbt_descr*)* @verify_bbt_descr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_bbt_descr(%struct.nand_chip* %0, %struct.nand_bbt_descr* %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.nand_bbt_descr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store %struct.nand_bbt_descr* %1, %struct.nand_bbt_descr** %4, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 2
  %12 = call i32 @nanddev_target_size(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %14 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %13)
  store %struct.mtd_info* %14, %struct.mtd_info** %6, align 8
  %15 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %16 = icmp ne %struct.nand_bbt_descr* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %159

18:                                               ; preds = %2
  %19 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %20 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %23 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NAND_BBT_NRBITS_MSK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %28 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @NAND_BBT_NO_OOB, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %18
  %34 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %35 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %33, %18
  %42 = phi i1 [ false, %18 ], [ %40, %33 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %51 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NAND_BBT_VERSION, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %41
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %56, %41
  %60 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %61 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NAND_BBT_NO_OOB, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %113

66:                                               ; preds = %59
  %67 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %68 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @BUG_ON(i32 %74)
  %76 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %77 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @NAND_BBT_NO_OOB, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @BUG_ON(i32 %83)
  %85 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %86 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @BUG_ON(i32 %87)
  %89 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %90 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @NAND_BBT_VERSION, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %66
  %96 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %97 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %100 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = icmp ne i64 %98, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @BUG_ON(i32 %104)
  br label %106

106:                                              ; preds = %95, %66
  %107 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %108 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @NAND_BBT_SAVECONTENT, align 4
  %111 = and i32 %109, %110
  %112 = call i32 @BUG_ON(i32 %111)
  br label %113

113:                                              ; preds = %106, %59
  %114 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %115 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @NAND_BBT_PERCHIP, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %123 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = ashr i32 %121, %124
  store i32 %125, i32* %9, align 4
  br label %134

126:                                              ; preds = %113
  %127 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %128 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %131 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = ashr i32 %129, %132
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %126, %120
  %135 = load i32, i32* %9, align 4
  %136 = ashr i32 %135, 3
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = mul nsw i32 %138, %137
  store i32 %139, i32* %9, align 4
  %140 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %141 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @NAND_BBT_NO_OOB, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %134
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %9, align 4
  br label %150

150:                                              ; preds = %146, %134
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %153 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 1, %154
  %156 = icmp sgt i32 %151, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 @BUG_ON(i32 %157)
  br label %159

159:                                              ; preds = %150, %17
  ret void
}

declare dso_local i32 @nanddev_target_size(i32*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
