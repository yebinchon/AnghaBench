; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_free_tx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_free_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { %struct.cmdQ*, %struct.TYPE_2__* }
%struct.cmdQ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@SGE_CMDQ_N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge*)* @free_tx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_tx_resources(%struct.sge* %0) #0 {
  %2 = alloca %struct.sge*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmdQ*, align 8
  store %struct.sge* %0, %struct.sge** %2, align 8
  %7 = load %struct.sge*, %struct.sge** %2, align 8
  %8 = getelementptr inbounds %struct.sge, %struct.sge* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %3, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %66, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SGE_CMDQ_N, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %69

16:                                               ; preds = %12
  %17 = load %struct.sge*, %struct.sge** %2, align 8
  %18 = getelementptr inbounds %struct.sge, %struct.sge* %17, i32 0, i32 0
  %19 = load %struct.cmdQ*, %struct.cmdQ** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %19, i64 %21
  store %struct.cmdQ* %22, %struct.cmdQ** %6, align 8
  %23 = load %struct.cmdQ*, %struct.cmdQ** %6, align 8
  %24 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %16
  %28 = load %struct.cmdQ*, %struct.cmdQ** %6, align 8
  %29 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.sge*, %struct.sge** %2, align 8
  %34 = load %struct.cmdQ*, %struct.cmdQ** %6, align 8
  %35 = load %struct.cmdQ*, %struct.cmdQ** %6, align 8
  %36 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @free_cmdQ_buffers(%struct.sge* %33, %struct.cmdQ* %34, i64 %37)
  br label %39

39:                                               ; preds = %32, %27
  %40 = load %struct.cmdQ*, %struct.cmdQ** %6, align 8
  %41 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @kfree(i64 %42)
  br label %44

44:                                               ; preds = %39, %16
  %45 = load %struct.cmdQ*, %struct.cmdQ** %6, align 8
  %46 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load %struct.cmdQ*, %struct.cmdQ** %6, align 8
  %51 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %4, align 4
  %56 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.cmdQ*, %struct.cmdQ** %6, align 8
  %59 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.cmdQ*, %struct.cmdQ** %6, align 8
  %62 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pci_free_consistent(%struct.pci_dev* %56, i32 %57, i64 %60, i32 %63)
  br label %65

65:                                               ; preds = %49, %44
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %12

69:                                               ; preds = %12
  ret void
}

declare dso_local i32 @free_cmdQ_buffers(%struct.sge*, %struct.cmdQ*, i64) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
