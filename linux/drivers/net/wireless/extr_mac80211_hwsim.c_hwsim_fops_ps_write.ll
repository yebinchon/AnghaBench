; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_hwsim_fops_ps_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_hwsim_fops_ps_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac80211_hwsim_data = type { i64, i32 }

@PS_DISABLED = common dso_local global i64 0, align 8
@PS_ENABLED = common dso_local global i64 0, align 8
@PS_AUTO_POLL = common dso_local global i64 0, align 8
@PS_MANUAL_POLL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_IFACE_ITER_NORMAL = common dso_local global i32 0, align 4
@hwsim_send_ps_poll = common dso_local global i32 0, align 4
@hwsim_send_nullfunc_ps = common dso_local global i32 0, align 4
@hwsim_send_nullfunc_no_ps = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @hwsim_fops_ps_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwsim_fops_ps_write(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mac80211_hwsim_data*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.mac80211_hwsim_data*
  store %struct.mac80211_hwsim_data* %9, %struct.mac80211_hwsim_data** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @PS_DISABLED, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @PS_ENABLED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @PS_AUTO_POLL, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @PS_MANUAL_POLL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %96

28:                                               ; preds = %21, %17, %13, %2
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @PS_MANUAL_POLL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %6, align 8
  %34 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PS_ENABLED, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %96

41:                                               ; preds = %32
  %42 = call i32 (...) @local_bh_disable()
  %43 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %6, align 8
  %44 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %47 = load i32, i32* @hwsim_send_ps_poll, align 4
  %48 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %6, align 8
  %49 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %45, i32 %46, i32 %47, %struct.mac80211_hwsim_data* %48)
  %50 = call i32 (...) @local_bh_enable()
  store i32 0, i32* %3, align 4
  br label %96

51:                                               ; preds = %28
  %52 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %6, align 8
  %53 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %7, align 4
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %6, align 8
  %58 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = call i32 (...) @local_bh_disable()
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = load i64, i64* @PS_DISABLED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %51
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* @PS_DISABLED, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %6, align 8
  %70 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %73 = load i32, i32* @hwsim_send_nullfunc_ps, align 4
  %74 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %6, align 8
  %75 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %71, i32 %72, i32 %73, %struct.mac80211_hwsim_data* %74)
  br label %94

76:                                               ; preds = %64, %51
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = load i64, i64* @PS_DISABLED, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* @PS_DISABLED, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %6, align 8
  %87 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %90 = load i32, i32* @hwsim_send_nullfunc_no_ps, align 4
  %91 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %6, align 8
  %92 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %88, i32 %89, i32 %90, %struct.mac80211_hwsim_data* %91)
  br label %93

93:                                               ; preds = %85, %81, %76
  br label %94

94:                                               ; preds = %93, %68
  %95 = call i32 (...) @local_bh_enable()
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %41, %38, %25
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.mac80211_hwsim_data*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
