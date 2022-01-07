; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_ie.c_mwifiex_ie_index_used_by_other_intf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_ie.c_mwifiex_ie_index_used_by_other_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.mwifiex_ie*, %struct.mwifiex_adapter* }
%struct.mwifiex_ie = type { i64, i64 }
%struct.mwifiex_adapter = type { i32, %struct.mwifiex_private** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, i64)* @mwifiex_ie_index_used_by_other_intf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_ie_index_used_by_other_intf(%struct.mwifiex_private* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mwifiex_adapter*, align 8
  %8 = alloca %struct.mwifiex_ie*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %10 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %9, i32 0, i32 1
  %11 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  store %struct.mwifiex_adapter* %11, %struct.mwifiex_adapter** %7, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %52, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %15 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %12
  %19 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %20 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %19, i32 0, i32 1
  %21 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %21, i64 %23
  %25 = load %struct.mwifiex_private*, %struct.mwifiex_private** %24, align 8
  %26 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %27 = icmp ne %struct.mwifiex_private* %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %18
  %29 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %30 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %29, i32 0, i32 1
  %31 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %31, i64 %33
  %35 = load %struct.mwifiex_private*, %struct.mwifiex_private** %34, align 8
  %36 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %35, i32 0, i32 0
  %37 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %37, i64 %38
  store %struct.mwifiex_ie* %39, %struct.mwifiex_ie** %8, align 8
  %40 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %8, align 8
  %41 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %28
  %45 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %8, align 8
  %46 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 -1, i32* %3, align 4
  br label %56

50:                                               ; preds = %44, %28
  br label %51

51:                                               ; preds = %50, %18
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %12

55:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %49
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
