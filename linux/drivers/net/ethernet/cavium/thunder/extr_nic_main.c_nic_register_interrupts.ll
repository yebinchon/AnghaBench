; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_register_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_register_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32, i32*, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32 }

@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Request for #%d msix vectors failed, returned %d\0A\00", align 1
@NIC_PF_INTR_ID_MBOX0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"NICPF Mbox%d\00", align 1
@nic_mbx_intr_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Request irq failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicpf*)* @nic_register_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nic_register_interrupts(%struct.nicpf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nicpf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nicpf* %0, %struct.nicpf** %3, align 8
  %6 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %7 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %6, i32 0, i32 2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = call i32 @pci_msix_vec_count(%struct.TYPE_5__* %8)
  %10 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %11 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %13 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %16 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %19 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %22 = call i32 @pci_alloc_irq_vectors(%struct.TYPE_5__* %14, i32 %17, i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %1
  %26 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %27 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %31 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (i32*, i8*, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  store i32 1, i32* %2, align 4
  br label %101

35:                                               ; preds = %1
  %36 = load i32, i32* @NIC_PF_INTR_ID_MBOX0, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %80, %35
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %40 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %83

43:                                               ; preds = %37
  %44 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %45 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @NIC_PF_INTR_ID_MBOX0, align 4
  %53 = sub nsw i32 %51, %52
  %54 = call i32 @sprintf(i32 %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %56 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @pci_irq_vector(%struct.TYPE_5__* %57, i32 %58)
  %60 = load i32, i32* @nic_mbx_intr_handler, align 4
  %61 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %62 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %69 = call i32 @request_irq(i32 %59, i32 %60, i32 0, i32 %67, %struct.nicpf* %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %43
  br label %86

73:                                               ; preds = %43
  %74 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %75 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %37

83:                                               ; preds = %37
  %84 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %85 = call i32 @nic_enable_mbx_intr(%struct.nicpf* %84)
  store i32 0, i32* %2, align 4
  br label %101

86:                                               ; preds = %72
  %87 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %88 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %87, i32 0, i32 2
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = call i32 (i32*, i8*, ...) @dev_err(i32* %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %92 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %93 = call i32 @nic_free_all_interrupts(%struct.nicpf* %92)
  %94 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %95 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %94, i32 0, i32 2
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = call i32 @pci_free_irq_vectors(%struct.TYPE_5__* %96)
  %98 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %99 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %86, %83, %25
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @pci_msix_vec_count(%struct.TYPE_5__*) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.nicpf*) #1

declare dso_local i32 @pci_irq_vector(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @nic_enable_mbx_intr(%struct.nicpf*) #1

declare dso_local i32 @nic_free_all_interrupts(%struct.nicpf*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
