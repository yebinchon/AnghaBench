; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_get_opt_fw_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_get_opt_fw_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_EXT_CAP_ID_DSN = common dso_local global i32 0, align 4
@NAME_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%sice-%02x%02x%02x%02x%02x%02x%02x%02x.pkg\00", align 1
@ICE_DDP_PKG_PATH = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ice_pf*)* @ice_get_opt_fw_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ice_get_opt_fw_name(%struct.ice_pf* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ice_pf*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.ice_pf* %0, %struct.ice_pf** %3, align 8
  %9 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %10 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  store i8* null, i8** %5, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = load i32, i32* @PCI_EXT_CAP_ID_DSN, align 4
  %14 = call i32 @pci_find_ext_capability(%struct.pci_dev* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %59

17:                                               ; preds = %1
  %18 = load i32, i32* @NAME_MAX, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kzalloc(i32 %18, i32 %19)
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i8* null, i8** %2, align 8
  br label %61

24:                                               ; preds = %17
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 4
  %28 = call i32 @pci_read_config_dword(%struct.pci_dev* %25, i32 %27, i32* %6)
  %29 = load i32, i32* %6, align 4
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %31 = call i32 @put_unaligned_le32(i32 %29, i32* %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 8
  %35 = call i32 @pci_read_config_dword(%struct.pci_dev* %32, i32 %34, i32* %6)
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 4
  %38 = call i32 @put_unaligned_le32(i32 %36, i32* %37)
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* @NAME_MAX, align 4
  %41 = load i8*, i8** @ICE_DDP_PKG_PATH, align 8
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 7
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 6
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 5
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 4
  %49 = load i32, i32* %48, align 16
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 2
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %57 = load i32, i32* %56, align 16
  %58 = call i32 @snprintf(i8* %39, i32 %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %43, i32 %45, i32 %47, i32 %49, i32 %51, i32 %53, i32 %55, i32 %57)
  br label %59

59:                                               ; preds = %24, %1
  %60 = load i8*, i8** %5, align 8
  store i8* %60, i8** %2, align 8
  br label %61

61:                                               ; preds = %59, %23
  %62 = load i8*, i8** %2, align 8
  ret i8* %62
}

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
