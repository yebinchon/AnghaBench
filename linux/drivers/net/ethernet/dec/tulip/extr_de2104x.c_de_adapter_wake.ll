; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_adapter_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_adapter_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de_private = type { i32, i64 }

@PCIPM = common dso_local global i32 0, align 4
@PM_Mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.de_private*)* @de_adapter_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de_adapter_wake(%struct.de_private* %0) #0 {
  %2 = alloca %struct.de_private*, align 8
  %3 = alloca i32, align 4
  store %struct.de_private* %0, %struct.de_private** %2, align 8
  %4 = load %struct.de_private*, %struct.de_private** %2, align 8
  %5 = getelementptr inbounds %struct.de_private, %struct.de_private* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %31

9:                                                ; preds = %1
  %10 = load %struct.de_private*, %struct.de_private** %2, align 8
  %11 = getelementptr inbounds %struct.de_private, %struct.de_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PCIPM, align 4
  %14 = call i32 @pci_read_config_dword(i32 %12, i32 %13, i32* %3)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @PM_Mask, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %9
  %20 = load i32, i32* @PM_Mask, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load %struct.de_private*, %struct.de_private** %2, align 8
  %25 = getelementptr inbounds %struct.de_private, %struct.de_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PCIPM, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @pci_write_config_dword(i32 %26, i32 %27, i32 %28)
  %30 = call i32 @msleep(i32 10)
  br label %31

31:                                               ; preds = %8, %19, %9
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
