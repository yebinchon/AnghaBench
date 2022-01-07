; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_get_pci_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_get_pci_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32 }

@BNX2_PCICFG_MISC_STATUS = common dso_local global i32 0, align 4
@BNX2_PCICFG_MISC_STATUS_PCIX_DET = common dso_local global i32 0, align 4
@BNX2_FLAG_PCIX = common dso_local global i32 0, align 4
@BNX2_PCICFG_PCI_CLOCK_CONTROL_BITS = common dso_local global i32 0, align 4
@BNX2_PCICFG_PCI_CLOCK_CONTROL_BITS_PCI_CLK_SPD_DET = common dso_local global i32 0, align 4
@BNX2_PCICFG_MISC_STATUS_M66EN = common dso_local global i32 0, align 4
@BNX2_PCICFG_MISC_STATUS_32BIT_DET = common dso_local global i32 0, align 4
@BNX2_FLAG_PCI_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_get_pci_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_get_pci_speed(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  %5 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %6 = load i32, i32* @BNX2_PCICFG_MISC_STATUS, align 4
  %7 = call i32 @BNX2_RD(%struct.bnx2* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @BNX2_PCICFG_MISC_STATUS_PCIX_DET, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %1
  %13 = load i32, i32* @BNX2_FLAG_PCIX, align 4
  %14 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %15 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %19 = load i32, i32* @BNX2_PCICFG_PCI_CLOCK_CONTROL_BITS, align 4
  %20 = call i32 @BNX2_RD(%struct.bnx2* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @BNX2_PCICFG_PCI_CLOCK_CONTROL_BITS_PCI_CLK_SPD_DET, align 4
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %40 [
    i32 136, label %25
    i32 129, label %28
    i32 131, label %31
    i32 130, label %31
    i32 133, label %34
    i32 132, label %34
    i32 128, label %37
    i32 135, label %37
    i32 134, label %37
  ]

25:                                               ; preds = %12
  %26 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %27 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %26, i32 0, i32 0
  store i32 133, i32* %27, align 4
  br label %40

28:                                               ; preds = %12
  %29 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %30 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %29, i32 0, i32 0
  store i32 100, i32* %30, align 4
  br label %40

31:                                               ; preds = %12, %12
  %32 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %33 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %32, i32 0, i32 0
  store i32 66, i32* %33, align 4
  br label %40

34:                                               ; preds = %12, %12
  %35 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %36 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %35, i32 0, i32 0
  store i32 50, i32* %36, align 4
  br label %40

37:                                               ; preds = %12, %12, %12
  %38 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %39 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %38, i32 0, i32 0
  store i32 33, i32* %39, align 4
  br label %40

40:                                               ; preds = %12, %37, %34, %31, %28, %25
  br label %53

41:                                               ; preds = %1
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @BNX2_PCICFG_MISC_STATUS_M66EN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %48 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %47, i32 0, i32 0
  store i32 66, i32* %48, align 4
  br label %52

49:                                               ; preds = %41
  %50 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %51 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %50, i32 0, i32 0
  store i32 33, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %40
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @BNX2_PCICFG_MISC_STATUS_32BIT_DET, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* @BNX2_FLAG_PCI_32BIT, align 4
  %60 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %61 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %53
  ret void
}

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
