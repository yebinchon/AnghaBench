; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_read_pasid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_read_pasid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ocxl_fn_config = type { i32 }

@PCI_EXT_CAP_ID_PASID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Function doesn't require any PASID\0A\00", align 1
@PCI_PASID_CAP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"PASID capability:\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"  Max PASID log = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.ocxl_fn_config*)* @read_pasid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_pasid(%struct.pci_dev* %0, %struct.ocxl_fn_config* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.ocxl_fn_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.ocxl_fn_config* %1, %struct.ocxl_fn_config** %4, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = load i32, i32* @PCI_EXT_CAP_ID_PASID, align 4
  %9 = call i32 @pci_find_ext_capability(%struct.pci_dev* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %4, align 8
  %17 = getelementptr inbounds %struct.ocxl_fn_config, %struct.ocxl_fn_config* %16, i32 0, i32 0
  store i32 -1, i32* %17, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @PCI_PASID_CAP, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @pci_read_config_word(%struct.pci_dev* %19, i64 %23, i32* %5)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @EXTRACT_BITS(i32 %25, i32 8, i32 12)
  %27 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %4, align 8
  %28 = getelementptr inbounds %struct.ocxl_fn_config, %struct.ocxl_fn_config* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %18, %12
  %30 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %4, align 8
  %36 = getelementptr inbounds %struct.ocxl_fn_config, %struct.ocxl_fn_config* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  ret void
}

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @EXTRACT_BITS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
