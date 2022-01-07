; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_enable_mc_magic_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_enable_mc_magic_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i64, %struct.TYPE_10__*, %struct.TYPE_7__**, %struct.i40e_hw }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.i40e_hw = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Failed to retrieve MAC address; using default\0A\00", align 1
@I40E_AQC_WRITE_TYPE_LAA_WOL = common dso_local global i32 0, align 4
@I40E_AQC_WRITE_TYPE_LAA_ONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [85 x i8] c"Failed to update MAC address registers; cannot enable Multicast Magic packet wake up\00", align 1
@I40E_AQC_MC_MAG_EN = common dso_local global i32 0, align 4
@I40E_AQC_WOL_PRESERVE_ON_PFR = common dso_local global i32 0, align 4
@I40E_AQC_WRITE_TYPE_UPDATE_MC_MAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Failed to enable Multicast Magic Packet wake up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*)* @i40e_enable_mc_magic_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_enable_mc_magic_wake(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [6 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %7 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %8 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %7, i32 0, i32 3
  store %struct.i40e_hw* %8, %struct.i40e_hw** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %10 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %9, i32 0, i32 2
  %11 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %13 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %11, i64 %14
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %45

18:                                               ; preds = %1
  %19 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %20 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %20, align 8
  %22 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %23 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %21, i64 %24
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %18
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %32 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %33 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %32, i32 0, i32 2
  %34 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %33, align 8
  %35 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %36 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %34, i64 %37
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ether_addr_copy(i32* %31, i32 %43)
  br label %57

45:                                               ; preds = %18, %1
  %46 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %47 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %46, i32 0, i32 1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %51 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %52 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %53 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ether_addr_copy(i32* %51, i32 %55)
  br label %57

57:                                               ; preds = %45, %30
  %58 = load i32, i32* @I40E_AQC_WRITE_TYPE_LAA_WOL, align 4
  store i32 %58, i32* %6, align 4
  %59 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %60 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %66 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @I40E_AQC_WRITE_TYPE_LAA_ONLY, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %69, %64, %57
  %72 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %73 = load i32, i32* %6, align 4
  %74 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %75 = call i64 @i40e_aq_mac_address_write(%struct.i40e_hw* %72, i32 %73, i32* %74, i32* null)
  store i64 %75, i64* %4, align 8
  %76 = load i64, i64* %4, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %80 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %79, i32 0, i32 1
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0))
  br label %102

84:                                               ; preds = %71
  %85 = load i32, i32* @I40E_AQC_MC_MAG_EN, align 4
  %86 = load i32, i32* @I40E_AQC_WOL_PRESERVE_ON_PFR, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @I40E_AQC_WRITE_TYPE_UPDATE_MC_MAG, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %6, align 4
  %90 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %91 = load i32, i32* %6, align 4
  %92 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %93 = call i64 @i40e_aq_mac_address_write(%struct.i40e_hw* %90, i32 %91, i32* %92, i32* null)
  store i64 %93, i64* %4, align 8
  %94 = load i64, i64* %4, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %84
  %97 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %98 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %97, i32 0, i32 1
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = call i32 @dev_err(i32* %100, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %102

102:                                              ; preds = %78, %96, %84
  ret void
}

declare dso_local i32 @ether_addr_copy(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @i40e_aq_mac_address_write(%struct.i40e_hw*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
