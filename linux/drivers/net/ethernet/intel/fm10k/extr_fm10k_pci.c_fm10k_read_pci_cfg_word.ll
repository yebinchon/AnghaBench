; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_read_pci_cfg_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_read_pci_cfg_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32, %struct.fm10k_intfc* }
%struct.fm10k_intfc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm10k_read_pci_cfg_word(%struct.fm10k_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fm10k_intfc*, align 8
  %7 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %9 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %8, i32 0, i32 1
  %10 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %9, align 8
  store %struct.fm10k_intfc* %10, %struct.fm10k_intfc** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %12 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @FM10K_REMOVED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = xor i32 %17, -1
  store i32 %18, i32* %3, align 4
  br label %32

19:                                               ; preds = %2
  %20 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %21 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @pci_read_config_word(i32 %22, i32 %23, i32* %7)
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 65535
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %29 = call i32 @fm10k_write_flush(%struct.fm10k_hw* %28)
  br label %30

30:                                               ; preds = %27, %19
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %16
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @FM10K_REMOVED(i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @fm10k_write_flush(%struct.fm10k_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
