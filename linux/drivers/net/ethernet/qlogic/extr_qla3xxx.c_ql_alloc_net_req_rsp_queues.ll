; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_alloc_net_req_rsp_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_alloc_net_req_rsp_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32* }

@NUM_REQ_Q_ENTRIES = common dso_local global i32 0, align 4
@NUM_RSP_Q_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"reqQ failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"rspQ allocation failed\0A\00", align 1
@QL_ALLOC_REQ_RSP_Q_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql3_adapter*)* @ql_alloc_net_req_rsp_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_alloc_net_req_rsp_queues(%struct.ql3_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql3_adapter*, align 8
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %3, align 8
  %4 = load i32, i32* @NUM_REQ_Q_ENTRIES, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 4
  %7 = trunc i64 %6 to i32
  %8 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* @NUM_RSP_Q_ENTRIES, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = call i32 (...) @wmb()
  %17 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %24, i32 0, i32 3
  %26 = call i8* @pci_alloc_consistent(i32 %19, i64 %23, i32* %25)
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %28, i32 0, i32 4
  store i32* %27, i32** %29, align 8
  %30 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %1
  %35 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @LS_64BITS(i32 %37)
  %39 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %38, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %34, %1
  %46 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @netdev_err(i32 %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %107

52:                                               ; preds = %34
  %53 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %60, i32 0, i32 7
  %62 = call i8* @pci_alloc_consistent(i32 %55, i64 %59, i32* %61)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %64, i32 0, i32 8
  store i32* %63, i32** %65, align 8
  %66 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %66, i32 0, i32 8
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %81, label %70

70:                                               ; preds = %52
  %71 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @LS_64BITS(i32 %73)
  %75 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, 1
  %79 = and i32 %74, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %70, %52
  %82 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @netdev_err(i32 %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %87 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pci_free_consistent(i32 %88, i64 %92, i32* %95, i32 %98)
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %107

102:                                              ; preds = %70
  %103 = load i32, i32* @QL_ALLOC_REQ_RSP_Q_DONE, align 4
  %104 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %105 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %104, i32 0, i32 2
  %106 = call i32 @set_bit(i32 %103, i32* %105)
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %102, %81, %45
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @wmb(...) #1

declare dso_local i8* @pci_alloc_consistent(i32, i64, i32*) #1

declare dso_local i32 @LS_64BITS(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @pci_free_consistent(i32, i64, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
