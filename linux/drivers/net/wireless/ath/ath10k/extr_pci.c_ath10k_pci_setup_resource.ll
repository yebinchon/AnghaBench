; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_setup_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_setup_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_pci = type { i32, i32, i32, i32 }
%struct.ath10k_ce = type { i32 }

@ath10k_pci_fw_dump_work = common dso_local global i32 0, align 4
@ath10k_pci_rx_replenish_retry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed to allocate copy engine pipes: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_pci_setup_resource(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_pci*, align 8
  %5 = alloca %struct.ath10k_ce*, align 8
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %8 = call %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k* %7)
  store %struct.ath10k_pci* %8, %struct.ath10k_pci** %4, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = call %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k* %9)
  store %struct.ath10k_ce* %10, %struct.ath10k_ce** %5, align 8
  %11 = load %struct.ath10k_ce*, %struct.ath10k_ce** %5, align 8
  %12 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %15 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %14, i32 0, i32 3
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %18 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %17, i32 0, i32 2
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %21 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %20, i32 0, i32 1
  %22 = load i32, i32* @ath10k_pci_fw_dump_work, align 4
  %23 = call i32 @INIT_WORK(i32* %21, i32 %22)
  %24 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %25 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %24, i32 0, i32 0
  %26 = load i32, i32* @ath10k_pci_rx_replenish_retry, align 4
  %27 = call i32 @timer_setup(i32* %25, i32 %26, i32 0)
  %28 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %29 = call i64 @QCA_REV_6174(%struct.ath10k* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %1
  %32 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %33 = call i64 @QCA_REV_9377(%struct.ath10k* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %1
  %36 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %37 = call i32 @ath10k_pci_override_ce_config(%struct.ath10k* %36)
  br label %38

38:                                               ; preds = %35, %31
  %39 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %40 = call i32 @ath10k_pci_alloc_pipes(%struct.ath10k* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @ath10k_err(%struct.ath10k* %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k*) #1

declare dso_local %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i64 @QCA_REV_6174(%struct.ath10k*) #1

declare dso_local i64 @QCA_REV_9377(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_override_ce_config(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_alloc_pipes(%struct.ath10k*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
