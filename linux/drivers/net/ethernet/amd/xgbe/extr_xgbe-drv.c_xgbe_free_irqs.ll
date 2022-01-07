; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_free_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i64, i64, i32, i64, i32, %struct.xgbe_prv_data**, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.xgbe_channel = type { i64, i64, i32, i64, i32, %struct.xgbe_channel**, i32, %struct.TYPE_2__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_free_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_free_irqs(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %5 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %6 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %9 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %12 = call i32 @devm_free_irq(i32 %7, i64 %10, %struct.xgbe_prv_data* %11)
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %14 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %13, i32 0, i32 7
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %1
  %20 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %21 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %24 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %29 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %32 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %35 = call i32 @devm_free_irq(i32 %30, i64 %33, %struct.xgbe_prv_data* %34)
  br label %36

36:                                               ; preds = %27, %19, %1
  %37 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %38 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %74

42:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %71, %42
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %46 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %43
  %50 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %51 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %50, i32 0, i32 5
  %52 = load %struct.xgbe_prv_data**, %struct.xgbe_prv_data*** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %52, i64 %54
  %56 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %55, align 8
  %57 = bitcast %struct.xgbe_prv_data* %56 to %struct.xgbe_channel*
  store %struct.xgbe_channel* %57, %struct.xgbe_channel** %3, align 8
  %58 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %59 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @irq_set_affinity_hint(i64 %60, i32* null)
  %62 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %63 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %66 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %69 = bitcast %struct.xgbe_channel* %68 to %struct.xgbe_prv_data*
  %70 = call i32 @devm_free_irq(i32 %64, i64 %67, %struct.xgbe_prv_data* %69)
  br label %71

71:                                               ; preds = %49
  %72 = load i32, i32* %4, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %43

74:                                               ; preds = %41, %43
  ret void
}

declare dso_local i32 @devm_free_irq(i32, i64, %struct.xgbe_prv_data*) #1

declare dso_local i32 @irq_set_affinity_hint(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
