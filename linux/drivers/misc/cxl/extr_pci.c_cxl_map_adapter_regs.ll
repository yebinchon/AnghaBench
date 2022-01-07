; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_map_adapter_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_map_adapter_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i8* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"priv 2 regs\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"priv 1 regs\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"cxl_map_adapter_regs: p1: %#016llx %#llx, p2: %#016llx %#llx\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl*, %struct.pci_dev*)* @cxl_map_adapter_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxl_map_adapter_regs(%struct.cxl* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxl*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.cxl* %0, %struct.cxl** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %7 = call i64 @pci_request_region(%struct.pci_dev* %6, i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %67

10:                                               ; preds = %2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %12 = call i64 @pci_request_region(%struct.pci_dev* %11, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %64

15:                                               ; preds = %10
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = call i32 @p1_base(%struct.pci_dev* %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = call i32 @p1_size(%struct.pci_dev* %18)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = call i32 @p2_base(%struct.pci_dev* %20)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = call i32 @p2_size(%struct.pci_dev* %22)
  %24 = call i32 @pr_devel(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32 %19, i32 %21, i32 %23)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = call i32 @p1_base(%struct.pci_dev* %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = call i32 @p1_size(%struct.pci_dev* %27)
  %29 = call i8* @ioremap(i32 %26, i32 %28)
  %30 = bitcast i8* %29 to i32*
  %31 = load %struct.cxl*, %struct.cxl** %4, align 8
  %32 = getelementptr inbounds %struct.cxl, %struct.cxl* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32* %30, i32** %34, align 8
  %35 = icmp ne i32* %30, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %15
  br label %61

37:                                               ; preds = %15
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = call i32 @p2_base(%struct.pci_dev* %38)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %41 = call i32 @p2_size(%struct.pci_dev* %40)
  %42 = call i8* @ioremap(i32 %39, i32 %41)
  %43 = load %struct.cxl*, %struct.cxl** %4, align 8
  %44 = getelementptr inbounds %struct.cxl, %struct.cxl* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i8* %42, i8** %46, align 8
  %47 = icmp ne i8* %42, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %37
  br label %50

49:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %70

50:                                               ; preds = %48
  %51 = load %struct.cxl*, %struct.cxl** %4, align 8
  %52 = getelementptr inbounds %struct.cxl, %struct.cxl* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @iounmap(i32* %55)
  %57 = load %struct.cxl*, %struct.cxl** %4, align 8
  %58 = getelementptr inbounds %struct.cxl, %struct.cxl* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %50, %36
  %62 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %63 = call i32 @pci_release_region(%struct.pci_dev* %62, i32 0)
  br label %64

64:                                               ; preds = %61, %14
  %65 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %66 = call i32 @pci_release_region(%struct.pci_dev* %65, i32 2)
  br label %67

67:                                               ; preds = %64, %9
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %49
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @pci_request_region(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pr_devel(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @p1_base(%struct.pci_dev*) #1

declare dso_local i32 @p1_size(%struct.pci_dev*) #1

declare dso_local i32 @p2_base(%struct.pci_dev*) #1

declare dso_local i32 @p2_size(%struct.pci_dev*) #1

declare dso_local i8* @ioremap(i32, i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
