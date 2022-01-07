; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_base.c_igc_reset_hw_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_base.c_igc_reset_hw_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"PCI-E Master disable polling has failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Masking off all interrupts\0A\00", align 1
@IGC_IMC = common dso_local global i32 0, align 4
@IGC_RCTL = common dso_local global i32 0, align 4
@IGC_TCTL = common dso_local global i32 0, align 4
@IGC_TCTL_PSP = common dso_local global i32 0, align 4
@IGC_CTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Issuing a global reset to MAC\0A\00", align 1
@IGC_CTRL_DEV_RST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Auto Read Done did not complete\0A\00", align 1
@IGC_ICR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.igc_hw*)* @igc_reset_hw_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igc_reset_hw_base(%struct.igc_hw* %0) #0 {
  %2 = alloca %struct.igc_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.igc_hw* %0, %struct.igc_hw** %2, align 8
  %5 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %6 = call i64 @igc_disable_pcie_master(%struct.igc_hw* %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @hw_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = call i32 @hw_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @IGC_IMC, align 4
  %14 = call i32 @wr32(i32 %13, i32 -1)
  %15 = load i32, i32* @IGC_RCTL, align 4
  %16 = call i32 @wr32(i32 %15, i32 0)
  %17 = load i32, i32* @IGC_TCTL, align 4
  %18 = load i32, i32* @IGC_TCTL_PSP, align 4
  %19 = call i32 @wr32(i32 %17, i32 %18)
  %20 = call i32 (...) @wrfl()
  %21 = call i32 @usleep_range(i32 10000, i32 20000)
  %22 = load i32, i32* @IGC_CTRL, align 4
  %23 = call i32 @rd32(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = call i32 @hw_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @IGC_CTRL, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @IGC_CTRL_DEV_RST, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @wr32(i32 %25, i32 %28)
  %30 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %31 = call i64 @igc_get_auto_rd_done(%struct.igc_hw* %30)
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %11
  %35 = call i32 @hw_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %11
  %37 = load i32, i32* @IGC_IMC, align 4
  %38 = call i32 @wr32(i32 %37, i32 -1)
  %39 = load i32, i32* @IGC_ICR, align 4
  %40 = call i32 @rd32(i32 %39)
  %41 = load i64, i64* %3, align 8
  ret i64 %41
}

declare dso_local i64 @igc_disable_pcie_master(%struct.igc_hw*) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @wrfl(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i64 @igc_get_auto_rd_done(%struct.igc_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
