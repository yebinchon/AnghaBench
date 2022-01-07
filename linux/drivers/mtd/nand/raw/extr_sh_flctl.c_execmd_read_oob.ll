; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_execmd_read_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_execmd_read_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.sh_flctl = type { i64 }

@NAND_CMD_READ0 = common dso_local global i32 0, align 4
@NAND_CMD_READSTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32)* @execmd_read_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execmd_read_oob(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sh_flctl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %9 = call %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info* %8)
  store %struct.sh_flctl* %9, %struct.sh_flctl** %5, align 8
  %10 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %11 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 4, i32 1
  store i32 %15, i32* %6, align 4
  %16 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %17 = load i32, i32* @NAND_CMD_READ0, align 4
  %18 = load i32, i32* @NAND_CMD_READSTART, align 4
  %19 = shl i32 %18, 8
  %20 = load i32, i32* @NAND_CMD_READ0, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @set_cmd_regs(%struct.mtd_info* %16, i32 %17, i32 %21)
  %23 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %24 = call i32 @empty_fifo(%struct.sh_flctl* %23)
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %47, %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 528, %31
  %33 = add nsw i32 %32, 512
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @set_addr(%struct.mtd_info* %30, i32 %33, i32 %34)
  %36 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %37 = call i32 @FLDTCNTR(%struct.sh_flctl* %36)
  %38 = call i32 @writel(i32 16, i32 %37)
  %39 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %40 = call i32 @start_translation(%struct.sh_flctl* %39)
  %41 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = mul nsw i32 16, %42
  %44 = call i32 @read_fiforeg(%struct.sh_flctl* %41, i32 16, i32 %43)
  %45 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %46 = call i32 @wait_completion(%struct.sh_flctl* %45)
  br label %47

47:                                               ; preds = %29
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %25

50:                                               ; preds = %25
  ret void
}

declare dso_local %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info*) #1

declare dso_local i32 @set_cmd_regs(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @empty_fifo(%struct.sh_flctl*) #1

declare dso_local i32 @set_addr(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @FLDTCNTR(%struct.sh_flctl*) #1

declare dso_local i32 @start_translation(%struct.sh_flctl*) #1

declare dso_local i32 @read_fiforeg(%struct.sh_flctl*, i32, i32) #1

declare dso_local i32 @wait_completion(%struct.sh_flctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
