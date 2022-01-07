; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_tx_queue_set_q2ratid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_tx_queue_set_q2ratid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }

@IL_SCD_QUEUE_RA_TID_MAP_RATID_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, i32, i32)* @il4965_tx_queue_set_q2ratid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_tx_queue_set_q2ratid(%struct.il_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @IL_SCD_QUEUE_RA_TID_MAP_RATID_MSK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %14 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @IL49_SCD_TRANSLATE_TBL_OFFSET_QUEUE(i32 %16)
  %18 = add nsw i32 %15, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @il_read_targ_mem(%struct.il_priv* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = shl i32 %26, 16
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 65535
  %30 = or i32 %27, %29
  store i32 %30, i32* %8, align 4
  br label %36

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, -65536
  %35 = or i32 %32, %34
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %31, %25
  %37 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @il_write_targ_mem(%struct.il_priv* %37, i32 %38, i32 %39)
  ret i32 0
}

declare dso_local i32 @IL49_SCD_TRANSLATE_TBL_OFFSET_QUEUE(i32) #1

declare dso_local i32 @il_read_targ_mem(%struct.il_priv*, i32) #1

declare dso_local i32 @il_write_targ_mem(%struct.il_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
