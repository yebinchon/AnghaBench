; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_ret_802_11_scan_get_tlv_ptrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_ret_802_11_scan_get_tlv_ptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32 }
%struct.mwifiex_ie_types_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"info: SCAN_RESP: tlv_buf_size = %d\0A\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"SCAN_RESP: TLV buffer corrupt\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"info: SCAN_RESP: TSF\09timestamp TLV, len = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"info: SCAN_RESP: channel\09band list TLV, len = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"SCAN_RESP: unhandled TLV = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*, %struct.mwifiex_ie_types_data*, i32, i32, %struct.mwifiex_ie_types_data**)* @mwifiex_ret_802_11_scan_get_tlv_ptrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_ret_802_11_scan_get_tlv_ptrs(%struct.mwifiex_adapter* %0, %struct.mwifiex_ie_types_data* %1, i32 %2, i32 %3, %struct.mwifiex_ie_types_data** %4) #0 {
  %6 = alloca %struct.mwifiex_adapter*, align 8
  %7 = alloca %struct.mwifiex_ie_types_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mwifiex_ie_types_data**, align 8
  %11 = alloca %struct.mwifiex_ie_types_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %6, align 8
  store %struct.mwifiex_ie_types_data* %1, %struct.mwifiex_ie_types_data** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.mwifiex_ie_types_data** %4, %struct.mwifiex_ie_types_data*** %10, align 8
  %15 = load %struct.mwifiex_ie_types_data*, %struct.mwifiex_ie_types_data** %7, align 8
  store %struct.mwifiex_ie_types_data* %15, %struct.mwifiex_ie_types_data** %11, align 8
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.mwifiex_ie_types_data**, %struct.mwifiex_ie_types_data*** %10, align 8
  store %struct.mwifiex_ie_types_data* null, %struct.mwifiex_ie_types_data** %17, align 8
  %18 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %19 = load i32, i32* @INFO, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %18, i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %78, %5
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp uge i64 %24, 4
  br i1 %25, label %26, label %93

26:                                               ; preds = %22
  %27 = load %struct.mwifiex_ie_types_data*, %struct.mwifiex_ie_types_data** %11, align 8
  %28 = getelementptr inbounds %struct.mwifiex_ie_types_data, %struct.mwifiex_ie_types_data* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16_to_cpu(i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.mwifiex_ie_types_data*, %struct.mwifiex_ie_types_data** %11, align 8
  %33 = getelementptr inbounds %struct.mwifiex_ie_types_data, %struct.mwifiex_ie_types_data* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @le16_to_cpu(i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 8, %38
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ugt i64 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %26
  %44 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %45 = load i32, i32* @ERROR, align 4
  %46 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %44, i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %93

47:                                               ; preds = %26
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load i32, i32* %13, align 4
  switch i32 %52, label %67 [
    i32 128, label %53
    i32 129, label %60
  ]

53:                                               ; preds = %51
  %54 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %55 = load i32, i32* @INFO, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %54, i32 %55, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load %struct.mwifiex_ie_types_data*, %struct.mwifiex_ie_types_data** %11, align 8
  %59 = load %struct.mwifiex_ie_types_data**, %struct.mwifiex_ie_types_data*** %10, align 8
  store %struct.mwifiex_ie_types_data* %58, %struct.mwifiex_ie_types_data** %59, align 8
  br label %72

60:                                               ; preds = %51
  %61 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %62 = load i32, i32* @INFO, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %61, i32 %62, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load %struct.mwifiex_ie_types_data*, %struct.mwifiex_ie_types_data** %11, align 8
  %66 = load %struct.mwifiex_ie_types_data**, %struct.mwifiex_ie_types_data*** %10, align 8
  store %struct.mwifiex_ie_types_data* %65, %struct.mwifiex_ie_types_data** %66, align 8
  br label %72

67:                                               ; preds = %51
  %68 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %69 = load i32, i32* @ERROR, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %68, i32 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  br label %93

72:                                               ; preds = %60, %53
  br label %73

73:                                               ; preds = %72, %47
  %74 = load %struct.mwifiex_ie_types_data**, %struct.mwifiex_ie_types_data*** %10, align 8
  %75 = load %struct.mwifiex_ie_types_data*, %struct.mwifiex_ie_types_data** %74, align 8
  %76 = icmp ne %struct.mwifiex_ie_types_data* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %93

78:                                               ; preds = %73
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 8, %80
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = sub i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %12, align 4
  %86 = load %struct.mwifiex_ie_types_data*, %struct.mwifiex_ie_types_data** %11, align 8
  %87 = getelementptr inbounds %struct.mwifiex_ie_types_data, %struct.mwifiex_ie_types_data* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = inttoptr i64 %91 to %struct.mwifiex_ie_types_data*
  store %struct.mwifiex_ie_types_data* %92, %struct.mwifiex_ie_types_data** %11, align 8
  br label %22

93:                                               ; preds = %67, %77, %43, %22
  ret void
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
