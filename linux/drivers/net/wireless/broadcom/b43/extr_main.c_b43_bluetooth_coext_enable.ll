; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_bluetooth_coext_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_bluetooth_coext_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { %struct.ssb_sprom* }
%struct.ssb_sprom = type { i32 }

@modparam_btcoex = common dso_local global i32 0, align 4
@B43_BFL_BTCOEXIST = common dso_local global i32 0, align 4
@B43_PHYTYPE_B = common dso_local global i64 0, align 8
@B43_BFL_BTCMOD = common dso_local global i32 0, align 4
@B43_HF_BTCOEXALT = common dso_local global i32 0, align 4
@B43_HF_BTCOEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_bluetooth_coext_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_bluetooth_coext_enable(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.ssb_sprom*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  store %struct.ssb_sprom* %9, %struct.ssb_sprom** %3, align 8
  %10 = load i32, i32* @modparam_btcoex, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %56

13:                                               ; preds = %1
  %14 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %15 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @B43_BFL_BTCOEXIST, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %56

21:                                               ; preds = %13
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %23 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @B43_PHYTYPE_B, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %30 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %56

35:                                               ; preds = %28, %21
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = call i32 @b43_hf_read(%struct.b43_wldev* %36)
  store i32 %37, i32* %4, align 4
  %38 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %39 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @B43_BFL_BTCMOD, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i32, i32* @B43_HF_BTCOEXALT, align 4
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %4, align 4
  br label %52

48:                                               ; preds = %35
  %49 = load i32, i32* @B43_HF_BTCOEX, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %44
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @b43_hf_write(%struct.b43_wldev* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %34, %20, %12
  ret void
}

declare dso_local i32 @b43_hf_read(%struct.b43_wldev*) #1

declare dso_local i32 @b43_hf_write(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
