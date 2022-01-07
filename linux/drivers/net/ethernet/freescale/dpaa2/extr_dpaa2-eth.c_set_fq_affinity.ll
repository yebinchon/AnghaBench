; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_set_fq_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_set_fq_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { i32, i32, %struct.dpaa2_eth_fq*, %struct.TYPE_4__* }
%struct.dpaa2_eth_fq = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }

@nr_cpu_ids = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unknown FQ type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpaa2_eth_priv*)* @set_fq_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_fq_affinity(%struct.dpaa2_eth_priv* %0) #0 {
  %2 = alloca %struct.dpaa2_eth_priv*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.dpaa2_eth_fq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %2, align 8
  %8 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %9 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %3, align 8
  %14 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %15 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %14, i32 0, i32 1
  %16 = call i32 @cpumask_first(i32* %15)
  store i32 %16, i32* %6, align 4
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %79, %1
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %20 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %82

23:                                               ; preds = %17
  %24 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %25 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %24, i32 0, i32 2
  %26 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %26, i64 %28
  store %struct.dpaa2_eth_fq* %29, %struct.dpaa2_eth_fq** %4, align 8
  %30 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %4, align 8
  %31 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %65 [
    i32 129, label %33
    i32 128, label %49
  ]

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %4, align 8
  %36 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %39 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %38, i32 0, i32 1
  %40 = call i32 @cpumask_next(i32 %37, i32* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @nr_cpu_ids, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %46 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %45, i32 0, i32 1
  %47 = call i32 @cpumask_first(i32* %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %33
  br label %71

49:                                               ; preds = %23
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %4, align 8
  %52 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %55 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %54, i32 0, i32 1
  %56 = call i32 @cpumask_next(i32 %53, i32* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @nr_cpu_ids, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %62 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %61, i32 0, i32 1
  %63 = call i32 @cpumask_first(i32* %62)
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %49
  br label %71

65:                                               ; preds = %23
  %66 = load %struct.device*, %struct.device** %3, align 8
  %67 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %4, align 8
  %68 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %65, %64, %48
  %72 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %73 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %4, align 8
  %74 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @get_affine_channel(%struct.dpaa2_eth_priv* %72, i32 %75)
  %77 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %4, align 8
  %78 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %17

82:                                               ; preds = %17
  %83 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %84 = call i32 @update_xps(%struct.dpaa2_eth_priv* %83)
  ret void
}

declare dso_local i32 @cpumask_first(i32*) #1

declare dso_local i32 @cpumask_next(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @get_affine_channel(%struct.dpaa2_eth_priv*, i32) #1

declare dso_local i32 @update_xps(%struct.dpaa2_eth_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
