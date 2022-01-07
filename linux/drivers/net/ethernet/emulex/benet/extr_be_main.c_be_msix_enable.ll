; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_msix_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_msix_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@MIN_MSIX_VECTORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"enabled %d MSI-x vector(s) for RoCE\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"enabled %d MSI-x vector(s) for NIC\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"MSIx enable failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_msix_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_msix_enable(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %8 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %8, i32 0, i32 3
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %13 = call i64 @be_roce_supported(%struct.be_adapter* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %17 = call i32 @be_max_func_eqs(%struct.be_adapter* %16)
  %18 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %19 = call i32 @be_max_nic_eqs(%struct.be_adapter* %18)
  %20 = sub i32 %17, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 (...) @num_online_cpus()
  %23 = call i32 @min(i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %25 = call i32 @be_max_any_irqs(%struct.be_adapter* %24)
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %25, %26
  store i32 %27, i32* %7, align 4
  br label %36

28:                                               ; preds = %1
  %29 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @max(i32 %31, i32 %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %28, %15
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %50, %36
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %42, i32* %49, align 4
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %4, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %37

53:                                               ; preds = %37
  %54 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %54, i32 0, i32 3
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* @MIN_MSIX_VECTORS, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @pci_enable_msix_range(%struct.TYPE_3__* %56, %struct.TYPE_4__* %59, i32 %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %97

66:                                               ; preds = %53
  %67 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %68 = call i64 @be_roce_supported(%struct.be_adapter* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @MIN_MSIX_VECTORS, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  %76 = sdiv i32 %75, 2
  %77 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @dev_info(%struct.device* %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %74, %70, %66
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %87 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %85, %88
  %90 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %91 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.device*, %struct.device** %6, align 8
  %93 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @dev_info(%struct.device* %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  store i32 0, i32* %2, align 4
  br label %106

97:                                               ; preds = %65
  %98 = load %struct.device*, %struct.device** %6, align 8
  %99 = call i32 @dev_warn(%struct.device* %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %100 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %101 = call i64 @be_virtfn(%struct.be_adapter* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %2, align 4
  br label %106

105:                                              ; preds = %97
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %103, %84
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i64 @be_roce_supported(%struct.be_adapter*) #1

declare dso_local i32 @be_max_func_eqs(%struct.be_adapter*) #1

declare dso_local i32 @be_max_nic_eqs(%struct.be_adapter*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @be_max_any_irqs(%struct.be_adapter*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @pci_enable_msix_range(%struct.TYPE_3__*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i64 @be_virtfn(%struct.be_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
