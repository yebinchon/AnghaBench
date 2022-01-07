; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_join.c_mwifiex_append_rsn_ie_wpa_wpa2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_join.c_mwifiex_append_rsn_ie_wpa_wpa2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i64* }
%struct.mwifiex_ie_types_rsn_param_set = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, i32**)* @mwifiex_append_rsn_ie_wpa_wpa2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_append_rsn_ie_wpa_wpa2(%struct.mwifiex_private* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.mwifiex_ie_types_rsn_param_set*, align 8
  %7 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store i32** %1, i32*** %5, align 8
  %8 = load i32**, i32*** %5, align 8
  %9 = icmp ne i32** %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32**, i32*** %5, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %96

15:                                               ; preds = %10
  %16 = load i32**, i32*** %5, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = bitcast i32* %17 to %struct.mwifiex_ie_types_rsn_param_set*
  store %struct.mwifiex_ie_types_rsn_param_set* %18, %struct.mwifiex_ie_types_rsn_param_set** %6, align 8
  %19 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %20 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = load %struct.mwifiex_ie_types_rsn_param_set*, %struct.mwifiex_ie_types_rsn_param_set** %6, align 8
  %27 = getelementptr inbounds %struct.mwifiex_ie_types_rsn_param_set, %struct.mwifiex_ie_types_rsn_param_set* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i8* %25, i8** %28, align 8
  %29 = load %struct.mwifiex_ie_types_rsn_param_set*, %struct.mwifiex_ie_types_rsn_param_set** %6, align 8
  %30 = getelementptr inbounds %struct.mwifiex_ie_types_rsn_param_set, %struct.mwifiex_ie_types_rsn_param_set* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @le16_to_cpu(i8* %32)
  %34 = and i32 %33, 255
  %35 = call i8* @cpu_to_le16(i32 %34)
  %36 = load %struct.mwifiex_ie_types_rsn_param_set*, %struct.mwifiex_ie_types_rsn_param_set** %6, align 8
  %37 = getelementptr inbounds %struct.mwifiex_ie_types_rsn_param_set, %struct.mwifiex_ie_types_rsn_param_set* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i8* %35, i8** %38, align 8
  %39 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %40 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = load %struct.mwifiex_ie_types_rsn_param_set*, %struct.mwifiex_ie_types_rsn_param_set** %6, align 8
  %47 = getelementptr inbounds %struct.mwifiex_ie_types_rsn_param_set, %struct.mwifiex_ie_types_rsn_param_set* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i8* %45, i8** %48, align 8
  %49 = load %struct.mwifiex_ie_types_rsn_param_set*, %struct.mwifiex_ie_types_rsn_param_set** %6, align 8
  %50 = getelementptr inbounds %struct.mwifiex_ie_types_rsn_param_set, %struct.mwifiex_ie_types_rsn_param_set* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @le16_to_cpu(i8* %52)
  %54 = and i32 %53, 255
  %55 = call i8* @cpu_to_le16(i32 %54)
  %56 = load %struct.mwifiex_ie_types_rsn_param_set*, %struct.mwifiex_ie_types_rsn_param_set** %6, align 8
  %57 = getelementptr inbounds %struct.mwifiex_ie_types_rsn_param_set, %struct.mwifiex_ie_types_rsn_param_set* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  %59 = load %struct.mwifiex_ie_types_rsn_param_set*, %struct.mwifiex_ie_types_rsn_param_set** %6, align 8
  %60 = getelementptr inbounds %struct.mwifiex_ie_types_rsn_param_set, %struct.mwifiex_ie_types_rsn_param_set* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @le16_to_cpu(i8* %62)
  %64 = sext i32 %63 to i64
  %65 = icmp ule i64 %64, 6
  br i1 %65, label %66, label %80

66:                                               ; preds = %15
  %67 = load %struct.mwifiex_ie_types_rsn_param_set*, %struct.mwifiex_ie_types_rsn_param_set** %6, align 8
  %68 = getelementptr inbounds %struct.mwifiex_ie_types_rsn_param_set, %struct.mwifiex_ie_types_rsn_param_set* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %71 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 2
  %74 = load %struct.mwifiex_ie_types_rsn_param_set*, %struct.mwifiex_ie_types_rsn_param_set** %6, align 8
  %75 = getelementptr inbounds %struct.mwifiex_ie_types_rsn_param_set, %struct.mwifiex_ie_types_rsn_param_set* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @le16_to_cpu(i8* %77)
  %79 = call i32 @memcpy(i32 %69, i64* %73, i32 %78)
  br label %81

80:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %96

81:                                               ; preds = %66
  %82 = load %struct.mwifiex_ie_types_rsn_param_set*, %struct.mwifiex_ie_types_rsn_param_set** %6, align 8
  %83 = getelementptr inbounds %struct.mwifiex_ie_types_rsn_param_set, %struct.mwifiex_ie_types_rsn_param_set* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @le16_to_cpu(i8* %85)
  %87 = sext i32 %86 to i64
  %88 = add i64 16, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32**, i32*** %5, align 8
  %92 = load i32*, i32** %91, align 8
  %93 = sext i32 %90 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %91, align 8
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %81, %80, %14
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
