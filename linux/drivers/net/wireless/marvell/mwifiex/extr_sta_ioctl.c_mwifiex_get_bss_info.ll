; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_get_bss_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_get_bss_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__, %struct.mwifiex_adapter* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.mwifiex_bssdescriptor }
%struct.mwifiex_bssdescriptor = type { i32, i32, i32 }
%struct.mwifiex_adapter = type { i32, i32, i32* }
%struct.mwifiex_bss_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_COUNTRY_STRING_LEN = common dso_local global i32 0, align 4
@MWIFIEX_IS_HS_CONFIGURED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_get_bss_info(%struct.mwifiex_private* %0, %struct.mwifiex_bss_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.mwifiex_bss_info*, align 8
  %6 = alloca %struct.mwifiex_adapter*, align 8
  %7 = alloca %struct.mwifiex_bssdescriptor*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.mwifiex_bss_info* %1, %struct.mwifiex_bss_info** %5, align 8
  %8 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %9 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %8, i32 0, i32 8
  %10 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  store %struct.mwifiex_adapter* %10, %struct.mwifiex_adapter** %6, align 8
  %11 = load %struct.mwifiex_bss_info*, %struct.mwifiex_bss_info** %5, align 8
  %12 = icmp ne %struct.mwifiex_bss_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %95

14:                                               ; preds = %2
  %15 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %16 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.mwifiex_bssdescriptor* %17, %struct.mwifiex_bssdescriptor** %7, align 8
  %18 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %19 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mwifiex_bss_info*, %struct.mwifiex_bss_info** %5, align 8
  %22 = getelementptr inbounds %struct.mwifiex_bss_info, %struct.mwifiex_bss_info* %21, i32 0, i32 12
  store i32 %20, i32* %22, align 4
  %23 = load %struct.mwifiex_bss_info*, %struct.mwifiex_bss_info** %5, align 8
  %24 = getelementptr inbounds %struct.mwifiex_bss_info, %struct.mwifiex_bss_info* %23, i32 0, i32 11
  %25 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %7, align 8
  %26 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %25, i32 0, i32 2
  %27 = call i32 @memcpy(i32* %24, i32* %26, i32 4)
  %28 = load %struct.mwifiex_bss_info*, %struct.mwifiex_bss_info** %5, align 8
  %29 = getelementptr inbounds %struct.mwifiex_bss_info, %struct.mwifiex_bss_info* %28, i32 0, i32 10
  %30 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %7, align 8
  %31 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %30, i32 0, i32 1
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = call i32 @memcpy(i32* %29, i32* %31, i32 %32)
  %34 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %7, align 8
  %35 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mwifiex_bss_info*, %struct.mwifiex_bss_info** %5, align 8
  %38 = getelementptr inbounds %struct.mwifiex_bss_info, %struct.mwifiex_bss_info* %37, i32 0, i32 9
  store i32 %36, i32* %38, align 8
  %39 = load %struct.mwifiex_bss_info*, %struct.mwifiex_bss_info** %5, align 8
  %40 = getelementptr inbounds %struct.mwifiex_bss_info, %struct.mwifiex_bss_info* %39, i32 0, i32 8
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %43 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @IEEE80211_COUNTRY_STRING_LEN, align 4
  %46 = call i32 @memcpy(i32* %41, i32* %44, i32 %45)
  %47 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %48 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.mwifiex_bss_info*, %struct.mwifiex_bss_info** %5, align 8
  %51 = getelementptr inbounds %struct.mwifiex_bss_info, %struct.mwifiex_bss_info* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 4
  %52 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %53 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mwifiex_bss_info*, %struct.mwifiex_bss_info** %5, align 8
  %56 = getelementptr inbounds %struct.mwifiex_bss_info, %struct.mwifiex_bss_info* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 8
  %57 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %58 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mwifiex_bss_info*, %struct.mwifiex_bss_info** %5, align 8
  %61 = getelementptr inbounds %struct.mwifiex_bss_info, %struct.mwifiex_bss_info* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %63 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mwifiex_bss_info*, %struct.mwifiex_bss_info** %5, align 8
  %66 = getelementptr inbounds %struct.mwifiex_bss_info, %struct.mwifiex_bss_info* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %68 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.mwifiex_bss_info*, %struct.mwifiex_bss_info** %5, align 8
  %71 = getelementptr inbounds %struct.mwifiex_bss_info, %struct.mwifiex_bss_info* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %73 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %14
  %78 = load %struct.mwifiex_bss_info*, %struct.mwifiex_bss_info** %5, align 8
  %79 = getelementptr inbounds %struct.mwifiex_bss_info, %struct.mwifiex_bss_info* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %83

80:                                               ; preds = %14
  %81 = load %struct.mwifiex_bss_info*, %struct.mwifiex_bss_info** %5, align 8
  %82 = getelementptr inbounds %struct.mwifiex_bss_info, %struct.mwifiex_bss_info* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* @MWIFIEX_IS_HS_CONFIGURED, align 4
  %85 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %86 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %85, i32 0, i32 1
  %87 = call i32 @test_bit(i32 %84, i32* %86)
  %88 = load %struct.mwifiex_bss_info*, %struct.mwifiex_bss_info** %5, align 8
  %89 = getelementptr inbounds %struct.mwifiex_bss_info, %struct.mwifiex_bss_info* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %91 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.mwifiex_bss_info*, %struct.mwifiex_bss_info** %5, align 8
  %94 = getelementptr inbounds %struct.mwifiex_bss_info, %struct.mwifiex_bss_info* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %83, %13
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
