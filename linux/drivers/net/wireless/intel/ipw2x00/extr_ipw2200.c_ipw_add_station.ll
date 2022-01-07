; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_add_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_add_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i32, i32*, i64 }
%struct.ipw_station_entry = type { i32, i64, i64 }

@CFG_STATIC_CHANNEL = common dso_local global i32 0, align 4
@CFG_ADHOC_PERSIST = common dso_local global i32 0, align 4
@MAX_STATIONS = common dso_local global i32 0, align 4
@IPW_INVALID_STATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Adding AdHoc station: %pM\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@IPW_STATION_TABLE_LOWER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*, i32*)* @ipw_add_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_add_station(%struct.ipw_priv* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipw_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ipw_station_entry, align 8
  %7 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %44, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %11 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %8
  %15 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %16 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @ether_addr_equal(i32 %21, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %14
  %26 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %27 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %29 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CFG_STATIC_CHANNEL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @CFG_ADHOC_PERSIST, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %38 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %34, %25
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %85

43:                                               ; preds = %14
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %8

47:                                               ; preds = %8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @MAX_STATIONS, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @IPW_INVALID_STATION, align 4
  store i32 %52, i32* %3, align 4
  br label %85

53:                                               ; preds = %47
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @IPW_DEBUG_SCAN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %54)
  %56 = getelementptr inbounds %struct.ipw_station_entry, %struct.ipw_station_entry* %6, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = getelementptr inbounds %struct.ipw_station_entry, %struct.ipw_station_entry* %6, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.ipw_station_entry, %struct.ipw_station_entry* %6, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* @ETH_ALEN, align 4
  %62 = call i32 @memcpy(i32 %59, i32* %60, i32 %61)
  %63 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %64 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* @ETH_ALEN, align 4
  %72 = call i32 @memcpy(i32 %69, i32* %70, i32 %71)
  %73 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %74 = load i64, i64* @IPW_STATION_TABLE_LOWER, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 24
  %78 = add i64 %74, %77
  %79 = call i32 @ipw_write_direct(%struct.ipw_priv* %73, i64 %78, %struct.ipw_station_entry* %6, i32 24)
  %80 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %81 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %53, %51, %41
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i64 @ether_addr_equal(i32, i32*) #1

declare dso_local i32 @IPW_DEBUG_SCAN(i8*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ipw_write_direct(%struct.ipw_priv*, i64, %struct.ipw_station_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
