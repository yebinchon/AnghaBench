; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_read_template_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_read_template_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ocxl_fn_config = type { i32 }

@OCXL_DVSEC_TEMPL_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.ocxl_fn_config*, i32*, i32*)* @read_template_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_template_version(%struct.pci_dev* %0, %struct.ocxl_fn_config* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.ocxl_fn_config*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store %struct.ocxl_fn_config* %1, %struct.ocxl_fn_config** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %15 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %7, align 8
  %16 = load i32, i32* @OCXL_DVSEC_TEMPL_VERSION, align 4
  %17 = call i32 @read_afu_info(%struct.pci_dev* %14, %struct.ocxl_fn_config* %15, i32 %16, i32* %10)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %5, align 4
  br label %38

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = call i8* @EXTRACT_BITS(i32 %23, i32 16, i32 31)
  %25 = ptrtoint i8* %24 to i32
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i8* @EXTRACT_BITS(i32 %27, i32 8, i32 15)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i8* @EXTRACT_BITS(i32 %30, i32 0, i32 7)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %11, align 4
  %34 = shl i32 %33, 8
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %22, %20
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @read_afu_info(%struct.pci_dev*, %struct.ocxl_fn_config*, i32, i32*) #1

declare dso_local i8* @EXTRACT_BITS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
