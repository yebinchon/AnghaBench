; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_ems_pci.c_ems_pci_check_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_ems_pci.c_ems_pci_check_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1000_priv = type { i8 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32, i8)* }

@SJA1000_MOD = common dso_local global i32 0, align 4
@SJA1000_CDR = common dso_local global i32 0, align 4
@CDR_PELICAN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1000_priv*)* @ems_pci_check_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ems_pci_check_chan(%struct.sja1000_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sja1000_priv*, align 8
  %4 = alloca i8, align 1
  store %struct.sja1000_priv* %0, %struct.sja1000_priv** %3, align 8
  %5 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %6 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %5, i32 0, i32 1
  %7 = load i32 (%struct.sja1000_priv*, i32, i8)*, i32 (%struct.sja1000_priv*, i32, i8)** %6, align 8
  %8 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %9 = load i32, i32* @SJA1000_MOD, align 4
  %10 = call i32 %7(%struct.sja1000_priv* %8, i32 %9, i8 zeroext 1)
  %11 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %12 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %11, i32 0, i32 1
  %13 = load i32 (%struct.sja1000_priv*, i32, i8)*, i32 (%struct.sja1000_priv*, i32, i8)** %12, align 8
  %14 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %15 = load i32, i32* @SJA1000_CDR, align 4
  %16 = load i8, i8* @CDR_PELICAN, align 1
  %17 = call i32 %13(%struct.sja1000_priv* %14, i32 %15, i8 zeroext %16)
  %18 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %19 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %18, i32 0, i32 0
  %20 = load i8 (%struct.sja1000_priv*, i32)*, i8 (%struct.sja1000_priv*, i32)** %19, align 8
  %21 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %22 = load i32, i32* @SJA1000_CDR, align 4
  %23 = call zeroext i8 %20(%struct.sja1000_priv* %21, i32 %22)
  store i8 %23, i8* %4, align 1
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @CDR_PELICAN, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %31

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
