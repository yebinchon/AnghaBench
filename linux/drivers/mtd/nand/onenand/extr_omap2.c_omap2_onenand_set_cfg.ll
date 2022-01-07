; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_omap2.c_omap2_onenand_set_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_omap2.c_omap2_onenand_set_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap2_onenand = type { i32 }

@ONENAND_SYS_CFG1_RDY = common dso_local global i16 0, align 2
@ONENAND_SYS_CFG1_INT = common dso_local global i16 0, align 2
@ONENAND_SYS_CFG1_BRL_SHIFT = common dso_local global i32 0, align 4
@ONENAND_SYS_CFG1_BL_4 = common dso_local global i16 0, align 2
@ONENAND_SYS_CFG1_BL_8 = common dso_local global i16 0, align 2
@ONENAND_SYS_CFG1_BL_16 = common dso_local global i16 0, align 2
@ONENAND_SYS_CFG1_BL_32 = common dso_local global i16 0, align 2
@EINVAL = common dso_local global i32 0, align 4
@ONENAND_SYS_CFG1_HF = common dso_local global i16 0, align 2
@ONENAND_SYS_CFG1_VHF = common dso_local global i16 0, align 2
@ONENAND_SYS_CFG1_SYNC_READ = common dso_local global i16 0, align 2
@ONENAND_SYS_CFG1_SYNC_WRITE = common dso_local global i16 0, align 2
@ONENAND_REG_SYS_CFG1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap2_onenand*, i32, i32, i32, i32)* @omap2_onenand_set_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_onenand_set_cfg(%struct.omap2_onenand* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.omap2_onenand*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  store %struct.omap2_onenand* %0, %struct.omap2_onenand** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i16, i16* @ONENAND_SYS_CFG1_RDY, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @ONENAND_SYS_CFG1_INT, align 2
  %16 = zext i16 %15 to i32
  %17 = or i32 %14, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %12, align 2
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @ONENAND_SYS_CFG1_BRL_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load i16, i16* %12, align 2
  %23 = zext i16 %22 to i32
  %24 = or i32 %23, %21
  %25 = trunc i32 %24 to i16
  store i16 %25, i16* %12, align 2
  %26 = load i32, i32* %11, align 4
  switch i32 %26, label %56 [
    i32 0, label %27
    i32 4, label %28
    i32 8, label %35
    i32 16, label %42
    i32 32, label %49
  ]

27:                                               ; preds = %5
  br label %59

28:                                               ; preds = %5
  %29 = load i16, i16* @ONENAND_SYS_CFG1_BL_4, align 2
  %30 = zext i16 %29 to i32
  %31 = load i16, i16* %12, align 2
  %32 = zext i16 %31 to i32
  %33 = or i32 %32, %30
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %12, align 2
  br label %59

35:                                               ; preds = %5
  %36 = load i16, i16* @ONENAND_SYS_CFG1_BL_8, align 2
  %37 = zext i16 %36 to i32
  %38 = load i16, i16* %12, align 2
  %39 = zext i16 %38 to i32
  %40 = or i32 %39, %37
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %12, align 2
  br label %59

42:                                               ; preds = %5
  %43 = load i16, i16* @ONENAND_SYS_CFG1_BL_16, align 2
  %44 = zext i16 %43 to i32
  %45 = load i16, i16* %12, align 2
  %46 = zext i16 %45 to i32
  %47 = or i32 %46, %44
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %12, align 2
  br label %59

49:                                               ; preds = %5
  %50 = load i16, i16* @ONENAND_SYS_CFG1_BL_32, align 2
  %51 = zext i16 %50 to i32
  %52 = load i16, i16* %12, align 2
  %53 = zext i16 %52 to i32
  %54 = or i32 %53, %51
  %55 = trunc i32 %54 to i16
  store i16 %55, i16* %12, align 2
  br label %59

56:                                               ; preds = %5
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %104

59:                                               ; preds = %49, %42, %35, %28, %27
  %60 = load i32, i32* %10, align 4
  %61 = icmp sgt i32 %60, 5
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i16, i16* @ONENAND_SYS_CFG1_HF, align 2
  %64 = zext i16 %63 to i32
  %65 = load i16, i16* %12, align 2
  %66 = zext i16 %65 to i32
  %67 = or i32 %66, %64
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %12, align 2
  br label %69

69:                                               ; preds = %62, %59
  %70 = load i32, i32* %10, align 4
  %71 = icmp sgt i32 %70, 7
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i16, i16* @ONENAND_SYS_CFG1_VHF, align 2
  %74 = zext i16 %73 to i32
  %75 = load i16, i16* %12, align 2
  %76 = zext i16 %75 to i32
  %77 = or i32 %76, %74
  %78 = trunc i32 %77 to i16
  store i16 %78, i16* %12, align 2
  br label %79

79:                                               ; preds = %72, %69
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i16, i16* @ONENAND_SYS_CFG1_SYNC_READ, align 2
  %84 = zext i16 %83 to i32
  %85 = load i16, i16* %12, align 2
  %86 = zext i16 %85 to i32
  %87 = or i32 %86, %84
  %88 = trunc i32 %87 to i16
  store i16 %88, i16* %12, align 2
  br label %89

89:                                               ; preds = %82, %79
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i16, i16* @ONENAND_SYS_CFG1_SYNC_WRITE, align 2
  %94 = zext i16 %93 to i32
  %95 = load i16, i16* %12, align 2
  %96 = zext i16 %95 to i32
  %97 = or i32 %96, %94
  %98 = trunc i32 %97 to i16
  store i16 %98, i16* %12, align 2
  br label %99

99:                                               ; preds = %92, %89
  %100 = load %struct.omap2_onenand*, %struct.omap2_onenand** %7, align 8
  %101 = load i16, i16* %12, align 2
  %102 = load i32, i32* @ONENAND_REG_SYS_CFG1, align 4
  %103 = call i32 @write_reg(%struct.omap2_onenand* %100, i16 zeroext %101, i32 %102)
  store i32 0, i32* %6, align 4
  br label %104

104:                                              ; preds = %99, %56
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @write_reg(%struct.omap2_onenand*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
