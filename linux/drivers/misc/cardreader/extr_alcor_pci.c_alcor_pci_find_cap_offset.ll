; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_alcor_pci.c_alcor_pci_find_cap_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_alcor_pci.c_alcor_pci_find_cap_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alcor_pci_priv = type { i32 }
%struct.pci_dev = type { i32 }

@ALCOR_CAP_START_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"find_cap_offset invalid value %x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"pcie cap offset: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"pci_find_cap_offset invalid value %x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alcor_pci_priv*, %struct.pci_dev*)* @alcor_pci_find_cap_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alcor_pci_find_cap_offset(%struct.alcor_pci_priv* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.alcor_pci_priv*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.alcor_pci_priv* %0, %struct.alcor_pci_priv** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %9 = load i32, i32* @ALCOR_CAP_START_OFFSET, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @pci_read_config_byte(%struct.pci_dev* %10, i32 %11, i64* %7)
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

16:                                               ; preds = %2
  %17 = load i64, i64* %7, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %16, %52
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @pci_read_config_dword(%struct.pci_dev* %20, i32 %21, i32* %8)
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %4, align 8
  %27 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* %3, align 4
  br label %57

31:                                               ; preds = %19
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 255
  %34 = icmp eq i32 %33, 16
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %4, align 8
  %37 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %57

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 65280
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %4, align 8
  %48 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @dev_dbg(i32 %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %56

52:                                               ; preds = %42
  %53 = load i32, i32* %8, align 4
  %54 = ashr i32 %53, 8
  %55 = and i32 %54, 255
  store i32 %55, i32* %6, align 4
  br label %19

56:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %35, %25, %15
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
