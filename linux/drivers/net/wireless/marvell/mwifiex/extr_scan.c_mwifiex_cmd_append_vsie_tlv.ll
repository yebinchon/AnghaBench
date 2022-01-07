; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_cmd_append_vsie_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_cmd_append_vsie_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64* }
%struct.mwifiex_ie_types_vendor_param_set = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8*, i8* }

@MWIFIEX_MAX_VSIE_NUM = common dso_local global i32 0, align 4
@TLV_TYPE_PASSTHROUGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_cmd_append_vsie_tlv(%struct.mwifiex_private* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mwifiex_ie_types_vendor_param_set*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32**, i32*** %7, align 8
  %12 = icmp ne i32** %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %104

14:                                               ; preds = %3
  %15 = load i32**, i32*** %7, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %104

19:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %99, %19
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @MWIFIEX_MAX_VSIE_NUM, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %102

24:                                               ; preds = %20
  %25 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %26 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %98

36:                                               ; preds = %24
  %37 = load i32**, i32*** %7, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = bitcast i32* %38 to %struct.mwifiex_ie_types_vendor_param_set*
  store %struct.mwifiex_ie_types_vendor_param_set* %39, %struct.mwifiex_ie_types_vendor_param_set** %10, align 8
  %40 = load i32, i32* @TLV_TYPE_PASSTHROUGH, align 4
  %41 = call i8* @cpu_to_le16(i32 %40)
  %42 = load %struct.mwifiex_ie_types_vendor_param_set*, %struct.mwifiex_ie_types_vendor_param_set** %10, align 8
  %43 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, %struct.mwifiex_ie_types_vendor_param_set* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i8* %41, i8** %44, align 8
  %45 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %46 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = and i32 %55, 255
  %57 = add nsw i32 %56, 2
  %58 = call i8* @cpu_to_le16(i32 %57)
  %59 = load %struct.mwifiex_ie_types_vendor_param_set*, %struct.mwifiex_ie_types_vendor_param_set** %10, align 8
  %60 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, %struct.mwifiex_ie_types_vendor_param_set* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i8* %58, i8** %61, align 8
  %62 = load %struct.mwifiex_ie_types_vendor_param_set*, %struct.mwifiex_ie_types_vendor_param_set** %10, align 8
  %63 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, %struct.mwifiex_ie_types_vendor_param_set* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %66 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load %struct.mwifiex_ie_types_vendor_param_set*, %struct.mwifiex_ie_types_vendor_param_set** %10, align 8
  %74 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, %struct.mwifiex_ie_types_vendor_param_set* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @le16_to_cpu(i8* %76)
  %78 = call i32 @memcpy(i32 %64, i64* %72, i64 %77)
  %79 = load %struct.mwifiex_ie_types_vendor_param_set*, %struct.mwifiex_ie_types_vendor_param_set** %10, align 8
  %80 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, %struct.mwifiex_ie_types_vendor_param_set* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @le16_to_cpu(i8* %82)
  %84 = add i64 %83, 4
  %85 = load i32**, i32*** %7, align 8
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 %84
  store i32* %87, i32** %85, align 8
  %88 = load %struct.mwifiex_ie_types_vendor_param_set*, %struct.mwifiex_ie_types_vendor_param_set** %10, align 8
  %89 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, %struct.mwifiex_ie_types_vendor_param_set* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @le16_to_cpu(i8* %91)
  %93 = add i64 %92, 4
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %36, %24
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %20

102:                                              ; preds = %20
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %102, %18, %13
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i64*, i64) #1

declare dso_local i64 @le16_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
