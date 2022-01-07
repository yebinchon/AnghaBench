; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_set_msix_aff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_set_msix_aff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"alloc_cpumask_var failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"irq_set_affinity_hint %u failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_set_msix_aff(%struct.adapter* %0, i16 zeroext %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i16 %1, i16* %7, align 2
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32*, i32** %8, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32 @zalloc_cpumask_var(i32* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %4
  %16 = load %struct.adapter*, %struct.adapter** %6, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %46

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.adapter*, %struct.adapter** %6, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_to_node(i32 %26)
  %28 = call i32 @cpumask_local_spread(i32 %23, i32 %27)
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cpumask_set_cpu(i32 %28, i32 %30)
  %32 = load i16, i16* %7, align 2
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @irq_set_affinity_hint(i16 zeroext %32, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %22
  %39 = load %struct.adapter*, %struct.adapter** %6, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i16, i16* %7, align 2
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @dev_warn(i32 %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %22
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %15
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @zalloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @cpumask_local_spread(i32, i32) #1

declare dso_local i32 @dev_to_node(i32) #1

declare dso_local i32 @irq_set_affinity_hint(i16 zeroext, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
