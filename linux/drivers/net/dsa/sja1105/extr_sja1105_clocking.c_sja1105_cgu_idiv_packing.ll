; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_clocking.c_sja1105_cgu_idiv_packing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_clocking.c_sja1105_cgu_idiv_packing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_cgu_idiv = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sja1105_cgu_idiv*, i32)* @sja1105_cgu_idiv_packing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sja1105_cgu_idiv_packing(i8* %0, %struct.sja1105_cgu_idiv* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sja1105_cgu_idiv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sja1105_cgu_idiv* %1, %struct.sja1105_cgu_idiv** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 4, i32* %7, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.sja1105_cgu_idiv*, %struct.sja1105_cgu_idiv** %5, align 8
  %10 = getelementptr inbounds %struct.sja1105_cgu_idiv, %struct.sja1105_cgu_idiv* %9, i32 0, i32 3
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @sja1105_packing(i8* %8, i32* %10, i32 28, i32 24, i32 4, i32 %11)
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.sja1105_cgu_idiv*, %struct.sja1105_cgu_idiv** %5, align 8
  %15 = getelementptr inbounds %struct.sja1105_cgu_idiv, %struct.sja1105_cgu_idiv* %14, i32 0, i32 2
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @sja1105_packing(i8* %13, i32* %15, i32 11, i32 11, i32 4, i32 %16)
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.sja1105_cgu_idiv*, %struct.sja1105_cgu_idiv** %5, align 8
  %20 = getelementptr inbounds %struct.sja1105_cgu_idiv, %struct.sja1105_cgu_idiv* %19, i32 0, i32 1
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @sja1105_packing(i8* %18, i32* %20, i32 5, i32 2, i32 4, i32 %21)
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.sja1105_cgu_idiv*, %struct.sja1105_cgu_idiv** %5, align 8
  %25 = getelementptr inbounds %struct.sja1105_cgu_idiv, %struct.sja1105_cgu_idiv* %24, i32 0, i32 0
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @sja1105_packing(i8* %23, i32* %25, i32 0, i32 0, i32 4, i32 %26)
  ret void
}

declare dso_local i32 @sja1105_packing(i8*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
