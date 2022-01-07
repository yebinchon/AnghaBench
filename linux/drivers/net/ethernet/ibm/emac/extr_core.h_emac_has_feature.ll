; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.h_emac_has_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.h_emac_has_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_instance = type { i64 }

@EMAC_FTRS_ALWAYS = common dso_local global i64 0, align 8
@EMAC_FTRS_POSSIBLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emac_instance*, i64)* @emac_has_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_has_feature(%struct.emac_instance* %0, i64 %1) #0 {
  %3 = alloca %struct.emac_instance*, align 8
  %4 = alloca i64, align 8
  store %struct.emac_instance* %0, %struct.emac_instance** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* @EMAC_FTRS_ALWAYS, align 8
  %6 = load i64, i64* %4, align 8
  %7 = and i64 %5, %6
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* @EMAC_FTRS_POSSIBLE, align 8
  %11 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %12 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = and i64 %10, %13
  %15 = load i64, i64* %4, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %9, %2
  %19 = phi i1 [ true, %2 ], [ %17, %9 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
