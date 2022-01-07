; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_disable_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_disable_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32, i32, %struct.TYPE_2__**, %struct.TYPE_2__**, %struct.net_device* }
%struct.TYPE_2__ = type { i64 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Disabling tx_scrq[%d] irq\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Disabling rx_scrq[%d] irq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvnic_adapter*)* @ibmvnic_disable_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvnic_disable_irqs(%struct.ibmvnic_adapter* %0) #0 {
  %2 = alloca %struct.ibmvnic_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %2, align 8
  %5 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %5, i32 0, i32 4
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %9, align 8
  %11 = icmp ne %struct.TYPE_2__** %10, null
  br i1 %11, label %12, label %58

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %54, %12
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %57

19:                                               ; preds = %13
  %20 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %19
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @netdev_dbg(%struct.net_device* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %35 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = call i32 @disable_scrq_irq(%struct.ibmvnic_adapter* %34, %struct.TYPE_2__* %41)
  %43 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %45, i64 %47
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @disable_irq(i64 %51)
  br label %53

53:                                               ; preds = %30, %19
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %13

57:                                               ; preds = %13
  br label %58

58:                                               ; preds = %57, %1
  %59 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %60, align 8
  %62 = icmp ne %struct.TYPE_2__** %61, null
  br i1 %62, label %63, label %109

63:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %105, %63
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %67 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %108

70:                                               ; preds = %64
  %71 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %72 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %73, i64 %75
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %70
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @netdev_dbg(%struct.net_device* %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %86 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %87 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %88, i64 %90
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = call i32 @disable_scrq_irq(%struct.ibmvnic_adapter* %85, %struct.TYPE_2__* %92)
  %94 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %95 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %96, i64 %98
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @disable_irq(i64 %102)
  br label %104

104:                                              ; preds = %81, %70
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %64

108:                                              ; preds = %64
  br label %109

109:                                              ; preds = %108, %58
  ret void
}

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @disable_scrq_irq(%struct.ibmvnic_adapter*, %struct.TYPE_2__*) #1

declare dso_local i32 @disable_irq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
