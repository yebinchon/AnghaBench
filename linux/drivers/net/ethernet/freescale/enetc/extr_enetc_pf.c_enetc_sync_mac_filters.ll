; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_sync_mac_filters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_sync_mac_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_pf = type { %struct.enetc_si*, %struct.enetc_mac_filter* }
%struct.enetc_si = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.enetc_mac_filter = type { i32, i64, i32 }

@EMETC_MAC_ADDR_FILT_RES = common dso_local global i32 0, align 4
@MADDR_TYPE = common dso_local global i32 0, align 4
@UC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"fallback to HT filt (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enetc_pf*)* @enetc_sync_mac_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_sync_mac_filters(%struct.enetc_pf* %0) #0 {
  %2 = alloca %struct.enetc_pf*, align 8
  %3 = alloca %struct.enetc_mac_filter*, align 8
  %4 = alloca %struct.enetc_si*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.enetc_pf* %0, %struct.enetc_pf** %2, align 8
  %10 = load %struct.enetc_pf*, %struct.enetc_pf** %2, align 8
  %11 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %10, i32 0, i32 1
  %12 = load %struct.enetc_mac_filter*, %struct.enetc_mac_filter** %11, align 8
  store %struct.enetc_mac_filter* %12, %struct.enetc_mac_filter** %3, align 8
  %13 = load %struct.enetc_pf*, %struct.enetc_pf** %2, align 8
  %14 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %13, i32 0, i32 0
  %15 = load %struct.enetc_si*, %struct.enetc_si** %14, align 8
  store %struct.enetc_si* %15, %struct.enetc_si** %4, align 8
  %16 = load i32, i32* @EMETC_MAC_ADDR_FILT_RES, align 4
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %93, %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MADDR_TYPE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %98

21:                                               ; preds = %17
  %22 = load %struct.enetc_mac_filter*, %struct.enetc_mac_filter** %3, align 8
  %23 = getelementptr inbounds %struct.enetc_mac_filter, %struct.enetc_mac_filter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @UC, align 4
  %29 = icmp eq i32 %27, %28
  br label %30

30:                                               ; preds = %26, %21
  %31 = phi i1 [ false, %21 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load %struct.enetc_mac_filter*, %struct.enetc_mac_filter** %3, align 8
  %34 = getelementptr inbounds %struct.enetc_mac_filter, %struct.enetc_mac_filter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %30
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @UC, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @enetc_clear_mac_flt_entry(%struct.enetc_si* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @enetc_clear_mac_ht_flt(%struct.enetc_si* %50, i32 0, i32 %51)
  br label %93

53:                                               ; preds = %30
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %53
  %57 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %58 = load i32, i32* @UC, align 4
  %59 = call i32 @enetc_clear_mac_ht_flt(%struct.enetc_si* %57, i32 0, i32 %58)
  %60 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.enetc_mac_filter*, %struct.enetc_mac_filter** %3, align 8
  %63 = getelementptr inbounds %struct.enetc_mac_filter, %struct.enetc_mac_filter* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @BIT(i32 0)
  %66 = call i32 @enetc_set_mac_flt_entry(%struct.enetc_si* %60, i32 %61, i32 %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %56
  br label %93

70:                                               ; preds = %56
  %71 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %72 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @dev_warn(i32* %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %70, %53
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @UC, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @enetc_clear_mac_flt_entry(%struct.enetc_si* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %77
  %86 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.enetc_mac_filter*, %struct.enetc_mac_filter** %3, align 8
  %89 = getelementptr inbounds %struct.enetc_mac_filter, %struct.enetc_mac_filter* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i32*
  %92 = call i32 @enetc_set_mac_ht_flt(%struct.enetc_si* %86, i32 0, i32 %87, i32* %91)
  br label %93

93:                                               ; preds = %85, %69, %49
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  %96 = load %struct.enetc_mac_filter*, %struct.enetc_mac_filter** %3, align 8
  %97 = getelementptr inbounds %struct.enetc_mac_filter, %struct.enetc_mac_filter* %96, i32 1
  store %struct.enetc_mac_filter* %97, %struct.enetc_mac_filter** %3, align 8
  br label %17

98:                                               ; preds = %17
  ret void
}

declare dso_local i32 @enetc_clear_mac_flt_entry(%struct.enetc_si*, i32) #1

declare dso_local i32 @enetc_clear_mac_ht_flt(%struct.enetc_si*, i32, i32) #1

declare dso_local i32 @enetc_set_mac_flt_entry(%struct.enetc_si*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @enetc_set_mac_ht_flt(%struct.enetc_si*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
