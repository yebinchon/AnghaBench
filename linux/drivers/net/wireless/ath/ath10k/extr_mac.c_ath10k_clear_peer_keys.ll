; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_clear_peer_keys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_clear_peer_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i32, %struct.ath10k* }
%struct.ath10k = type { i32, i32 }
%struct.ath10k_peer = type { i32** }

@ENOENT = common dso_local global i32 0, align 4
@DISABLE_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to remove peer wep key %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_vif*, i32*)* @ath10k_clear_peer_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_clear_peer_keys(%struct.ath10k_vif* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k_vif*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.ath10k_peer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %13 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %12, i32 0, i32 1
  %14 = load %struct.ath10k*, %struct.ath10k** %13, align 8
  store %struct.ath10k* %14, %struct.ath10k** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %16 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %15, i32 0, i32 1
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %19 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_bh(i32* %19)
  %21 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %22 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %23 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call %struct.ath10k_peer* @ath10k_peer_find(%struct.ath10k* %21, i32 %24, i32* %25)
  store %struct.ath10k_peer* %26, %struct.ath10k_peer** %7, align 8
  %27 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %28 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock_bh(i32* %28)
  %30 = load %struct.ath10k_peer*, %struct.ath10k_peer** %7, align 8
  %31 = icmp ne %struct.ath10k_peer* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %99

35:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %94, %35
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.ath10k_peer*, %struct.ath10k_peer** %7, align 8
  %39 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %38, i32 0, i32 0
  %40 = load i32**, i32*** %39, align 8
  %41 = call i32 @ARRAY_SIZE(i32** %40)
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %97

43:                                               ; preds = %36
  %44 = load %struct.ath10k_peer*, %struct.ath10k_peer** %7, align 8
  %45 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %44, i32 0, i32 0
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %94

53:                                               ; preds = %43
  %54 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %55 = load %struct.ath10k_peer*, %struct.ath10k_peer** %7, align 8
  %56 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %55, i32 0, i32 0
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* @DISABLE_KEY, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @ath10k_install_key(%struct.ath10k_vif* %54, i32* %61, i32 %62, i32* %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %53
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %71, %68, %53
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @ath10k_warn(%struct.ath10k* %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %73
  %82 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %83 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %82, i32 0, i32 0
  %84 = call i32 @spin_lock_bh(i32* %83)
  %85 = load %struct.ath10k_peer*, %struct.ath10k_peer** %7, align 8
  %86 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %85, i32 0, i32 0
  %87 = load i32**, i32*** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  store i32* null, i32** %90, align 8
  %91 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %92 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %91, i32 0, i32 0
  %93 = call i32 @spin_unlock_bh(i32* %92)
  br label %94

94:                                               ; preds = %81, %52
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %36

97:                                               ; preds = %36
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %32
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.ath10k_peer* @ath10k_peer_find(%struct.ath10k*, i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @ath10k_install_key(%struct.ath10k_vif*, i32*, i32, i32*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
