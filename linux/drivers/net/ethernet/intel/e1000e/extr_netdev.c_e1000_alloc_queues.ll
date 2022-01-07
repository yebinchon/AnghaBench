; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_alloc_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_alloc_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.TYPE_2__*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { %struct.e1000_adapter*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unable to allocate memory for queues\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*)* @e1000_alloc_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_alloc_queues(%struct.e1000_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  store i32 4, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i8* @kzalloc(i32 %5, i32 %6)
  %8 = bitcast i8* %7 to %struct.TYPE_2__*
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 0
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %10, align 8
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %53

16:                                               ; preds = %1
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %19, i32* %23, align 8
  %24 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %25 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.e1000_adapter* %24, %struct.e1000_adapter** %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kzalloc(i32 %29, i32 %30)
  %32 = bitcast i8* %31 to %struct.TYPE_2__*
  %33 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %33, i32 0, i32 1
  store %struct.TYPE_2__* %32, %struct.TYPE_2__** %34, align 8
  %35 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = icmp ne %struct.TYPE_2__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %16
  br label %53

40:                                               ; preds = %16
  %41 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 8
  %48 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %49 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store %struct.e1000_adapter* %48, %struct.e1000_adapter** %52, align 8
  store i32 0, i32* %2, align 4
  br label %65

53:                                               ; preds = %39, %15
  %54 = call i32 @e_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = call i32 @kfree(%struct.TYPE_2__* %57)
  %59 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = call i32 @kfree(%struct.TYPE_2__* %61)
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %53, %40
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @e_err(i8*) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
