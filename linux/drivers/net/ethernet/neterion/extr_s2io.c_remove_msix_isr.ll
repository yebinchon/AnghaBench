; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_remove_msix_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_remove_msix_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i8* }

@MSIX_REGISTERED_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s2io_nic*)* @remove_msix_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_msix_isr(%struct.s2io_nic* %0) #0 {
  %2 = alloca %struct.s2io_nic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.s2io_nic* %0, %struct.s2io_nic** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %45, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %10 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %7
  %14 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %15 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MSIX_REGISTERED_SUCCESS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %13
  %25 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %26 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %5, align 4
  %33 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %34 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %6, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @free_irq(i32 %41, i8* %42)
  br label %44

44:                                               ; preds = %24, %13
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %7

48:                                               ; preds = %7
  %49 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %50 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = call i32 @kfree(%struct.TYPE_2__* %51)
  %53 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %54 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = call i32 @kfree(%struct.TYPE_2__* %55)
  %57 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %58 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %57, i32 0, i32 3
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %58, align 8
  %59 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %60 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %59, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %60, align 8
  %61 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %62 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pci_read_config_word(i32 %63, i32 66, i32* %4)
  %65 = load i32, i32* %4, align 4
  %66 = and i32 %65, 65534
  store i32 %66, i32* %4, align 4
  %67 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %68 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @pci_write_config_word(i32 %69, i32 66, i32 %70)
  %72 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %73 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @pci_disable_msix(i32 %74)
  ret void
}

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @pci_disable_msix(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
