; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_register_misc_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_register_misc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32*, i32*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@NICVF_INTR_ID_MISC = common dso_local global i32 0, align 4
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Req for #%d msix vectors failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s Mbox\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"NICVF\00", align 1
@nicvf_misc_intr_handler = common dso_local global i32 0, align 4
@NICVF_INTR_MBOX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicvf*)* @nicvf_register_misc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_register_misc_interrupt(%struct.nicvf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @NICVF_INTR_ID_MISC, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %8 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %90

14:                                               ; preds = %1
  %15 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %16 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call i32 @pci_msix_vec_count(%struct.TYPE_4__* %17)
  %19 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %20 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %22 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %25 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %28 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %31 = call i32 @pci_alloc_irq_vectors(%struct.TYPE_4__* %23, i32 %26, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %14
  %35 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %36 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %39 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @netdev_err(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 1, i32* %2, align 4
  br label %90

42:                                               ; preds = %14
  %43 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %44 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sprintf(i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %52 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @pci_irq_vector(%struct.TYPE_4__* %53, i32 %54)
  %56 = load i32, i32* @nicvf_misc_intr_handler, align 4
  %57 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %58 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %65 = call i32 @request_irq(i32 %55, i32 %56, i32 0, i32 %63, %struct.nicvf* %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %42
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %90

70:                                               ; preds = %42
  %71 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %72 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 1, i32* %76, align 4
  %77 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %78 = load i32, i32* @NICVF_INTR_MBOX, align 4
  %79 = call i32 @nicvf_enable_intr(%struct.nicvf* %77, i32 %78, i32 0)
  %80 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %81 = call i32 @nicvf_check_pf_ready(%struct.nicvf* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %70
  %84 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %85 = load i32, i32* @NICVF_INTR_MBOX, align 4
  %86 = call i32 @nicvf_disable_intr(%struct.nicvf* %84, i32 %85, i32 0)
  %87 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %88 = call i32 @nicvf_unregister_interrupts(%struct.nicvf* %87)
  store i32 1, i32* %2, align 4
  br label %90

89:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %83, %68, %34, %13
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @pci_msix_vec_count(%struct.TYPE_4__*) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.nicvf*) #1

declare dso_local i32 @pci_irq_vector(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @nicvf_enable_intr(%struct.nicvf*, i32, i32) #1

declare dso_local i32 @nicvf_check_pf_ready(%struct.nicvf*) #1

declare dso_local i32 @nicvf_disable_intr(%struct.nicvf*, i32, i32) #1

declare dso_local i32 @nicvf_unregister_interrupts(%struct.nicvf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
