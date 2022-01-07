; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_pf_rx_push_rss_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_pf_rx_push_rss_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@ENOBUFS = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [107 x i8] c"Could not allocate an exclusive RSS context; allocated a shared one of different size. Wanted %u, got %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [109 x i8] c"Could not allocate an exclusive RSS context; allocated a shared one but could not apply custom indirection.\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"Could not allocate an exclusive RSS context; allocated a shared one.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, i32, i64*, i32*)* @efx_ef10_pf_rx_push_rss_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_pf_rx_push_rss_config(%struct.efx_nic* %0, i32 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %15 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %113

19:                                               ; preds = %4
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %9, align 8
  br label %27

27:                                               ; preds = %22, %19
  %28 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @efx_ef10_rx_push_exclusive_rss_config(%struct.efx_nic* %28, i64* %29, i32* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @ENOBUFS, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %111

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %111, label %39

39:                                               ; preds = %36
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  br label %40

40:                                               ; preds = %66, %39
  %41 = load i64, i64* %13, align 8
  %42 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %43 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @ARRAY_SIZE(i32 %45)
  %47 = icmp ult i64 %41, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %48, %40
  %53 = phi i1 [ false, %40 ], [ %51, %48 ]
  br i1 %53, label %54, label %69

54:                                               ; preds = %52
  %55 = load i64*, i64** %8, align 8
  %56 = load i64, i64* %13, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %61 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @ethtool_rxfh_indir_default(i64 %59, i32 %62)
  %64 = icmp ne i64 %58, %63
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %54
  %67 = load i64, i64* %13, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %13, align 8
  br label %40

69:                                               ; preds = %52
  %70 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %71 = call i32 @efx_ef10_rx_push_shared_rss_config(%struct.efx_nic* %70, i32* %11)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %110

74:                                               ; preds = %69
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %77 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %75, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %74
  %81 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %82 = load i32, i32* @probe, align 4
  %83 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %84 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %87 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_warn(%struct.efx_nic* %81, i32 %82, i32 %85, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %89)
  br label %109

91:                                               ; preds = %74
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %96 = load i32, i32* @probe, align 4
  %97 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %98 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_warn(%struct.efx_nic* %95, i32 %96, i32 %99, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.1, i64 0, i64 0))
  br label %108

101:                                              ; preds = %91
  %102 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %103 = load i32, i32* @probe, align 4
  %104 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %105 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @netif_info(%struct.efx_nic* %102, i32 %103, i32 %106, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0))
  br label %108

108:                                              ; preds = %101, %94
  br label %109

109:                                              ; preds = %108, %80
  br label %110

110:                                              ; preds = %109, %69
  br label %111

111:                                              ; preds = %110, %36, %27
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %111, %18
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @efx_ef10_rx_push_exclusive_rss_config(%struct.efx_nic*, i64*, i32*) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i64 @ethtool_rxfh_indir_default(i64, i32) #1

declare dso_local i32 @efx_ef10_rx_push_shared_rss_config(%struct.efx_nic*, i32*) #1

declare dso_local i32 @netif_warn(%struct.efx_nic*, i32, i32, i8*, ...) #1

declare dso_local i32 @netif_info(%struct.efx_nic*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
