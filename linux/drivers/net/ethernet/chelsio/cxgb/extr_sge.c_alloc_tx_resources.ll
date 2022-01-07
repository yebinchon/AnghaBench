; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_alloc_tx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_alloc_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { %struct.TYPE_4__*, %struct.cmdQ* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.pci_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.cmdQ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.sge_params = type { i32* }

@SGE_CMDQ_N = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sge*, %struct.sge_params*)* @alloc_tx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_tx_resources(%struct.sge* %0, %struct.sge_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sge*, align 8
  %5 = alloca %struct.sge_params*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cmdQ*, align 8
  store %struct.sge* %0, %struct.sge** %4, align 8
  store %struct.sge_params* %1, %struct.sge_params** %5, align 8
  %10 = load %struct.sge*, %struct.sge** %4, align 8
  %11 = getelementptr inbounds %struct.sge, %struct.sge* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %6, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %88, %2
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @SGE_CMDQ_N, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %91

19:                                               ; preds = %15
  %20 = load %struct.sge*, %struct.sge** %4, align 8
  %21 = getelementptr inbounds %struct.sge, %struct.sge* %20, i32 0, i32 1
  %22 = load %struct.cmdQ*, %struct.cmdQ** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %22, i64 %24
  store %struct.cmdQ* %25, %struct.cmdQ** %9, align 8
  %26 = load %struct.cmdQ*, %struct.cmdQ** %9, align 8
  %27 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.cmdQ*, %struct.cmdQ** %9, align 8
  %29 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.sge_params*, %struct.sge_params** %5, align 8
  %31 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cmdQ*, %struct.cmdQ** %9, align 8
  %38 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.cmdQ*, %struct.cmdQ** %9, align 8
  %40 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %39, i32 0, i32 11
  store i64 0, i64* %40, align 8
  %41 = load %struct.cmdQ*, %struct.cmdQ** %9, align 8
  %42 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %41, i32 0, i32 10
  store i64 0, i64* %42, align 8
  %43 = load %struct.cmdQ*, %struct.cmdQ** %9, align 8
  %44 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %43, i32 0, i32 8
  store i64 0, i64* %44, align 8
  %45 = load %struct.cmdQ*, %struct.cmdQ** %9, align 8
  %46 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %45, i32 0, i32 9
  store i64 0, i64* %46, align 8
  %47 = load %struct.cmdQ*, %struct.cmdQ** %9, align 8
  %48 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %47, i32 0, i32 3
  store i32 0, i32* %48, align 4
  %49 = load %struct.cmdQ*, %struct.cmdQ** %9, align 8
  %50 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %49, i32 0, i32 7
  %51 = call i32 @spin_lock_init(i32* %50)
  %52 = load %struct.cmdQ*, %struct.cmdQ** %9, align 8
  %53 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = mul i64 4, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %7, align 4
  %58 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.cmdQ*, %struct.cmdQ** %9, align 8
  %61 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %60, i32 0, i32 6
  %62 = call i32 @pci_alloc_consistent(%struct.pci_dev* %58, i32 %59, i32* %61)
  %63 = load %struct.cmdQ*, %struct.cmdQ** %9, align 8
  %64 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.cmdQ*, %struct.cmdQ** %9, align 8
  %66 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %19
  br label %106

70:                                               ; preds = %19
  %71 = load %struct.cmdQ*, %struct.cmdQ** %9, align 8
  %72 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = mul i64 4, %74
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i32 @kzalloc(i32 %77, i32 %78)
  %80 = load %struct.cmdQ*, %struct.cmdQ** %9, align 8
  %81 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load %struct.cmdQ*, %struct.cmdQ** %9, align 8
  %83 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %70
  br label %106

87:                                               ; preds = %70
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %15

91:                                               ; preds = %15
  %92 = load %struct.sge*, %struct.sge** %4, align 8
  %93 = getelementptr inbounds %struct.sge, %struct.sge* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %99 = add nsw i32 %98, 1
  %100 = mul nsw i32 %97, %99
  %101 = load %struct.sge*, %struct.sge** %4, align 8
  %102 = getelementptr inbounds %struct.sge, %struct.sge* %101, i32 0, i32 1
  %103 = load %struct.cmdQ*, %struct.cmdQ** %102, align 8
  %104 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %103, i64 0
  %105 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %104, i32 0, i32 3
  store i32 %100, i32* %105, align 4
  store i32 0, i32* %3, align 4
  br label %111

106:                                              ; preds = %86, %69
  %107 = load %struct.sge*, %struct.sge** %4, align 8
  %108 = call i32 @free_tx_resources(%struct.sge* %107)
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %106, %91
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pci_alloc_consistent(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @free_tx_resources(%struct.sge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
