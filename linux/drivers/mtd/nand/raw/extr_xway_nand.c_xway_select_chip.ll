; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_xway_nand.c_xway_select_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_xway_nand.c_xway_select_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.xway_nand_data = type { i32 }

@NAND_CON_CE = common dso_local global i32 0, align 4
@EBU_NAND_CON = common dso_local global i32 0, align 4
@NAND_CON_NANDM = common dso_local global i32 0, align 4
@ebu_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @xway_select_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xway_select_chip(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xway_nand_data*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %7 = call %struct.xway_nand_data* @nand_get_controller_data(%struct.nand_chip* %6)
  store %struct.xway_nand_data* %7, %struct.xway_nand_data** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %31 [
    i32 -1, label %9
    i32 0, label %20
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @NAND_CON_CE, align 4
  %11 = load i32, i32* @EBU_NAND_CON, align 4
  %12 = call i32 @ltq_ebu_w32_mask(i32 %10, i32 0, i32 %11)
  %13 = load i32, i32* @NAND_CON_NANDM, align 4
  %14 = load i32, i32* @EBU_NAND_CON, align 4
  %15 = call i32 @ltq_ebu_w32_mask(i32 %13, i32 0, i32 %14)
  %16 = load %struct.xway_nand_data*, %struct.xway_nand_data** %5, align 8
  %17 = getelementptr inbounds %struct.xway_nand_data, %struct.xway_nand_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @spin_unlock_irqrestore(i32* @ebu_lock, i32 %18)
  br label %33

20:                                               ; preds = %2
  %21 = load %struct.xway_nand_data*, %struct.xway_nand_data** %5, align 8
  %22 = getelementptr inbounds %struct.xway_nand_data, %struct.xway_nand_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @spin_lock_irqsave(i32* @ebu_lock, i32 %23)
  %25 = load i32, i32* @NAND_CON_NANDM, align 4
  %26 = load i32, i32* @EBU_NAND_CON, align 4
  %27 = call i32 @ltq_ebu_w32_mask(i32 0, i32 %25, i32 %26)
  %28 = load i32, i32* @NAND_CON_CE, align 4
  %29 = load i32, i32* @EBU_NAND_CON, align 4
  %30 = call i32 @ltq_ebu_w32_mask(i32 0, i32 %28, i32 %29)
  br label %33

31:                                               ; preds = %2
  %32 = call i32 (...) @BUG()
  br label %33

33:                                               ; preds = %31, %20, %9
  ret void
}

declare dso_local %struct.xway_nand_data* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @ltq_ebu_w32_mask(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
