; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_execmd_read_page_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_execmd_read_page_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sh_flctl = type { %struct.TYPE_3__*, i32*, i64 }
%struct.TYPE_3__ = type { i32 }

@NAND_CMD_READ0 = common dso_local global i32 0, align 4
@NAND_CMD_READSTART = common dso_local global i32 0, align 4
@ACM_SACCES_MODE = common dso_local global i32 0, align 4
@_4ECCCORRECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"applied ecc on page 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"page 0x%x contains corrupted data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32)* @execmd_read_page_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execmd_read_page_sector(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sh_flctl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %10 = call %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info* %9)
  store %struct.sh_flctl* %10, %struct.sh_flctl** %5, align 8
  %11 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %12 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 4, i32 1
  store i32 %16, i32* %7, align 4
  %17 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %18 = load i32, i32* @NAND_CMD_READ0, align 4
  %19 = load i32, i32* @NAND_CMD_READSTART, align 4
  %20 = shl i32 %19, 8
  %21 = load i32, i32* @NAND_CMD_READ0, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @set_cmd_regs(%struct.mtd_info* %17, i32 %18, i32 %22)
  %24 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %25 = call i32 @FLCMNCR(%struct.sh_flctl* %24)
  %26 = call i32 @readl(i32 %25)
  %27 = load i32, i32* @ACM_SACCES_MODE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @_4ECCCORRECT, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %32 = call i32 @FLCMNCR(%struct.sh_flctl* %31)
  %33 = call i32 @writel(i32 %30, i32 %32)
  %34 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %35 = call i32 @FLCMDCR(%struct.sh_flctl* %34)
  %36 = call i32 @readl(i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %40 = call i32 @FLCMDCR(%struct.sh_flctl* %39)
  %41 = call i32 @writel(i32 %38, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = shl i32 %42, 2
  %44 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %45 = call i32 @FLADR(%struct.sh_flctl* %44)
  %46 = call i32 @writel(i32 %43, i32 %45)
  %47 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %48 = call i32 @empty_fifo(%struct.sh_flctl* %47)
  %49 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %50 = call i32 @start_translation(%struct.sh_flctl* %49)
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %101, %2
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %104

55:                                               ; preds = %51
  %56 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = mul nsw i32 512, %57
  %59 = call i32 @read_fiforeg(%struct.sh_flctl* %56, i32 512, i32 %58)
  %60 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %61 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %62 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %65 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = mul nsw i32 16, %67
  %69 = add nsw i32 %66, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %63, i64 %70
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @read_ecfiforeg(%struct.sh_flctl* %60, i32* %71, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  switch i32 %74, label %99 [
    i32 128, label %75
    i32 129, label %87
  ]

75:                                               ; preds = %55
  %76 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %77 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @dev_info(i32* %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %83 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %100

87:                                               ; preds = %55
  %88 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %89 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @dev_warn(i32* %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %95 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %100

99:                                               ; preds = %55
  br label %100

100:                                              ; preds = %99, %87, %75
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %51

104:                                              ; preds = %51
  %105 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %106 = call i32 @wait_completion(%struct.sh_flctl* %105)
  %107 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %108 = call i32 @FLCMNCR(%struct.sh_flctl* %107)
  %109 = call i32 @readl(i32 %108)
  %110 = load i32, i32* @ACM_SACCES_MODE, align 4
  %111 = load i32, i32* @_4ECCCORRECT, align 4
  %112 = or i32 %110, %111
  %113 = xor i32 %112, -1
  %114 = and i32 %109, %113
  %115 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %116 = call i32 @FLCMNCR(%struct.sh_flctl* %115)
  %117 = call i32 @writel(i32 %114, i32 %116)
  ret void
}

declare dso_local %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info*) #1

declare dso_local i32 @set_cmd_regs(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @FLCMNCR(%struct.sh_flctl*) #1

declare dso_local i32 @FLCMDCR(%struct.sh_flctl*) #1

declare dso_local i32 @FLADR(%struct.sh_flctl*) #1

declare dso_local i32 @empty_fifo(%struct.sh_flctl*) #1

declare dso_local i32 @start_translation(%struct.sh_flctl*) #1

declare dso_local i32 @read_fiforeg(%struct.sh_flctl*, i32, i32) #1

declare dso_local i32 @read_ecfiforeg(%struct.sh_flctl*, i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @wait_completion(%struct.sh_flctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
