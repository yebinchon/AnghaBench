; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_calc_trtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_calc_trtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_instance = type { i32 }

@EMAC_FTR_EMAC4 = common dso_local global i32 0, align 4
@EMAC_TRTR_SHIFT_EMAC4 = common dso_local global i32 0, align 4
@EMAC_TRTR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emac_instance*, i32)* @emac_calc_trtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_calc_trtr(%struct.emac_instance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.emac_instance*, align 8
  %5 = alloca i32, align 4
  store %struct.emac_instance* %0, %struct.emac_instance** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %7 = load i32, i32* @EMAC_FTR_EMAC4, align 4
  %8 = call i64 @emac_has_feature(%struct.emac_instance* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = lshr i32 %11, 6
  %13 = sub i32 %12, 1
  %14 = load i32, i32* @EMAC_TRTR_SHIFT_EMAC4, align 4
  %15 = shl i32 %13, %14
  store i32 %15, i32* %3, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = lshr i32 %17, 6
  %19 = sub i32 %18, 1
  %20 = load i32, i32* @EMAC_TRTR_SHIFT, align 4
  %21 = shl i32 %19, %20
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %16, %10
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i64 @emac_has_feature(%struct.emac_instance*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
