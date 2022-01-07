; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_init_affinity_hint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_init_affinity_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enic*)* @enic_init_affinity_hint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_init_affinity_hint(%struct.enic* %0) #0 {
  %2 = alloca %struct.enic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %2, align 8
  %5 = load %struct.enic*, %struct.enic** %2, align 8
  %6 = getelementptr inbounds %struct.enic, %struct.enic* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = call i32 @dev_to_node(i32* %8)
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %74, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.enic*, %struct.enic** %2, align 8
  %13 = getelementptr inbounds %struct.enic, %struct.enic* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %77

16:                                               ; preds = %10
  %17 = load %struct.enic*, %struct.enic** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @enic_is_err_intr(%struct.enic* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %48, label %21

21:                                               ; preds = %16
  %22 = load %struct.enic*, %struct.enic** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @enic_is_notify_intr(%struct.enic* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %48, label %26

26:                                               ; preds = %21
  %27 = load %struct.enic*, %struct.enic** %2, align 8
  %28 = getelementptr inbounds %struct.enic, %struct.enic* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @cpumask_available(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %26
  %38 = load %struct.enic*, %struct.enic** %2, align 8
  %39 = getelementptr inbounds %struct.enic, %struct.enic* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cpumask_empty(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %37, %21, %16
  br label %74

49:                                               ; preds = %37, %26
  %50 = load %struct.enic*, %struct.enic** %2, align 8
  %51 = getelementptr inbounds %struct.enic, %struct.enic* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i64 @zalloc_cpumask_var(i32* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %49
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @cpumask_local_spread(i32 %61, i32 %62)
  %64 = load %struct.enic*, %struct.enic** %2, align 8
  %65 = getelementptr inbounds %struct.enic, %struct.enic* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @cpumask_set_cpu(i32 %63, i32 %71)
  br label %73

73:                                               ; preds = %60, %49
  br label %74

74:                                               ; preds = %73, %48
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %10

77:                                               ; preds = %10
  ret void
}

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local i64 @enic_is_err_intr(%struct.enic*, i32) #1

declare dso_local i64 @enic_is_notify_intr(%struct.enic*, i32) #1

declare dso_local i64 @cpumask_available(i32) #1

declare dso_local i32 @cpumask_empty(i32) #1

declare dso_local i64 @zalloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @cpumask_local_spread(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
