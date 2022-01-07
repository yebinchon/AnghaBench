; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_mii_mask_pcdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_mii_mask_pcdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gswip_priv = type { i32 }

@GSWIP_MII_PCDU0 = common dso_local global i32 0, align 4
@GSWIP_MII_PCDU1 = common dso_local global i32 0, align 4
@GSWIP_MII_PCDU5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gswip_priv*, i32, i32, i32)* @gswip_mii_mask_pcdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gswip_mii_mask_pcdu(%struct.gswip_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gswip_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gswip_priv* %0, %struct.gswip_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %28 [
    i32 0, label %10
    i32 1, label %16
    i32 5, label %22
  ]

10:                                               ; preds = %4
  %11 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @GSWIP_MII_PCDU0, align 4
  %15 = call i32 @gswip_mii_mask(%struct.gswip_priv* %11, i32 %12, i32 %13, i32 %14)
  br label %28

16:                                               ; preds = %4
  %17 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @GSWIP_MII_PCDU1, align 4
  %21 = call i32 @gswip_mii_mask(%struct.gswip_priv* %17, i32 %18, i32 %19, i32 %20)
  br label %28

22:                                               ; preds = %4
  %23 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @GSWIP_MII_PCDU5, align 4
  %27 = call i32 @gswip_mii_mask(%struct.gswip_priv* %23, i32 %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %4, %22, %16, %10
  ret void
}

declare dso_local i32 @gswip_mii_mask(%struct.gswip_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
