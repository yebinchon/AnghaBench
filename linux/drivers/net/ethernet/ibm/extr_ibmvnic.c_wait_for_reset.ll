; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_wait_for_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_wait_for_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@VNIC_RESET_CHANGE_PARAM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvnic_adapter*)* @wait_for_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_reset(%struct.ibmvnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibmvnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %3, align 8
  %6 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %6, i32 0, i32 9
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  store i32 %8, i32* %11, align 8
  %12 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  store i32 %14, i32* %17, align 4
  %18 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 8
  %24 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %36, i32 0, i32 1
  %38 = call i32 @init_completion(i32* %37)
  %39 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %42 = load i32, i32* @VNIC_RESET_CHANGE_PARAM, align 4
  %43 = call i32 @ibmvnic_reset(%struct.ibmvnic_adapter* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %1
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %114

48:                                               ; preds = %1
  %49 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %49, i32 0, i32 1
  %51 = call i32 @wait_for_completion(i32* %50)
  store i32 0, i32* %5, align 4
  %52 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %110

56:                                               ; preds = %48
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  %59 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %64 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 4
  store i32 %62, i32* %65, align 4
  %66 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  store i32 %69, i32* %72, align 4
  %73 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 4
  %80 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %85 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  %94 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %94, i32 0, i32 1
  %96 = call i32 @init_completion(i32* %95)
  %97 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  %99 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %100 = load i32, i32* @VNIC_RESET_CHANGE_PARAM, align 4
  %101 = call i32 @ibmvnic_reset(%struct.ibmvnic_adapter* %99, i32 %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %56
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %114

106:                                              ; preds = %56
  %107 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %108 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %107, i32 0, i32 1
  %109 = call i32 @wait_for_completion(i32* %108)
  br label %110

110:                                              ; preds = %106, %48
  %111 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %112 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %111, i32 0, i32 0
  store i32 0, i32* %112, align 8
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %110, %104, %46
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ibmvnic_reset(%struct.ibmvnic_adapter*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
