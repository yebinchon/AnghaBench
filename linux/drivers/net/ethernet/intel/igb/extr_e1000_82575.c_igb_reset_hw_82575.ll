; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_reset_hw_82575.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_reset_hw_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"PCI-E Master disable polling has failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"PCI-E Set completion timeout has failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Masking off all interrupts\0A\00", align 1
@E1000_IMC = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_PSP = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Issuing a global reset to MAC\0A\00", align 1
@E1000_CTRL_RST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Auto Read Done did not complete\0A\00", align 1
@E1000_EECD = common dso_local global i32 0, align 4
@E1000_EECD_PRES = common dso_local global i32 0, align 4
@E1000_ICR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @igb_reset_hw_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igb_reset_hw_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = call i64 @igb_disable_pcie_master(%struct.e1000_hw* %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @hw_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = call i64 @igb_set_pcie_completion_timeout(%struct.e1000_hw* %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 @hw_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %11
  %19 = call i32 @hw_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* @E1000_IMC, align 4
  %21 = call i32 @wr32(i32 %20, i32 -1)
  %22 = load i32, i32* @E1000_RCTL, align 4
  %23 = call i32 @wr32(i32 %22, i32 0)
  %24 = load i32, i32* @E1000_TCTL, align 4
  %25 = load i32, i32* @E1000_TCTL_PSP, align 4
  %26 = call i32 @wr32(i32 %24, i32 %25)
  %27 = call i32 (...) @wrfl()
  %28 = call i32 @usleep_range(i32 10000, i32 20000)
  %29 = load i32, i32* @E1000_CTRL, align 4
  %30 = call i32 @rd32(i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = call i32 @hw_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32, i32* @E1000_CTRL, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @E1000_CTRL_RST, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @wr32(i32 %32, i32 %35)
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %38 = call i64 @igb_get_auto_rd_done(%struct.e1000_hw* %37)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %18
  %42 = call i32 @hw_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %18
  %44 = load i32, i32* @E1000_EECD, align 4
  %45 = call i32 @rd32(i32 %44)
  %46 = load i32, i32* @E1000_EECD_PRES, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %51 = call i32 @igb_reset_init_script_82575(%struct.e1000_hw* %50)
  br label %52

52:                                               ; preds = %49, %43
  %53 = load i32, i32* @E1000_IMC, align 4
  %54 = call i32 @wr32(i32 %53, i32 -1)
  %55 = load i32, i32* @E1000_ICR, align 4
  %56 = call i32 @rd32(i32 %55)
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %58 = call i64 @igb_check_alt_mac_addr(%struct.e1000_hw* %57)
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  ret i64 %59
}

declare dso_local i64 @igb_disable_pcie_master(%struct.e1000_hw*) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i64 @igb_set_pcie_completion_timeout(%struct.e1000_hw*) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @wrfl(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i64 @igb_get_auto_rd_done(%struct.e1000_hw*) #1

declare dso_local i32 @igb_reset_init_script_82575(%struct.e1000_hw*) #1

declare dso_local i64 @igb_check_alt_mac_addr(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
