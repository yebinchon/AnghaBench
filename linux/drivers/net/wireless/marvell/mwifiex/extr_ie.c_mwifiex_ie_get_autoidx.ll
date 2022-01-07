; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_ie.c_mwifiex_ie_get_autoidx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_ie.c_mwifiex_ie_get_autoidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.mwifiex_ie = type { i32 }

@MWIFIEX_AUTO_IDX_MASK = common dso_local global i64 0, align 8
@IEEE_MAX_IE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, i64, %struct.mwifiex_ie*, i64*)* @mwifiex_ie_get_autoidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_ie_get_autoidx(%struct.mwifiex_private* %0, i64 %1, %struct.mwifiex_ie* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwifiex_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mwifiex_ie*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.mwifiex_ie* %2, %struct.mwifiex_ie** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %69, %4
  %14 = load i64, i64* %12, align 8
  %15 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %16 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %14, %19
  br i1 %20, label %21, label %72

21:                                               ; preds = %13
  %22 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %23 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i64, i64* %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le16_to_cpu(i32 %28)
  store i64 %29, i64* %10, align 8
  %30 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %8, align 8
  %31 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @le16_to_cpu(i32 %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @MWIFIEX_AUTO_IDX_MASK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  br label %69

38:                                               ; preds = %21
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @IEEE_MAX_IE_SIZE, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %69

47:                                               ; preds = %42
  %48 = load i64, i64* %12, align 8
  %49 = load i64*, i64** %9, align 8
  store i64 %48, i64* %49, align 8
  store i32 0, i32* %5, align 4
  br label %73

50:                                               ; preds = %38
  %51 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %52 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %50
  %60 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i64 @mwifiex_ie_index_used_by_other_intf(%struct.mwifiex_private* %60, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %69

65:                                               ; preds = %59
  %66 = load i64, i64* %12, align 8
  %67 = load i64*, i64** %9, align 8
  store i64 %66, i64* %67, align 8
  store i32 0, i32* %5, align 4
  br label %73

68:                                               ; preds = %50
  br label %69

69:                                               ; preds = %68, %64, %46, %37
  %70 = load i64, i64* %12, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %12, align 8
  br label %13

72:                                               ; preds = %13
  store i32 -1, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %65, %47
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @mwifiex_ie_index_used_by_other_intf(%struct.mwifiex_private*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
