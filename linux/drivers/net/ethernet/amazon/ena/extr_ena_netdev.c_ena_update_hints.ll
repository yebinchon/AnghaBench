; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_update_hints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_update_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i8*, i8*, i64, %struct.TYPE_6__*, %struct.net_device* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i8* }
%struct.ena_admin_ena_hw_hints = type { i32, i32, i64, i64, i64, i64 }

@ENA_HW_HINTS_NO_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*, %struct.ena_admin_ena_hw_hints*)* @ena_update_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_update_hints(%struct.ena_adapter* %0, %struct.ena_admin_ena_hw_hints* %1) #0 {
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca %struct.ena_admin_ena_hw_hints*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  store %struct.ena_admin_ena_hw_hints* %1, %struct.ena_admin_ena_hw_hints** %4, align 8
  %6 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %6, i32 0, i32 4
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %5, align 8
  %9 = load %struct.ena_admin_ena_hw_hints*, %struct.ena_admin_ena_hw_hints** %4, align 8
  %10 = getelementptr inbounds %struct.ena_admin_ena_hw_hints, %struct.ena_admin_ena_hw_hints* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.ena_admin_ena_hw_hints*, %struct.ena_admin_ena_hw_hints** %4, align 8
  %15 = getelementptr inbounds %struct.ena_admin_ena_hw_hints, %struct.ena_admin_ena_hw_hints* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 1000
  %18 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %18, i32 0, i32 3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %17, i32* %22, align 4
  br label %23

23:                                               ; preds = %13, %2
  %24 = load %struct.ena_admin_ena_hw_hints*, %struct.ena_admin_ena_hw_hints** %4, align 8
  %25 = getelementptr inbounds %struct.ena_admin_ena_hw_hints, %struct.ena_admin_ena_hw_hints* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.ena_admin_ena_hw_hints*, %struct.ena_admin_ena_hw_hints** %4, align 8
  %30 = getelementptr inbounds %struct.ena_admin_ena_hw_hints, %struct.ena_admin_ena_hw_hints* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 1000
  %33 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %33, i32 0, i32 3
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %32, i32* %37, align 4
  br label %38

38:                                               ; preds = %28, %23
  %39 = load %struct.ena_admin_ena_hw_hints*, %struct.ena_admin_ena_hw_hints** %4, align 8
  %40 = getelementptr inbounds %struct.ena_admin_ena_hw_hints, %struct.ena_admin_ena_hw_hints* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.ena_admin_ena_hw_hints*, %struct.ena_admin_ena_hw_hints** %4, align 8
  %45 = getelementptr inbounds %struct.ena_admin_ena_hw_hints, %struct.ena_admin_ena_hw_hints* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.ena_admin_ena_hw_hints*, %struct.ena_admin_ena_hw_hints** %4, align 8
  %51 = getelementptr inbounds %struct.ena_admin_ena_hw_hints, %struct.ena_admin_ena_hw_hints* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %49
  %55 = load %struct.ena_admin_ena_hw_hints*, %struct.ena_admin_ena_hw_hints** %4, align 8
  %56 = getelementptr inbounds %struct.ena_admin_ena_hw_hints, %struct.ena_admin_ena_hw_hints* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ENA_HW_HINTS_NO_TIMEOUT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i64, i64* @ENA_HW_HINTS_NO_TIMEOUT, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %64 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  br label %72

65:                                               ; preds = %54
  %66 = load %struct.ena_admin_ena_hw_hints*, %struct.ena_admin_ena_hw_hints** %4, align 8
  %67 = getelementptr inbounds %struct.ena_admin_ena_hw_hints, %struct.ena_admin_ena_hw_hints* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = call i8* @msecs_to_jiffies(i64 %68)
  %70 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %65, %60
  br label %73

73:                                               ; preds = %72, %49
  %74 = load %struct.ena_admin_ena_hw_hints*, %struct.ena_admin_ena_hw_hints** %4, align 8
  %75 = getelementptr inbounds %struct.ena_admin_ena_hw_hints, %struct.ena_admin_ena_hw_hints* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.ena_admin_ena_hw_hints*, %struct.ena_admin_ena_hw_hints** %4, align 8
  %80 = getelementptr inbounds %struct.ena_admin_ena_hw_hints, %struct.ena_admin_ena_hw_hints* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = call i8* @msecs_to_jiffies(i64 %81)
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %78, %73
  %86 = load %struct.ena_admin_ena_hw_hints*, %struct.ena_admin_ena_hw_hints** %4, align 8
  %87 = getelementptr inbounds %struct.ena_admin_ena_hw_hints, %struct.ena_admin_ena_hw_hints* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %85
  %91 = load %struct.ena_admin_ena_hw_hints*, %struct.ena_admin_ena_hw_hints** %4, align 8
  %92 = getelementptr inbounds %struct.ena_admin_ena_hw_hints, %struct.ena_admin_ena_hw_hints* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ENA_HW_HINTS_NO_TIMEOUT, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load i64, i64* @ENA_HW_HINTS_NO_TIMEOUT, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %100 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  br label %108

101:                                              ; preds = %90
  %102 = load %struct.ena_admin_ena_hw_hints*, %struct.ena_admin_ena_hw_hints** %4, align 8
  %103 = getelementptr inbounds %struct.ena_admin_ena_hw_hints, %struct.ena_admin_ena_hw_hints* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = call i8* @msecs_to_jiffies(i64 %104)
  %106 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %107 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %101, %96
  br label %109

109:                                              ; preds = %108, %85
  ret void
}

declare dso_local i8* @msecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
