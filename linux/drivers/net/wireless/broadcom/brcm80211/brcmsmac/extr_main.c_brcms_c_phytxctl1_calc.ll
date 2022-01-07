; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_phytxctl1_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_phytxctl1_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.brcms_c_info = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@PHY_TXC1_BW_20MHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"phytxctl1_calc: bw %d is not supported yet, set to 20L\0A\00", align 1
@RSPEC_RATE_MASK = common dso_local global i64 0, align 8
@mcs_table = common dso_local global %struct.TYPE_4__* null, align 8
@PHY_TXC1_MODE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"phytxctl1_calc: wrong legacy OFDM/CCK rate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_c_info*, i64)* @brcms_c_phytxctl1_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_c_phytxctl1_calc(%struct.brcms_c_info* %0, i64 %1) #0 {
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %10 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @BRCMS_ISLCNPHY(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @PHY_TXC1_BW_20MHZ, align 4
  store i32 %15, i32* %6, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @rspec_get_bw(i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PHY_TXC1_BW_20MHZ, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %24 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i32, i8*, ...) @brcms_err(i32 %27, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @PHY_TXC1_BW_20MHZ, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %22, %16
  br label %32

32:                                               ; preds = %31, %14
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @is_mcs_rate(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @RSPEC_RATE_MASK, align 8
  %39 = and i64 %37, %38
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @rspec_phytxbyte2(i64 %40)
  store i32 %41, i32* %5, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mcs_table, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %97

50:                                               ; preds = %32
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @is_cck_rate(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %50
  %55 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %56 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @BRCMS_ISLCNPHY(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %54
  %61 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %62 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @BRCMS_ISSSLPNPHY(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @rspec_stf(i64 %68)
  %70 = load i32, i32* @PHY_TXC1_MODE_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = or i32 %67, %71
  store i32 %72, i32* %5, align 4
  br label %96

73:                                               ; preds = %60, %54, %50
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @rspec2rate(i64 %74)
  %76 = call i32 @brcms_c_rate_legacy_phyctl(i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %81 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, ...) @brcms_err(i32 %84, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %79, %73
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %8, align 4
  %89 = shl i32 %88, 8
  %90 = or i32 %87, %89
  %91 = load i64, i64* %4, align 8
  %92 = call i32 @rspec_stf(i64 %91)
  %93 = load i32, i32* @PHY_TXC1_MODE_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = or i32 %90, %94
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %86, %66
  br label %97

97:                                               ; preds = %96, %36
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i64 @BRCMS_ISLCNPHY(i32) #1

declare dso_local i32 @rspec_get_bw(i64) #1

declare dso_local i32 @brcms_err(i32, i8*, ...) #1

declare dso_local i64 @is_mcs_rate(i64) #1

declare dso_local i32 @rspec_phytxbyte2(i64) #1

declare dso_local i64 @is_cck_rate(i64) #1

declare dso_local i32 @BRCMS_ISSSLPNPHY(i32) #1

declare dso_local i32 @rspec_stf(i64) #1

declare dso_local i32 @brcms_c_rate_legacy_phyctl(i32) #1

declare dso_local i32 @rspec2rate(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
