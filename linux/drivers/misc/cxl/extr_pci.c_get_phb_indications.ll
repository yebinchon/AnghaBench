; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_get_phb_indications.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_get_phb_indications.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.device_node = type { i32 }

@get_phb_indications.nbw = internal global i32 0, align 4
@get_phb_indications.asn = internal global i32 0, align 4
@get_phb_indications.capi = internal global i32 0, align 4
@indications_mutex = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"ibm,phb-indications\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32*, i32*, i32*)* @get_phb_indications to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_phb_indications(%struct.pci_dev* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca i32*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = call i32 @mutex_lock(i32* @indications_mutex)
  %13 = load i32, i32* @get_phb_indications.capi, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %48, label %15

15:                                               ; preds = %4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %17 = call %struct.device_node* @pnv_pci_get_phb_node(%struct.pci_dev* %16)
  store %struct.device_node* %17, %struct.device_node** %10, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = call i32 @mutex_unlock(i32* @indications_mutex)
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %56

23:                                               ; preds = %15
  %24 = load %struct.device_node*, %struct.device_node** %10, align 8
  %25 = call i32* @of_get_property(%struct.device_node* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %25, i32** %11, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 768, i32* @get_phb_indications.nbw, align 4
  store i32 1024, i32* @get_phb_indications.asn, align 4
  store i32 512, i32* @get_phb_indications.capi, align 4
  br label %45

29:                                               ; preds = %23
  %30 = load i32*, i32** %11, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @be32_to_cpu(i32 %32)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* @get_phb_indications.nbw, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @be32_to_cpu(i32 %37)
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* @get_phb_indications.asn, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @be32_to_cpu(i32 %42)
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* @get_phb_indications.capi, align 4
  br label %45

45:                                               ; preds = %29, %28
  %46 = load %struct.device_node*, %struct.device_node** %10, align 8
  %47 = call i32 @of_node_put(%struct.device_node* %46)
  br label %48

48:                                               ; preds = %45, %4
  %49 = load i32, i32* @get_phb_indications.capi, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @get_phb_indications.asn, align 4
  %52 = load i32*, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @get_phb_indications.nbw, align 4
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  %55 = call i32 @mutex_unlock(i32* @indications_mutex)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %48, %19
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.device_node* @pnv_pci_get_phb_node(%struct.pci_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
