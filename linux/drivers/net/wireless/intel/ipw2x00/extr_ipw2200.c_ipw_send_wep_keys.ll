; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_send_wep_keys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_send_wep_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32*, i64* }
%struct.ipw_wep_key = type { i32, i64, i32, i64, i32 }

@DINO_CMD_WEP_KEY = common dso_local global i32 0, align 4
@IPW_CMD_WEP_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*, i32)* @ipw_send_wep_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_send_wep_keys(%struct.ipw_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipw_wep_key, align 8
  %6 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @DINO_CMD_WEP_KEY, align 4
  %8 = getelementptr inbounds %struct.ipw_wep_key, %struct.ipw_wep_key* %5, i32 0, i32 4
  store i32 %7, i32* %8, align 8
  %9 = getelementptr inbounds %struct.ipw_wep_key, %struct.ipw_wep_key* %5, i32 0, i32 3
  store i64 0, i64* %9, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %60, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %63

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %14, %15
  %17 = getelementptr inbounds %struct.ipw_wep_key, %struct.ipw_wep_key* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.ipw_wep_key, %struct.ipw_wep_key* %5, i32 0, i32 1
  store i64 0, i64* %29, align 8
  br label %60

30:                                               ; preds = %13
  %31 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %32 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.ipw_wep_key, %struct.ipw_wep_key* %5, i32 0, i32 1
  store i64 %40, i64* %41, align 8
  %42 = getelementptr inbounds %struct.ipw_wep_key, %struct.ipw_wep_key* %5, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %45 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.ipw_wep_key, %struct.ipw_wep_key* %5, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @memcpy(i32 %43, i32 %53, i64 %55)
  %57 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %58 = load i32, i32* @IPW_CMD_WEP_KEY, align 4
  %59 = call i32 @ipw_send_cmd_pdu(%struct.ipw_priv* %57, i32 %58, i32 40, %struct.ipw_wep_key* %5)
  br label %60

60:                                               ; preds = %30, %28
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %10

63:                                               ; preds = %10
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @ipw_send_cmd_pdu(%struct.ipw_priv*, i32, i32, %struct.ipw_wep_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
