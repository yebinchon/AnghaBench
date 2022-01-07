; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_rule_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_rule_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sf2_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_sf2_priv*, i32, i64)* @bcm_sf2_cfp_rule_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sf2_cfp_rule_remove(%struct.bcm_sf2_priv* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm_sf2_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.bcm_sf2_priv* %0, %struct.bcm_sf2_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @bcm_sf2_cfp_rule_del_one(%struct.bcm_sf2_priv* %10, i32 %11, i64 %12, i64* %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %28

18:                                               ; preds = %3
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @bcm_sf2_cfp_rule_del_one(%struct.bcm_sf2_priv* %22, i32 %23, i64 %24, i64* null)
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %16
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @bcm_sf2_cfp_rule_del_one(%struct.bcm_sf2_priv*, i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
