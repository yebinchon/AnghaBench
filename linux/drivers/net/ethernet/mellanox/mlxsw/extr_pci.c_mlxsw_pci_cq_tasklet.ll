; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_cq_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_cq_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci_queue = type { i32, %struct.TYPE_4__, i32, %struct.mlxsw_pci* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.mlxsw_pci = type { i32 }

@MLXSW_PCI_CQE_SIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @mlxsw_pci_cq_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_pci_cq_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mlxsw_pci_queue*, align 8
  %4 = alloca %struct.mlxsw_pci*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mlxsw_pci_queue*, align 8
  %14 = alloca %struct.mlxsw_pci_queue*, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %16 = load i64, i64* %2, align 8
  %17 = inttoptr i64 %16 to %struct.mlxsw_pci_queue*
  store %struct.mlxsw_pci_queue* %17, %struct.mlxsw_pci_queue** %3, align 8
  %18 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %3, align 8
  %19 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %18, i32 0, i32 3
  %20 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %19, align 8
  store %struct.mlxsw_pci* %20, %struct.mlxsw_pci** %4, align 8
  store i32 0, i32* %6, align 4
  %21 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %3, align 8
  %22 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = ashr i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %103, %1
  %26 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %3, align 8
  %27 = call i8* @mlxsw_pci_cq_sw_cqe_get(%struct.mlxsw_pci_queue* %26)
  store i8* %27, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %104

29:                                               ; preds = %25
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @mlxsw_pci_cqe_wqe_counter_get(i8* %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %3, align 8
  %33 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @mlxsw_pci_cqe_sr_get(i32 %36, i8* %37)
  store i64 %38, i64* %9, align 8
  %39 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %3, align 8
  %40 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = call i64 @mlxsw_pci_cqe_dqn_get(i32 %43, i8* %44)
  store i64 %45, i64* %10, align 8
  %46 = load i32, i32* @MLXSW_PCI_CQE_SIZE_MAX, align 4
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %11, align 8
  %49 = alloca i8, i64 %47, align 16
  store i64 %47, i64* %12, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %3, align 8
  %52 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @memcpy(i8* %49, i8* %50, i32 %53)
  %55 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %4, align 8
  %56 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %3, align 8
  %57 = call i32 @mlxsw_pci_queue_doorbell_consumer_ring(%struct.mlxsw_pci* %55, %struct.mlxsw_pci_queue* %56)
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %29
  %61 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %4, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call %struct.mlxsw_pci_queue* @mlxsw_pci_sdq_get(%struct.mlxsw_pci* %61, i64 %62)
  store %struct.mlxsw_pci_queue* %63, %struct.mlxsw_pci_queue** %13, align 8
  %64 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %4, align 8
  %65 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %13, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @mlxsw_pci_cqe_sdq_handle(%struct.mlxsw_pci* %64, %struct.mlxsw_pci_queue* %65, i32 %66, i8* %49)
  %68 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %3, align 8
  %69 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %93

74:                                               ; preds = %29
  %75 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %4, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call %struct.mlxsw_pci_queue* @mlxsw_pci_rdq_get(%struct.mlxsw_pci* %75, i64 %76)
  store %struct.mlxsw_pci_queue* %77, %struct.mlxsw_pci_queue** %14, align 8
  %78 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %4, align 8
  %79 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %14, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %3, align 8
  %82 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @mlxsw_pci_cqe_rdq_handle(%struct.mlxsw_pci* %78, %struct.mlxsw_pci_queue* %79, i32 %80, i32 %85, i8* %49)
  %87 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %3, align 8
  %88 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %74, %60
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i32 3, i32* %15, align 4
  br label %100

99:                                               ; preds = %93
  store i32 0, i32* %15, align 4
  br label %100

100:                                              ; preds = %99, %98
  %101 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %15, align 4
  switch i32 %102, label %112 [
    i32 0, label %103
    i32 3, label %104
  ]

103:                                              ; preds = %100
  br label %25

104:                                              ; preds = %100, %25
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %4, align 8
  %109 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %3, align 8
  %110 = call i32 @mlxsw_pci_queue_doorbell_arm_consumer_ring(%struct.mlxsw_pci* %108, %struct.mlxsw_pci_queue* %109)
  br label %111

111:                                              ; preds = %107, %104
  ret void

112:                                              ; preds = %100
  unreachable
}

declare dso_local i8* @mlxsw_pci_cq_sw_cqe_get(%struct.mlxsw_pci_queue*) #1

declare dso_local i32 @mlxsw_pci_cqe_wqe_counter_get(i8*) #1

declare dso_local i64 @mlxsw_pci_cqe_sr_get(i32, i8*) #1

declare dso_local i64 @mlxsw_pci_cqe_dqn_get(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mlxsw_pci_queue_doorbell_consumer_ring(%struct.mlxsw_pci*, %struct.mlxsw_pci_queue*) #1

declare dso_local %struct.mlxsw_pci_queue* @mlxsw_pci_sdq_get(%struct.mlxsw_pci*, i64) #1

declare dso_local i32 @mlxsw_pci_cqe_sdq_handle(%struct.mlxsw_pci*, %struct.mlxsw_pci_queue*, i32, i8*) #1

declare dso_local %struct.mlxsw_pci_queue* @mlxsw_pci_rdq_get(%struct.mlxsw_pci*, i64) #1

declare dso_local i32 @mlxsw_pci_cqe_rdq_handle(%struct.mlxsw_pci*, %struct.mlxsw_pci_queue*, i32, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @mlxsw_pci_queue_doorbell_arm_consumer_ring(%struct.mlxsw_pci*, %struct.mlxsw_pci_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
