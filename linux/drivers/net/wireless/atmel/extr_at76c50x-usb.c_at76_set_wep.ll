; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_set_wep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_set_wep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at76_priv = type { i64*, i64, %struct.TYPE_5__*, %struct.TYPE_6__, i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mib_mac_wep }
%struct.mib_mac_wep = type { i32, i32, i64, i32, i64 }

@MIB_MAC_WEP = common dso_local global i32 0, align 4
@WEP_SMALL_KEY_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"set_mib (wep) failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at76_priv*)* @at76_set_wep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at76_set_wep(%struct.at76_priv* %0) #0 {
  %2 = alloca %struct.at76_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mib_mac_wep*, align 8
  store %struct.at76_priv* %0, %struct.at76_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %6 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.mib_mac_wep* %8, %struct.mib_mac_wep** %4, align 8
  %9 = load i32, i32* @MIB_MAC_WEP, align 4
  %10 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %11 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  store i32 %9, i32* %12, align 8
  %13 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %14 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 32, i32* %15, align 8
  %16 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %17 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.mib_mac_wep*, %struct.mib_mac_wep** %4, align 8
  %20 = call i32 @memset(%struct.mib_mac_wep* %19, i32 0, i32 32)
  %21 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %22 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %1
  %26 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %27 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %30 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @WEP_SMALL_KEY_LEN, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load %struct.mib_mac_wep*, %struct.mib_mac_wep** %4, align 8
  %38 = getelementptr inbounds %struct.mib_mac_wep, %struct.mib_mac_wep* %37, i32 0, i32 0
  store i32 2, i32* %38, align 8
  br label %42

39:                                               ; preds = %25
  %40 = load %struct.mib_mac_wep*, %struct.mib_mac_wep** %4, align 8
  %41 = getelementptr inbounds %struct.mib_mac_wep, %struct.mib_mac_wep* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.mib_mac_wep*, %struct.mib_mac_wep** %4, align 8
  %44 = getelementptr inbounds %struct.mib_mac_wep, %struct.mib_mac_wep* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  br label %50

45:                                               ; preds = %1
  %46 = load %struct.mib_mac_wep*, %struct.mib_mac_wep** %4, align 8
  %47 = getelementptr inbounds %struct.mib_mac_wep, %struct.mib_mac_wep* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.mib_mac_wep*, %struct.mib_mac_wep** %4, align 8
  %49 = getelementptr inbounds %struct.mib_mac_wep, %struct.mib_mac_wep* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %45, %42
  %51 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %52 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.mib_mac_wep*, %struct.mib_mac_wep** %4, align 8
  %55 = getelementptr inbounds %struct.mib_mac_wep, %struct.mib_mac_wep* %54, i32 0, i32 4
  store i64 %53, i64* %55, align 8
  %56 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %57 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.mib_mac_wep*, %struct.mib_mac_wep** %4, align 8
  %60 = getelementptr inbounds %struct.mib_mac_wep, %struct.mib_mac_wep* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  %61 = load %struct.mib_mac_wep*, %struct.mib_mac_wep** %4, align 8
  %62 = getelementptr inbounds %struct.mib_mac_wep, %struct.mib_mac_wep* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %65 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @memcpy(i32 %63, i32 %66, i32 4)
  %68 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %69 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %70 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %69, i32 0, i32 3
  %71 = call i32 @at76_set_mib(%struct.at76_priv* %68, %struct.TYPE_6__* %70)
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %3, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %50
  %75 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %76 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %75, i32 0, i32 2
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @wiphy_err(i32 %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %74, %50
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @memset(%struct.mib_mac_wep*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @at76_set_mib(%struct.at76_priv*, %struct.TYPE_6__*) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
