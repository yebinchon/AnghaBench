; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_set_affinity_hint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_set_affinity_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"irq_set_affinity_hint failed, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enic*)* @enic_set_affinity_hint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_set_affinity_hint(%struct.enic* %0) #0 {
  %2 = alloca %struct.enic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %72, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.enic*, %struct.enic** %2, align 8
  %9 = getelementptr inbounds %struct.enic, %struct.enic* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %75

12:                                               ; preds = %6
  %13 = load %struct.enic*, %struct.enic** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @enic_is_err_intr(%struct.enic* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %12
  %18 = load %struct.enic*, %struct.enic** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @enic_is_notify_intr(%struct.enic* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %17
  %23 = load %struct.enic*, %struct.enic** %2, align 8
  %24 = getelementptr inbounds %struct.enic, %struct.enic* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @cpumask_available(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %22
  %34 = load %struct.enic*, %struct.enic** %2, align 8
  %35 = getelementptr inbounds %struct.enic, %struct.enic* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @cpumask_empty(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33, %22, %17, %12
  br label %72

45:                                               ; preds = %33
  %46 = load %struct.enic*, %struct.enic** %2, align 8
  %47 = getelementptr inbounds %struct.enic, %struct.enic* %46, i32 0, i32 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.enic*, %struct.enic** %2, align 8
  %55 = getelementptr inbounds %struct.enic, %struct.enic* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @irq_set_affinity_hint(i32 %53, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %45
  %66 = load %struct.enic*, %struct.enic** %2, align 8
  %67 = getelementptr inbounds %struct.enic, %struct.enic* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @netdev_warn(i32 %68, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %65, %45
  br label %72

72:                                               ; preds = %71, %44
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %6

75:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %122, %75
  %77 = load i32, i32* %3, align 4
  %78 = load %struct.enic*, %struct.enic** %2, align 8
  %79 = getelementptr inbounds %struct.enic, %struct.enic* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %125

82:                                               ; preds = %76
  %83 = load %struct.enic*, %struct.enic** %2, align 8
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @enic_msix_wq_intr(%struct.enic* %83, i32 %84)
  store i32 %85, i32* %5, align 4
  %86 = load %struct.enic*, %struct.enic** %2, align 8
  %87 = getelementptr inbounds %struct.enic, %struct.enic* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @cpumask_available(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %82
  %97 = load %struct.enic*, %struct.enic** %2, align 8
  %98 = getelementptr inbounds %struct.enic, %struct.enic* %97, i32 0, i32 2
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @cpumask_empty(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %96
  %108 = load %struct.enic*, %struct.enic** %2, align 8
  %109 = getelementptr inbounds %struct.enic, %struct.enic* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.enic*, %struct.enic** %2, align 8
  %112 = getelementptr inbounds %struct.enic, %struct.enic* %111, i32 0, i32 2
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @netif_set_xps_queue(i32 %110, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %107, %96, %82
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %3, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %3, align 4
  br label %76

125:                                              ; preds = %76
  ret void
}

declare dso_local i64 @enic_is_err_intr(%struct.enic*, i32) #1

declare dso_local i64 @enic_is_notify_intr(%struct.enic*, i32) #1

declare dso_local i64 @cpumask_available(i32) #1

declare dso_local i64 @cpumask_empty(i32) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

declare dso_local i32 @enic_msix_wq_intr(%struct.enic*, i32) #1

declare dso_local i32 @netif_set_xps_queue(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
