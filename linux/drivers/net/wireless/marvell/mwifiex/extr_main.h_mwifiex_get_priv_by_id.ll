; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.h_mwifiex_get_priv_by_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.h_mwifiex_get_priv_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i64, i64 }
%struct.mwifiex_adapter = type { i32, %struct.mwifiex_private** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mwifiex_private* (%struct.mwifiex_adapter*, i64, i64)* @mwifiex_get_priv_by_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mwifiex_private* @mwifiex_get_priv_by_id(%struct.mwifiex_adapter* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mwifiex_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %50, %3
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %53

14:                                               ; preds = %8
  %15 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %15, i32 0, i32 1
  %17 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %17, i64 %19
  %21 = load %struct.mwifiex_private*, %struct.mwifiex_private** %20, align 8
  %22 = icmp ne %struct.mwifiex_private* %21, null
  br i1 %22, label %23, label %49

23:                                               ; preds = %14
  %24 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %24, i32 0, i32 1
  %26 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %26, i64 %28
  %30 = load %struct.mwifiex_private*, %struct.mwifiex_private** %29, align 8
  %31 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %23
  %36 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %37 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %36, i32 0, i32 1
  %38 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %38, i64 %40
  %42 = load %struct.mwifiex_private*, %struct.mwifiex_private** %41, align 8
  %43 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %53

48:                                               ; preds = %35, %23
  br label %49

49:                                               ; preds = %48, %14
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %8

53:                                               ; preds = %47, %8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %56 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %61 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %60, i32 0, i32 1
  %62 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %62, i64 %64
  %66 = load %struct.mwifiex_private*, %struct.mwifiex_private** %65, align 8
  br label %68

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67, %59
  %69 = phi %struct.mwifiex_private* [ %66, %59 ], [ null, %67 ]
  ret %struct.mwifiex_private* %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
