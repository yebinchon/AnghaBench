; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_clocking.c_sja1105_cfg_pad_mii_tx_packing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_clocking.c_sja1105_cfg_pad_mii_tx_packing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_cfg_pad_mii_tx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sja1105_cfg_pad_mii_tx*, i32)* @sja1105_cfg_pad_mii_tx_packing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sja1105_cfg_pad_mii_tx_packing(i8* %0, %struct.sja1105_cfg_pad_mii_tx* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sja1105_cfg_pad_mii_tx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sja1105_cfg_pad_mii_tx* %1, %struct.sja1105_cfg_pad_mii_tx** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 4, i32* %7, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.sja1105_cfg_pad_mii_tx*, %struct.sja1105_cfg_pad_mii_tx** %5, align 8
  %10 = getelementptr inbounds %struct.sja1105_cfg_pad_mii_tx, %struct.sja1105_cfg_pad_mii_tx* %9, i32 0, i32 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @sja1105_packing(i8* %8, i32* %10, i32 28, i32 27, i32 4, i32 %11)
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.sja1105_cfg_pad_mii_tx*, %struct.sja1105_cfg_pad_mii_tx** %5, align 8
  %15 = getelementptr inbounds %struct.sja1105_cfg_pad_mii_tx, %struct.sja1105_cfg_pad_mii_tx* %14, i32 0, i32 7
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @sja1105_packing(i8* %13, i32* %15, i32 25, i32 24, i32 4, i32 %16)
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.sja1105_cfg_pad_mii_tx*, %struct.sja1105_cfg_pad_mii_tx** %5, align 8
  %20 = getelementptr inbounds %struct.sja1105_cfg_pad_mii_tx, %struct.sja1105_cfg_pad_mii_tx* %19, i32 0, i32 6
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @sja1105_packing(i8* %18, i32* %20, i32 20, i32 19, i32 4, i32 %21)
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.sja1105_cfg_pad_mii_tx*, %struct.sja1105_cfg_pad_mii_tx** %5, align 8
  %25 = getelementptr inbounds %struct.sja1105_cfg_pad_mii_tx, %struct.sja1105_cfg_pad_mii_tx* %24, i32 0, i32 5
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @sja1105_packing(i8* %23, i32* %25, i32 17, i32 16, i32 4, i32 %26)
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.sja1105_cfg_pad_mii_tx*, %struct.sja1105_cfg_pad_mii_tx** %5, align 8
  %30 = getelementptr inbounds %struct.sja1105_cfg_pad_mii_tx, %struct.sja1105_cfg_pad_mii_tx* %29, i32 0, i32 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @sja1105_packing(i8* %28, i32* %30, i32 12, i32 11, i32 4, i32 %31)
  %33 = load i8*, i8** %4, align 8
  %34 = load %struct.sja1105_cfg_pad_mii_tx*, %struct.sja1105_cfg_pad_mii_tx** %5, align 8
  %35 = getelementptr inbounds %struct.sja1105_cfg_pad_mii_tx, %struct.sja1105_cfg_pad_mii_tx* %34, i32 0, i32 3
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @sja1105_packing(i8* %33, i32* %35, i32 9, i32 8, i32 4, i32 %36)
  %38 = load i8*, i8** %4, align 8
  %39 = load %struct.sja1105_cfg_pad_mii_tx*, %struct.sja1105_cfg_pad_mii_tx** %5, align 8
  %40 = getelementptr inbounds %struct.sja1105_cfg_pad_mii_tx, %struct.sja1105_cfg_pad_mii_tx* %39, i32 0, i32 2
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @sja1105_packing(i8* %38, i32* %40, i32 4, i32 3, i32 4, i32 %41)
  %43 = load i8*, i8** %4, align 8
  %44 = load %struct.sja1105_cfg_pad_mii_tx*, %struct.sja1105_cfg_pad_mii_tx** %5, align 8
  %45 = getelementptr inbounds %struct.sja1105_cfg_pad_mii_tx, %struct.sja1105_cfg_pad_mii_tx* %44, i32 0, i32 1
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @sja1105_packing(i8* %43, i32* %45, i32 2, i32 2, i32 4, i32 %46)
  %48 = load i8*, i8** %4, align 8
  %49 = load %struct.sja1105_cfg_pad_mii_tx*, %struct.sja1105_cfg_pad_mii_tx** %5, align 8
  %50 = getelementptr inbounds %struct.sja1105_cfg_pad_mii_tx, %struct.sja1105_cfg_pad_mii_tx* %49, i32 0, i32 0
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @sja1105_packing(i8* %48, i32* %50, i32 1, i32 0, i32 4, i32 %51)
  ret void
}

declare dso_local i32 @sja1105_packing(i8*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
