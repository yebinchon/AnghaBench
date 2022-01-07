; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lpc_ich.c_lpc_ich_restore_config_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lpc_ich.c_lpc_ich_restore_config_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.lpc_ich_priv = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @lpc_ich_restore_config_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpc_ich_restore_config_space(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.lpc_ich_priv*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.lpc_ich_priv* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.lpc_ich_priv* %5, %struct.lpc_ich_priv** %3, align 8
  %6 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %7 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %13 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %16 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pci_write_config_byte(%struct.pci_dev* %11, i32 %14, i32 %17)
  %19 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %20 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 4
  br label %21

21:                                               ; preds = %10, %1
  %22 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %23 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %29 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %32 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pci_write_config_byte(%struct.pci_dev* %27, i32 %30, i32 %33)
  %35 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %36 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %35, i32 0, i32 1
  store i32 -1, i32* %36, align 4
  br label %37

37:                                               ; preds = %26, %21
  %38 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %39 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %44 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %45 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %48 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pci_write_config_byte(%struct.pci_dev* %43, i32 %46, i32 %49)
  %51 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %52 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %51, i32 0, i32 2
  store i32 -1, i32* %52, align 4
  br label %53

53:                                               ; preds = %42, %37
  ret void
}

declare dso_local %struct.lpc_ich_priv* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
