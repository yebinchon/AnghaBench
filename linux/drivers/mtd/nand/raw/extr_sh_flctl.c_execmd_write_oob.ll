; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_execmd_write_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_execmd_write_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.sh_flctl = type { i32, i64 }

@NAND_CMD_PAGEPROG = common dso_local global i32 0, align 4
@NAND_CMD_SEQIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*)* @execmd_write_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execmd_write_oob(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.sh_flctl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %7 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %8 = call %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info* %7)
  store %struct.sh_flctl* %8, %struct.sh_flctl** %3, align 8
  %9 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %10 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %13 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 4, i32 1
  store i32 %17, i32* %6, align 4
  %18 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %19 = load i32, i32* @NAND_CMD_PAGEPROG, align 4
  %20 = load i32, i32* @NAND_CMD_PAGEPROG, align 4
  %21 = shl i32 %20, 8
  %22 = load i32, i32* @NAND_CMD_SEQIN, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @set_cmd_regs(%struct.mtd_info* %18, i32 %19, i32 %23)
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %49, %1
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %25
  %30 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %31 = call i32 @empty_fifo(%struct.sh_flctl* %30)
  %32 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %33, 528
  %35 = add nsw i32 %34, 512
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @set_addr(%struct.mtd_info* %32, i32 %35, i32 %36)
  %38 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %39 = call i32 @FLDTCNTR(%struct.sh_flctl* %38)
  %40 = call i32 @writel(i32 16, i32 %39)
  %41 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %42 = call i32 @start_translation(%struct.sh_flctl* %41)
  %43 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = mul nsw i32 16, %44
  %46 = call i32 @write_fiforeg(%struct.sh_flctl* %43, i32 16, i32 %45)
  %47 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %48 = call i32 @wait_completion(%struct.sh_flctl* %47)
  br label %49

49:                                               ; preds = %29
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %25

52:                                               ; preds = %25
  ret void
}

declare dso_local %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info*) #1

declare dso_local i32 @set_cmd_regs(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @empty_fifo(%struct.sh_flctl*) #1

declare dso_local i32 @set_addr(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @FLDTCNTR(%struct.sh_flctl*) #1

declare dso_local i32 @start_translation(%struct.sh_flctl*) #1

declare dso_local i32 @write_fiforeg(%struct.sh_flctl*, i32, i32) #1

declare dso_local i32 @wait_completion(%struct.sh_flctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
