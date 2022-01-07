; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_plx_pci.c_plx_pci_check_sja1000.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_plx_pci.c_plx_pci_check_sja1000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1000_priv = type { i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32, i32)* }

@REG_CR = common dso_local global i32 0, align 4
@REG_CR_BASICCAN_INITIAL_MASK = common dso_local global i32 0, align 4
@REG_CR_BASICCAN_INITIAL = common dso_local global i32 0, align 4
@SJA1000_SR = common dso_local global i32 0, align 4
@REG_SR_BASICCAN_INITIAL = common dso_local global i32 0, align 4
@SJA1000_IR = common dso_local global i32 0, align 4
@REG_IR_BASICCAN_INITIAL = common dso_local global i32 0, align 4
@SJA1000_CDR = common dso_local global i32 0, align 4
@CDR_PELICAN = common dso_local global i32 0, align 4
@SJA1000_MOD = common dso_local global i32 0, align 4
@REG_MOD_PELICAN_INITIAL = common dso_local global i32 0, align 4
@REG_SR_PELICAN_INITIAL = common dso_local global i32 0, align 4
@REG_IR_PELICAN_INITIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1000_priv*)* @plx_pci_check_sja1000 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plx_pci_check_sja1000(%struct.sja1000_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sja1000_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.sja1000_priv* %0, %struct.sja1000_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %6 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %5, i32 0, i32 0
  %7 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %6, align 8
  %8 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %9 = load i32, i32* @REG_CR, align 4
  %10 = call i32 %7(%struct.sja1000_priv* %8, i32 %9)
  %11 = load i32, i32* @REG_CR_BASICCAN_INITIAL_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @REG_CR_BASICCAN_INITIAL, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %17 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %16, i32 0, i32 0
  %18 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %17, align 8
  %19 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %20 = load i32, i32* @SJA1000_SR, align 4
  %21 = call i32 %18(%struct.sja1000_priv* %19, i32 %20)
  %22 = load i32, i32* @REG_SR_BASICCAN_INITIAL, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %15
  %25 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %26 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %25, i32 0, i32 0
  %27 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %26, align 8
  %28 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %29 = load i32, i32* @SJA1000_IR, align 4
  %30 = call i32 %27(%struct.sja1000_priv* %28, i32 %29)
  %31 = load i32, i32* @REG_IR_BASICCAN_INITIAL, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %24, %15, %1
  %35 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %36 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %35, i32 0, i32 1
  %37 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %36, align 8
  %38 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %39 = load i32, i32* @SJA1000_CDR, align 4
  %40 = load i32, i32* @CDR_PELICAN, align 4
  %41 = call i32 %37(%struct.sja1000_priv* %38, i32 %39, i32 %40)
  %42 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %43 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %42, i32 0, i32 0
  %44 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %43, align 8
  %45 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %46 = load i32, i32* @SJA1000_MOD, align 4
  %47 = call i32 %44(%struct.sja1000_priv* %45, i32 %46)
  %48 = load i32, i32* @REG_MOD_PELICAN_INITIAL, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %34
  %51 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %52 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %51, i32 0, i32 0
  %53 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %52, align 8
  %54 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %55 = load i32, i32* @SJA1000_SR, align 4
  %56 = call i32 %53(%struct.sja1000_priv* %54, i32 %55)
  %57 = load i32, i32* @REG_SR_PELICAN_INITIAL, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %50
  %60 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %61 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %60, i32 0, i32 0
  %62 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %61, align 8
  %63 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %64 = load i32, i32* @SJA1000_IR, align 4
  %65 = call i32 %62(%struct.sja1000_priv* %63, i32 %64)
  %66 = load i32, i32* @REG_IR_PELICAN_INITIAL, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %71

70:                                               ; preds = %59, %50, %34
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %68
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
