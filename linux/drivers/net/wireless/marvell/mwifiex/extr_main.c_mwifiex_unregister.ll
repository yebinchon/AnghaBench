; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i64, i64, %struct.mwifiex_adapter*, %struct.mwifiex_adapter*, %struct.mwifiex_adapter**, %struct.mwifiex_adapter**, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.mwifiex_adapter.0*)* }
%struct.mwifiex_adapter.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_unregister(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca i64, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %4 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %4, i32 0, i32 7
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (%struct.mwifiex_adapter.0*)*, i32 (%struct.mwifiex_adapter.0*)** %6, align 8
  %8 = icmp ne i32 (%struct.mwifiex_adapter.0*)* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.mwifiex_adapter.0*)*, i32 (%struct.mwifiex_adapter.0*)** %12, align 8
  %14 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %15 = bitcast %struct.mwifiex_adapter* %14 to %struct.mwifiex_adapter.0*
  %16 = call i32 %13(%struct.mwifiex_adapter.0* %15)
  br label %17

17:                                               ; preds = %9, %1
  %18 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %18, i32 0, i32 6
  %20 = call i32 @del_timer_sync(i32* %19)
  store i64 0, i64* %3, align 8
  br label %21

21:                                               ; preds = %51, %17
  %22 = load i64, i64* %3, align 8
  %23 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %21
  %28 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %28, i32 0, i32 5
  %30 = load %struct.mwifiex_adapter**, %struct.mwifiex_adapter*** %29, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %30, i64 %31
  %33 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %32, align 8
  %34 = icmp ne %struct.mwifiex_adapter* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %27
  %36 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %36, i32 0, i32 5
  %38 = load %struct.mwifiex_adapter**, %struct.mwifiex_adapter*** %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %38, i64 %39
  %41 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %40, align 8
  %42 = call i32 @mwifiex_free_curr_bcn(%struct.mwifiex_adapter* %41)
  %43 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %43, i32 0, i32 5
  %45 = load %struct.mwifiex_adapter**, %struct.mwifiex_adapter*** %44, align 8
  %46 = load i64, i64* %3, align 8
  %47 = getelementptr inbounds %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %45, i64 %46
  %48 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %47, align 8
  %49 = call i32 @kfree(%struct.mwifiex_adapter* %48)
  br label %50

50:                                               ; preds = %35, %27
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %3, align 8
  br label %21

54:                                               ; preds = %21
  %55 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %55, i32 0, i32 3
  %57 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %56, align 8
  %58 = icmp ne %struct.mwifiex_adapter* %57, null
  br i1 %58, label %59, label %88

59:                                               ; preds = %54
  store i64 0, i64* %3, align 8
  br label %60

60:                                               ; preds = %78, %59
  %61 = load i64, i64* %3, align 8
  %62 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %62, i32 0, i32 3
  %64 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %63, align 8
  %65 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %61, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %60
  %69 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %70 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %69, i32 0, i32 3
  %71 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %70, align 8
  %72 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %71, i32 0, i32 4
  %73 = load %struct.mwifiex_adapter**, %struct.mwifiex_adapter*** %72, align 8
  %74 = load i64, i64* %3, align 8
  %75 = getelementptr inbounds %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %73, i64 %74
  %76 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %75, align 8
  %77 = call i32 @kfree(%struct.mwifiex_adapter* %76)
  br label %78

78:                                               ; preds = %68
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %3, align 8
  br label %60

81:                                               ; preds = %60
  %82 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %83 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %82, i32 0, i32 3
  %84 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %83, align 8
  %85 = call i32 @kfree(%struct.mwifiex_adapter* %84)
  %86 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %87 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %86, i32 0, i32 3
  store %struct.mwifiex_adapter* null, %struct.mwifiex_adapter** %87, align 8
  br label %88

88:                                               ; preds = %81, %54
  %89 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %89, i32 0, i32 2
  %91 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %90, align 8
  %92 = call i32 @kfree(%struct.mwifiex_adapter* %91)
  %93 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %94 = call i32 @kfree(%struct.mwifiex_adapter* %93)
  ret i32 0
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @mwifiex_free_curr_bcn(%struct.mwifiex_adapter*) #1

declare dso_local i32 @kfree(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
