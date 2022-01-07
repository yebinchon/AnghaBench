; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_pci_func.c_aq_pci_func_free_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_pci_func.c_aq_pci_func_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_nic_s = type { i32, i8**, %struct.TYPE_2__, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i64 }

@AQ_CFG_VECS_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aq_pci_func_free_irqs(%struct.aq_nic_s* %0) #0 {
  %2 = alloca %struct.aq_nic_s*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.aq_nic_s* %0, %struct.aq_nic_s** %2, align 8
  %6 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %7 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %6, i32 0, i32 3
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %3, align 8
  store i32 32, i32* %4, align 4
  br label %9

9:                                                ; preds = %62, %50, %21, %1
  %10 = load i32, i32* %4, align 4
  %11 = add i32 %10, -1
  store i32 %11, i32* %4, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %75

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = shl i32 1, %14
  %16 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %17 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  br label %9

22:                                               ; preds = %13
  %23 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %24 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %31 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %29, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %37 = bitcast %struct.aq_nic_s* %36 to i8*
  store i8* %37, i8** %5, align 8
  br label %52

38:                                               ; preds = %28, %22
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @AQ_CFG_VECS_MAX, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %44 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %43, i32 0, i32 1
  %45 = load i8**, i8*** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %5, align 8
  br label %51

50:                                               ; preds = %38
  br label %9

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %35
  %53 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @pci_irq_vector(%struct.pci_dev* %58, i32 %59)
  %61 = call i32 @irq_set_affinity_hint(i32 %60, i32* null)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @pci_irq_vector(%struct.pci_dev* %63, i32 %64)
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @free_irq(i32 %65, i8* %66)
  %68 = load i32, i32* %4, align 4
  %69 = shl i32 1, %68
  %70 = xor i32 %69, -1
  %71 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %72 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %9

75:                                               ; preds = %9
  ret void
}

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @free_irq(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
