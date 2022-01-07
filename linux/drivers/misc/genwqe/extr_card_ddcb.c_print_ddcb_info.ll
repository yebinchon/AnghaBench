; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_ddcb.c_print_ddcb_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_ddcb.c_print_ddcb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.ddcb_queue = type { i32, i32, %struct.ddcb*, i32 }
%struct.ddcb = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"DDCB list for card #%d (ddcb_act=%d / ddcb_next=%d):\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"  %c %-3d: RETC=%03x SEQ=%04x HSI=%02X SHI=%02x PRIV=%06llx CMD=%03x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.genwqe_dev*, %struct.ddcb_queue*)* @print_ddcb_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ddcb_info(%struct.genwqe_dev* %0, %struct.ddcb_queue* %1) #0 {
  %3 = alloca %struct.genwqe_dev*, align 8
  %4 = alloca %struct.ddcb_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ddcb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pci_dev*, align 8
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %3, align 8
  store %struct.ddcb_queue* %1, %struct.ddcb_queue** %4, align 8
  %9 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %10 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %9, i32 0, i32 2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %8, align 8
  %12 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %13 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %19 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ddcb_queue*, %struct.ddcb_queue** %4, align 8
  %22 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ddcb_queue*, %struct.ddcb_queue** %4, align 8
  %25 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_info(i32* %17, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26)
  %28 = load %struct.ddcb_queue*, %struct.ddcb_queue** %4, align 8
  %29 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %28, i32 0, i32 2
  %30 = load %struct.ddcb*, %struct.ddcb** %29, align 8
  store %struct.ddcb* %30, %struct.ddcb** %6, align 8
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %73, %2
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.ddcb_queue*, %struct.ddcb_queue** %4, align 8
  %34 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %76

37:                                               ; preds = %31
  %38 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.ddcb_queue*, %struct.ddcb_queue** %4, align 8
  %42 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %40, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 62, i32 32
  %47 = trunc i32 %46 to i8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.ddcb*, %struct.ddcb** %6, align 8
  %50 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @be16_to_cpu(i32 %51)
  %53 = load %struct.ddcb*, %struct.ddcb** %6, align 8
  %54 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be16_to_cpu(i32 %55)
  %57 = load %struct.ddcb*, %struct.ddcb** %6, align 8
  %58 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ddcb*, %struct.ddcb** %6, align 8
  %61 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ddcb*, %struct.ddcb** %6, align 8
  %64 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @be64_to_cpu(i32 %65)
  %67 = load %struct.ddcb*, %struct.ddcb** %6, align 8
  %68 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i8 signext %47, i32 %48, i32 %52, i32 %56, i32 %59, i32 %62, i32 %66, i32 %69)
  %71 = load %struct.ddcb*, %struct.ddcb** %6, align 8
  %72 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %71, i32 1
  store %struct.ddcb* %72, %struct.ddcb** %6, align 8
  br label %73

73:                                               ; preds = %37
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %31

76:                                               ; preds = %31
  %77 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %78 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %77, i32 0, i32 0
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8 signext, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
