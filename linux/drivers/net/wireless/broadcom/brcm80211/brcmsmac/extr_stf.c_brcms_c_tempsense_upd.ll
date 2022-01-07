; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_stf.c_brcms_c_tempsense_upd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_stf.c_brcms_c_tempsense_upd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.brcms_phy_pub* }
%struct.brcms_phy_pub = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_tempsense_upd(%struct.brcms_c_info* %0) #0 {
  %2 = alloca %struct.brcms_c_info*, align 8
  %3 = alloca %struct.brcms_phy_pub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %2, align 8
  %6 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %7 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %9, align 8
  store %struct.brcms_phy_pub* %10, %struct.brcms_phy_pub** %3, align 8
  %11 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %3, align 8
  %12 = call i32 @wlc_phy_stf_chain_active_get(%struct.brcms_phy_pub* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 15
  store i32 %14, i32* %5, align 4
  %15 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %16 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %21 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %19, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %32 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %30, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @brcms_c_stf_txchain_set(%struct.brcms_c_info* %38, i32 %39, i32 1)
  br label %41

41:                                               ; preds = %37, %29, %26
  br label %68

42:                                               ; preds = %1
  %43 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %44 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %49 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %47, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %42
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %57 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %55, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @brcms_c_stf_txchain_set(%struct.brcms_c_info* %63, i32 %64, i32 1)
  br label %66

66:                                               ; preds = %62, %54
  br label %67

67:                                               ; preds = %66, %42
  br label %68

68:                                               ; preds = %67, %41
  ret void
}

declare dso_local i32 @wlc_phy_stf_chain_active_get(%struct.brcms_phy_pub*) #1

declare dso_local i32 @brcms_c_stf_txchain_set(%struct.brcms_c_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
