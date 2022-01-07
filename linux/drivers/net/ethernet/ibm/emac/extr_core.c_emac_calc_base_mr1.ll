; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_calc_base_mr1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_calc_base_mr1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_instance = type { i32 }

@EMAC_FTR_EMAC4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emac_instance*, i32, i32)* @emac_calc_base_mr1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_calc_base_mr1(%struct.emac_instance* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.emac_instance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.emac_instance* %0, %struct.emac_instance** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %8 = load i32, i32* @EMAC_FTR_EMAC4, align 4
  %9 = call i64 @emac_has_feature(%struct.emac_instance* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @__emac4_calc_base_mr1(%struct.emac_instance* %12, i32 %13, i32 %14)
  br label %21

16:                                               ; preds = %3
  %17 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @__emac_calc_base_mr1(%struct.emac_instance* %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %16, %11
  %22 = phi i32 [ %15, %11 ], [ %20, %16 ]
  ret i32 %22
}

declare dso_local i64 @emac_has_feature(%struct.emac_instance*, i32) #1

declare dso_local i32 @__emac4_calc_base_mr1(%struct.emac_instance*, i32, i32) #1

declare dso_local i32 @__emac_calc_base_mr1(%struct.emac_instance*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
