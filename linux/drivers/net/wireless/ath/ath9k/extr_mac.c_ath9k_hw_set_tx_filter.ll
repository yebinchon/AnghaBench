; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_set_tx_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_set_tx_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_D_TXBLK_WRITE_COMMAND = common dso_local global i32 0, align 4
@AR_D_TXBLK_WRITE_DCU = common dso_local global i32 0, align 4
@ATH9K_HW_SLICE_PER_DCU = common dso_local global i32 0, align 4
@AR_D_TXBLK_WRITE_SLICE = common dso_local global i32 0, align 4
@ATH9K_HW_BIT_IN_SLICE = common dso_local global i32 0, align 4
@PS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"DCU%d staid %d set %d txfilter %08x\0A\00", align 1
@AR_D_TXBLK_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_set_tx_filter(%struct.ath_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %46, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 10
  br i1 %11, label %12, label %49

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @AR_D_TXBLK_WRITE_COMMAND, align 4
  %15 = call i32 @SM(i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @AR_D_TXBLK_WRITE_DCU, align 4
  %18 = call i32 @SM(i32 %16, i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ATH9K_HW_SLICE_PER_DCU, align 4
  %23 = sdiv i32 %21, %22
  %24 = load i32, i32* @AR_D_TXBLK_WRITE_SLICE, align 4
  %25 = call i32 @SM(i32 %23, i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @ATH9K_HW_BIT_IN_SLICE, align 4
  %30 = srem i32 %28, %29
  %31 = call i32 @BIT(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %35 = call i32 @ath9k_hw_common(%struct.ath_hw* %34)
  %36 = load i32, i32* @PS, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @ath_dbg(i32 %35, i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %43 = load i32, i32* @AR_D_TXBLK_BASE, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @REG_WRITE(%struct.ath_hw* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %12
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %9

49:                                               ; preds = %9
  ret void
}

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
