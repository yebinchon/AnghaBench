; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_set_cmd_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_set_cmd_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.sh_flctl = type { i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@SEL_16BIT = common dso_local global i32 0, align 4
@SNAND_E = common dso_local global i32 0, align 4
@DOCMD1_E = common dso_local global i32 0, align 4
@DOADR_E = common dso_local global i32 0, align 4
@DOCMD2_E = common dso_local global i32 0, align 4
@CDSRC_E = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@SELRW = common dso_local global i32 0, align 4
@ADRCNT_1 = common dso_local global i32 0, align 4
@DOSR_E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32)* @set_cmd_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cmd_regs(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sh_flctl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %12 = call %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info* %11)
  store %struct.sh_flctl* %12, %struct.sh_flctl** %7, align 8
  %13 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %14 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SEL_16BIT, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %19 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %20 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @SNAND_E, align 4
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  br label %32

27:                                               ; preds = %3
  %28 = load i32, i32* @SNAND_E, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i32, i32* @DOCMD1_E, align 4
  %34 = load i32, i32* @DOADR_E, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %5, align 4
  switch i32 %36, label %111 [
    i32 136, label %37
    i32 134, label %44
    i32 132, label %44
    i32 130, label %44
    i32 129, label %63
    i32 135, label %68
    i32 133, label %91
    i32 128, label %100
    i32 131, label %100
  ]

37:                                               ; preds = %32
  %38 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %39 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @DOCMD2_E, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %112

44:                                               ; preds = %32, %32, %32
  %45 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %46 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* @CDSRC_E, align 4
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %52 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %44
  %59 = load i32, i32* @SEL_16BIT, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %58, %44
  br label %112

63:                                               ; preds = %32
  %64 = load i32, i32* @DOADR_E, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %9, align 4
  br label %112

68:                                               ; preds = %32
  %69 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %70 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* @DOCMD2_E, align 4
  %73 = load i32, i32* @CDSRC_E, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @SELRW, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  %79 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %80 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %68
  %87 = load i32, i32* @SEL_16BIT, align 4
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %86, %68
  br label %112

91:                                               ; preds = %32
  %92 = load i32, i32* @SNAND_E, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %8, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* @CDSRC_E, align 4
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* @ADRCNT_1, align 4
  store i32 %99, i32* %10, align 4
  br label %112

100:                                              ; preds = %32, %32
  %101 = load i32, i32* @SNAND_E, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %8, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* @DOADR_E, align 4
  %106 = load i32, i32* @DOSR_E, align 4
  %107 = or i32 %105, %106
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %9, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %9, align 4
  br label %112

111:                                              ; preds = %32
  br label %112

112:                                              ; preds = %111, %100, %91, %90, %63, %62, %37
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %9, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %118 = call i32 @FLCMNCR(%struct.sh_flctl* %117)
  %119 = call i32 @writel(i32 %116, i32 %118)
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %122 = call i32 @FLCMDCR(%struct.sh_flctl* %121)
  %123 = call i32 @writel(i32 %120, i32 %122)
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %126 = call i32 @FLCMCDR(%struct.sh_flctl* %125)
  %127 = call i32 @writel(i32 %124, i32 %126)
  ret void
}

declare dso_local %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @FLCMNCR(%struct.sh_flctl*) #1

declare dso_local i32 @FLCMDCR(%struct.sh_flctl*) #1

declare dso_local i32 @FLCMCDR(%struct.sh_flctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
