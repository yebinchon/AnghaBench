; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_pci = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to wake up target: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_pci_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_pci_resume(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_pci*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %9 = call %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k* %8)
  store %struct.ath10k_pci* %9, %struct.ath10k_pci** %4, align 8
  %10 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %11 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %14 = call i32 @ath10k_pci_force_wake(%struct.ath10k* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ath10k_err(%struct.ath10k* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %35

22:                                               ; preds = %1
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = call i32 @pci_read_config_dword(%struct.pci_dev* %23, i32 64, i32* %6)
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 65280
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, -65281
  %32 = call i32 @pci_write_config_dword(%struct.pci_dev* %29, i32 64, i32 %31)
  br label %33

33:                                               ; preds = %28, %22
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %17
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_force_wake(%struct.ath10k*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
