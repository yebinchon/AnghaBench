; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_pci_func.c_aq_pci_func_alloc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_pci_func.c_aq_pci_func_alloc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_nic_s = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i64, i64 }

@aq_vec_isr_legacy = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aq_pci_func_alloc_irq(%struct.aq_nic_s* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca %struct.aq_nic_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.pci_dev*, align 8
  %14 = alloca i32, align 4
  store %struct.aq_nic_s* %0, %struct.aq_nic_s** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %16 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %15, i32 0, i32 1
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %13, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %6
  %23 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22, %6
  %28 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @pci_irq_vector(%struct.pci_dev* %28, i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 @request_irq(i32 %30, i32 %31, i32 0, i8* %32, i8* %33)
  store i32 %34, i32* %14, align 4
  br label %44

35:                                               ; preds = %22
  %36 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @pci_irq_vector(%struct.pci_dev* %36, i32 %37)
  %39 = load i32, i32* @aq_vec_isr_legacy, align 4
  %40 = load i32, i32* @IRQF_SHARED, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @request_irq(i32 %38, i32 %39, i32 %40, i8* %41, i8* %42)
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %35, %27
  %45 = load i32, i32* %14, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 1, %48
  %50 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %51 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %47
  %59 = load i32*, i32** %12, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @pci_irq_vector(%struct.pci_dev* %62, i32 %63)
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @irq_set_affinity_hint(i32 %64, i32* %65)
  br label %67

67:                                               ; preds = %61, %58, %47
  br label %68

68:                                               ; preds = %67, %44
  %69 = load i32, i32* %14, align 4
  ret i32 %69
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
