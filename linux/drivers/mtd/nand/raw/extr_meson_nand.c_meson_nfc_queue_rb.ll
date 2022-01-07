; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_queue_rb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_queue_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_nfc = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@CMD_FIFO_EMPTY_TIMEOUT = common dso_local global i32 0, align 4
@NFC_REG_CFG = common dso_local global i64 0, align 8
@NFC_RB_IRQ_EN = common dso_local global i32 0, align 4
@NFC_CMD_RB = common dso_local global i32 0, align 4
@NFC_CMD_RB_INT = common dso_local global i32 0, align 4
@NFC_REG_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_nfc*, i32)* @meson_nfc_queue_rb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_nfc_queue_rb(%struct.meson_nfc* %0, i32 %1) #0 {
  %3 = alloca %struct.meson_nfc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.meson_nfc* %0, %struct.meson_nfc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %9 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %10 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @meson_nfc_cmd_idle(%struct.meson_nfc* %8, i32 %12)
  %14 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %15 = call i32 @meson_nfc_drain_cmd(%struct.meson_nfc* %14)
  %16 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %17 = load i32, i32* @CMD_FIFO_EMPTY_TIMEOUT, align 4
  %18 = call i32 @meson_nfc_wait_cmd_finish(%struct.meson_nfc* %16, i32 %17)
  %19 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %20 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NFC_REG_CFG, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @NFC_RB_IRQ_EN, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %30 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NFC_REG_CFG, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  %35 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %36 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %35, i32 0, i32 0
  %37 = call i32 @reinit_completion(i32* %36)
  %38 = load i32, i32* @NFC_CMD_RB, align 4
  %39 = load i32, i32* @NFC_CMD_RB_INT, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %42 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %40, %44
  %46 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %47 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %45, %49
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %53 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NFC_REG_CMD, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 %51, i64 %56)
  %58 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %59 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %58, i32 0, i32 0
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @msecs_to_jiffies(i32 %60)
  %62 = call i32 @wait_for_completion_timeout(i32* %59, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %2
  store i32 -1, i32* %7, align 4
  br label %66

66:                                               ; preds = %65, %2
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @meson_nfc_cmd_idle(%struct.meson_nfc*, i32) #1

declare dso_local i32 @meson_nfc_drain_cmd(%struct.meson_nfc*) #1

declare dso_local i32 @meson_nfc_wait_cmd_finish(%struct.meson_nfc*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
