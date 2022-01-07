; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_init.c_mwifiex_invalidate_lists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_init.c_mwifiex_invalidate_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i64, %struct.mwifiex_private**, %struct.TYPE_4__*, i32, i32, i32 }
%struct.mwifiex_private = type { i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MAX_NUM_TID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*)* @mwifiex_invalidate_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_invalidate_lists(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %6 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %6, i32 0, i32 5
  %8 = call i32 @list_del(i32* %7)
  %9 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %9, i32 0, i32 4
  %11 = call i32 @list_del(i32* %10)
  %12 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %12, i32 0, i32 3
  %14 = call i32 @list_del(i32* %13)
  store i64 0, i64* %4, align 8
  br label %15

15:                                               ; preds = %29, %1
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @list_del(i32* %27)
  br label %29

29:                                               ; preds = %21
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %4, align 8
  br label %15

32:                                               ; preds = %15
  store i64 0, i64* %4, align 8
  br label %33

33:                                               ; preds = %84, %32
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %87

39:                                               ; preds = %33
  %40 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %40, i32 0, i32 1
  %42 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %42, i64 %43
  %45 = load %struct.mwifiex_private*, %struct.mwifiex_private** %44, align 8
  %46 = icmp ne %struct.mwifiex_private* %45, null
  br i1 %46, label %47, label %83

47:                                               ; preds = %39
  %48 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %48, i32 0, i32 1
  %50 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %49, align 8
  %51 = load i64, i64* %4, align 8
  %52 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %50, i64 %51
  %53 = load %struct.mwifiex_private*, %struct.mwifiex_private** %52, align 8
  store %struct.mwifiex_private* %53, %struct.mwifiex_private** %3, align 8
  store i64 0, i64* %5, align 8
  br label %54

54:                                               ; preds = %67, %47
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @MAX_NUM_TID, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %60 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = call i32 @list_del(i32* %65)
  br label %67

67:                                               ; preds = %58
  %68 = load i64, i64* %5, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %5, align 8
  br label %54

70:                                               ; preds = %54
  %71 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %72 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %71, i32 0, i32 3
  %73 = call i32 @list_del(i32* %72)
  %74 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %75 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %74, i32 0, i32 2
  %76 = call i32 @list_del(i32* %75)
  %77 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %78 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %77, i32 0, i32 1
  %79 = call i32 @list_del(i32* %78)
  %80 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %81 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %80, i32 0, i32 0
  %82 = call i32 @list_del(i32* %81)
  br label %83

83:                                               ; preds = %70, %39
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %4, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %4, align 8
  br label %33

87:                                               ; preds = %33
  ret void
}

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
