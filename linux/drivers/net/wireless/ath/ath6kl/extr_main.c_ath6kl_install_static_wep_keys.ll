; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_install_static_wep_keys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_install_static_wep_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@WMI_MAX_KEY_INDEX = common dso_local global i64 0, align 8
@GROUP_USAGE = common dso_local global i64 0, align 8
@TX_USAGE = common dso_local global i64 0, align 8
@WEP_CRYPT = common dso_local global i32 0, align 4
@KEY_OP_INIT_VAL = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath6kl_vif*)* @ath6kl_install_static_wep_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_install_static_wep_keys(%struct.ath6kl_vif* %0) #0 {
  %2 = alloca %struct.ath6kl_vif*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %59, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @WMI_MAX_KEY_INDEX, align 8
  %8 = icmp ule i64 %6, %7
  br i1 %8, label %9, label %62

9:                                                ; preds = %5
  %10 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %11 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %9
  %19 = load i64, i64* @GROUP_USAGE, align 8
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %22 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i64, i64* @TX_USAGE, align 8
  %27 = load i64, i64* %4, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %25, %18
  %30 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %31 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %36 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %3, align 8
  %39 = load i32, i32* @WEP_CRYPT, align 4
  %40 = load i64, i64* %4, align 8
  %41 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %42 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i64, i64* %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %49 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i64, i64* %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @KEY_OP_INIT_VAL, align 4
  %56 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %57 = call i32 @ath6kl_wmi_addkey_cmd(i32 %34, i32 %37, i64 %38, i32 %39, i64 %40, i64 %47, i32* null, i32 0, i32 %54, i32 %55, i32* null, i32 %56)
  br label %58

58:                                               ; preds = %29, %9
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %3, align 8
  br label %5

62:                                               ; preds = %5
  ret void
}

declare dso_local i32 @ath6kl_wmi_addkey_cmd(i32, i32, i64, i32, i64, i64, i32*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
