; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_etherh.c_etherh_clr_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_etherh.c_etherh_clr_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etherh_priv = type { i8, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etherh_priv*, i8)* @etherh_clr_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etherh_clr_ctrl(%struct.etherh_priv* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.etherh_priv*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.etherh_priv* %0, %struct.etherh_priv** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.etherh_priv*, %struct.etherh_priv** %3, align 8
  %7 = getelementptr inbounds %struct.etherh_priv, %struct.etherh_priv* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 4
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* %4, align 1
  %11 = zext i8 %10 to i32
  %12 = xor i32 %11, -1
  %13 = and i32 %9, %12
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %5, align 1
  %15 = load i8, i8* %5, align 1
  %16 = load %struct.etherh_priv*, %struct.etherh_priv** %3, align 8
  %17 = getelementptr inbounds %struct.etherh_priv, %struct.etherh_priv* %16, i32 0, i32 0
  store i8 %15, i8* %17, align 4
  %18 = load i8, i8* %5, align 1
  %19 = load %struct.etherh_priv*, %struct.etherh_priv** %3, align 8
  %20 = getelementptr inbounds %struct.etherh_priv, %struct.etherh_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @writeb(i8 zeroext %18, i32 %21)
  ret void
}

declare dso_local i32 @writeb(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
