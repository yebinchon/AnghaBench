; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_micron.c_micron_supports_on_die_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_micron.c_micron_supports_on_die_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32 }

@MICRON_ON_DIE_UNSUPPORTED = common dso_local global i32 0, align 4
@MICRON_ID_INTERNAL_ECC_MASK = common dso_local global i32 0, align 4
@MICRON_ID_ECC_ENABLED = common dso_local global i32 0, align 4
@MICRON_ON_DIE_MANDATORY = common dso_local global i32 0, align 4
@MICRON_ON_DIE_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @micron_supports_on_die_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @micron_supports_on_die_ecc(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca [5 x i32], align 16
  %5 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %6 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %7 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @MICRON_ON_DIE_UNSUPPORTED, align 4
  store i32 %12, i32* %2, align 4
  br label %118

13:                                               ; preds = %1
  %14 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %15 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %14, i32 0, i32 0
  %16 = call i32 @nanddev_bits_per_cell(%struct.TYPE_8__* %15)
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @MICRON_ON_DIE_UNSUPPORTED, align 4
  store i32 %19, i32* %2, align 4
  br label %118

20:                                               ; preds = %13
  %21 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 4
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 8
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @MICRON_ON_DIE_UNSUPPORTED, align 4
  store i32 %35, i32* %2, align 4
  br label %118

36:                                               ; preds = %27, %20
  %37 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %38 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 5
  br i1 %41, label %52, label %42

42:                                               ; preds = %36
  %43 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %44 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MICRON_ID_INTERNAL_ECC_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 2
  br i1 %51, label %52, label %54

52:                                               ; preds = %42, %36
  %53 = load i32, i32* @MICRON_ON_DIE_UNSUPPORTED, align 4
  store i32 %53, i32* %2, align 4
  br label %118

54:                                               ; preds = %42
  %55 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %56 = call i32 @micron_nand_on_die_ecc_setup(%struct.nand_chip* %55, i32 1)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @MICRON_ON_DIE_UNSUPPORTED, align 4
  store i32 %60, i32* %2, align 4
  br label %118

61:                                               ; preds = %54
  %62 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %63 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %64 = call i32 @nand_readid_op(%struct.nand_chip* %62, i32 0, i32* %63, i32 20)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @MICRON_ON_DIE_UNSUPPORTED, align 4
  store i32 %68, i32* %2, align 4
  br label %118

69:                                               ; preds = %61
  %70 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %71 = call i32 @micron_nand_on_die_ecc_setup(%struct.nand_chip* %70, i32 0)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @MICRON_ON_DIE_UNSUPPORTED, align 4
  store i32 %75, i32* %2, align 4
  br label %118

76:                                               ; preds = %69
  %77 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 4
  %78 = load i32, i32* %77, align 16
  %79 = load i32, i32* @MICRON_ID_ECC_ENABLED, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* @MICRON_ON_DIE_UNSUPPORTED, align 4
  store i32 %83, i32* %2, align 4
  br label %118

84:                                               ; preds = %76
  %85 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %86 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %87 = call i32 @nand_readid_op(%struct.nand_chip* %85, i32 0, i32* %86, i32 20)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* @MICRON_ON_DIE_UNSUPPORTED, align 4
  store i32 %91, i32* %2, align 4
  br label %118

92:                                               ; preds = %84
  %93 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 4
  %94 = load i32, i32* %93, align 16
  %95 = load i32, i32* @MICRON_ID_ECC_ENABLED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* @MICRON_ON_DIE_MANDATORY, align 4
  store i32 %99, i32* %2, align 4
  br label %118

100:                                              ; preds = %92
  %101 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %102 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 4
  br i1 %106, label %107, label %116

107:                                              ; preds = %100
  %108 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %109 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 8
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* @MICRON_ON_DIE_UNSUPPORTED, align 4
  store i32 %115, i32* %2, align 4
  br label %118

116:                                              ; preds = %107, %100
  %117 = load i32, i32* @MICRON_ON_DIE_SUPPORTED, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %116, %114, %98, %90, %82, %74, %67, %59, %52, %34, %18, %11
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @nanddev_bits_per_cell(%struct.TYPE_8__*) #1

declare dso_local i32 @micron_nand_on_die_ecc_setup(%struct.nand_chip*, i32) #1

declare dso_local i32 @nand_readid_op(%struct.nand_chip*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
