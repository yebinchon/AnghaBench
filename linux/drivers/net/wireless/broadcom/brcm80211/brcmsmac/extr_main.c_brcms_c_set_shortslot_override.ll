; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_set_shortslot_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_set_shortslot_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }

@BRCM_BAND_5G = common dso_local global i64 0, align 8
@BRCMS_SHORTSLOT_AUTO = common dso_local global i64 0, align 8
@BRCMS_SHORTSLOT_ON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_set_shortslot_override(%struct.brcms_c_info* %0, i64 %1) #0 {
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca i64, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %7 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %6, i32 0, i32 0
  store i64 %5, i64* %7, align 8
  %8 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %9 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %8, i32 0, i32 3
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BRCM_BAND_5G, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %61

16:                                               ; preds = %2
  %17 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %18 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %25 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %61

31:                                               ; preds = %23, %16
  %32 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %33 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %40 = call i32 @brcms_c_switch_shortslot(%struct.brcms_c_info* %39, i32 0)
  br label %60

41:                                               ; preds = %31
  %42 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %43 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BRCMS_SHORTSLOT_AUTO, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %49 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %48, i32 0, i32 1
  store i32 0, i32* %49, align 8
  br label %59

50:                                               ; preds = %41
  %51 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %52 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BRCMS_SHORTSLOT_ON, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %58 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %50, %47
  br label %60

60:                                               ; preds = %59, %38
  br label %61

61:                                               ; preds = %15, %60, %30
  ret void
}

declare dso_local i32 @brcms_c_switch_shortslot(%struct.brcms_c_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
