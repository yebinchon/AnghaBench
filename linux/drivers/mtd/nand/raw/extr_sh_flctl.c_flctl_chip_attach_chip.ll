; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_flctl_chip_attach_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_flctl_chip_attach_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mtd_info = type { i32 }
%struct.sh_flctl = type { i32, i32, i64, i8*, i8* }

@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@SEL_16BIT = common dso_local global i32 0, align 4
@ADRCNT_4 = common dso_local global i8* null, align 8
@ADRCNT_3 = common dso_local global i8* null, align 8
@ADRCNT_2 = common dso_local global i8* null, align 8
@ADRCNT_1 = common dso_local global i8* null, align 8
@ADRCNT2_E = common dso_local global i8* null, align 8
@flctl_4secc_oob_smallpage_ops = common dso_local global i32 0, align 4
@flctl_4secc_smallpage = common dso_local global i32 0, align 4
@flctl_4secc_oob_largepage_ops = common dso_local global i32 0, align 4
@flctl_4secc_largepage = common dso_local global i32 0, align 4
@flctl_read_page_hwecc = common dso_local global i32 0, align 4
@flctl_write_page_hwecc = common dso_local global i32 0, align 4
@NAND_ECC_HW = common dso_local global i32 0, align 4
@_4ECCEN = common dso_local global i32 0, align 4
@NAND_ECC_SOFT = common dso_local global i32 0, align 4
@NAND_ECC_HAMMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @flctl_chip_attach_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flctl_chip_attach_chip(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.sh_flctl*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %6 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %7 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %6, i32 0, i32 3
  %8 = call i32 @nanddev_target_size(i32* %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %10 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %9)
  store %struct.mtd_info* %10, %struct.mtd_info** %4, align 8
  %11 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %12 = call %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info* %11)
  store %struct.sh_flctl* %12, %struct.sh_flctl** %5, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %14 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load i32, i32* @SEL_16BIT, align 4
  %21 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %22 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %19, %1
  %26 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %27 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 512
  br i1 %29, label %30, label %61

30:                                               ; preds = %25
  %31 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %32 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load i32, i32* %3, align 4
  %34 = icmp sgt i32 %33, 33554432
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i8*, i8** @ADRCNT_4, align 8
  %37 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %38 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** @ADRCNT_3, align 8
  %40 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %41 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  br label %60

42:                                               ; preds = %30
  %43 = load i32, i32* %3, align 4
  %44 = icmp sgt i32 %43, 131072
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i8*, i8** @ADRCNT_3, align 8
  %47 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %48 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @ADRCNT_2, align 8
  %50 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %51 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  br label %59

52:                                               ; preds = %42
  %53 = load i8*, i8** @ADRCNT_2, align 8
  %54 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %55 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @ADRCNT_1, align 8
  %57 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %58 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %52, %45
  br label %60

60:                                               ; preds = %59, %35
  br label %92

61:                                               ; preds = %25
  %62 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %63 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load i32, i32* %3, align 4
  %65 = icmp sgt i32 %64, 134217728
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i8*, i8** @ADRCNT2_E, align 8
  %68 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %69 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %68, i32 0, i32 4
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** @ADRCNT_3, align 8
  %71 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %72 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  br label %91

73:                                               ; preds = %61
  %74 = load i32, i32* %3, align 4
  %75 = icmp sgt i32 %74, 524288
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i8*, i8** @ADRCNT_4, align 8
  %78 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %79 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %78, i32 0, i32 4
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** @ADRCNT_2, align 8
  %81 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %82 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  br label %90

83:                                               ; preds = %73
  %84 = load i8*, i8** @ADRCNT_3, align 8
  %85 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %86 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %85, i32 0, i32 4
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** @ADRCNT_1, align 8
  %88 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %89 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  br label %90

90:                                               ; preds = %83, %76
  br label %91

91:                                               ; preds = %90, %66
  br label %92

92:                                               ; preds = %91, %60
  %93 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %94 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %92
  %98 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %99 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 512
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %104 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %103, i32* @flctl_4secc_oob_smallpage_ops)
  %105 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %106 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %105, i32 0, i32 2
  store i32* @flctl_4secc_smallpage, i32** %106, align 8
  br label %112

107:                                              ; preds = %97
  %108 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %109 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %108, i32* @flctl_4secc_oob_largepage_ops)
  %110 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %111 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %110, i32 0, i32 2
  store i32* @flctl_4secc_largepage, i32** %111, align 8
  br label %112

112:                                              ; preds = %107, %102
  %113 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %114 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  store i32 512, i32* %115, align 4
  %116 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %117 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  store i32 10, i32* %118, align 4
  %119 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %120 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  store i32 4, i32* %121, align 4
  %122 = load i32, i32* @flctl_read_page_hwecc, align 4
  %123 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %124 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 6
  store i32 %122, i32* %125, align 4
  %126 = load i32, i32* @flctl_write_page_hwecc, align 4
  %127 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %128 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 5
  store i32 %126, i32* %129, align 4
  %130 = load i32, i32* @NAND_ECC_HW, align 4
  %131 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %132 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 4
  store i32 %130, i32* %133, align 4
  %134 = load i32, i32* @_4ECCEN, align 4
  %135 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %136 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  br label %148

139:                                              ; preds = %92
  %140 = load i32, i32* @NAND_ECC_SOFT, align 4
  %141 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %142 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 4
  store i32 %140, i32* %143, align 4
  %144 = load i32, i32* @NAND_ECC_HAMMING, align 4
  %145 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %146 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 3
  store i32 %144, i32* %147, align 4
  br label %148

148:                                              ; preds = %139, %112
  ret i32 0
}

declare dso_local i32 @nanddev_target_size(i32*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info*) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
