; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_rspec_to_rts_rspec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_rspec_to_rts_rspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_5__*, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@BRCM_RATE_11M = common dso_local global i32 0, align 4
@RSPEC_BW_MASK = common dso_local global i32 0, align 4
@PHY_TXC1_BW_40MHZ_DUP = common dso_local global i32 0, align 4
@RSPEC_BW_SHIFT = common dso_local global i32 0, align 4
@RSPEC_STF_MASK = common dso_local global i32 0, align 4
@RSPEC_STF_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_c_rspec_to_rts_rspec(%struct.brcms_c_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.brcms_c_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %9, align 4
  br label %41

14:                                               ; preds = %4
  %15 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %16 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %14
  %22 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %23 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @is_cck_rate(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %34 = load i32, i32* @BRCM_RATE_11M, align 4
  %35 = call i32 @brcms_basic_rate(%struct.brcms_c_info* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  br label %40

36:                                               ; preds = %28, %21, %14
  %37 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @brcms_basic_rate(%struct.brcms_c_info* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %36, %32
  br label %41

41:                                               ; preds = %40, %12
  %42 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %43 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = call i64 @BRCMS_PHY_11N_CAP(%struct.TYPE_6__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %90

47:                                               ; preds = %41
  %48 = load i32, i32* @RSPEC_BW_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @rspec_is40mhz(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %47
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @is_cck_rate(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @PHY_TXC1_BW_40MHZ_DUP, align 4
  %61 = load i32, i32* @RSPEC_BW_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %71

65:                                               ; preds = %55, %47
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @RSPEC_BW_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %65, %59
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @is_ofdm_rate(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load i32, i32* @RSPEC_STF_MASK, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %9, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %9, align 4
  %80 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %81 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @RSPEC_STF_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %75, %71
  br label %90

90:                                               ; preds = %89, %41
  %91 = load i32, i32* %9, align 4
  ret i32 %91
}

declare dso_local i32 @is_cck_rate(i32) #1

declare dso_local i32 @brcms_basic_rate(%struct.brcms_c_info*, i32) #1

declare dso_local i64 @BRCMS_PHY_11N_CAP(%struct.TYPE_6__*) #1

declare dso_local i64 @rspec_is40mhz(i32) #1

declare dso_local i64 @is_ofdm_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
