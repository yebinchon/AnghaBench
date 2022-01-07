; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_info = type { %struct.brcms_timer*, i32, i32*, i32*, i32, i64, i32, %struct.TYPE_2__ }
%struct.brcms_timer = type { %struct.brcms_timer*, %struct.brcms_timer* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"linux\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_info*)* @brcms_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_free(%struct.brcms_info* %0) #0 {
  %2 = alloca %struct.brcms_info*, align 8
  %3 = alloca %struct.brcms_timer*, align 8
  %4 = alloca %struct.brcms_timer*, align 8
  store %struct.brcms_info* %0, %struct.brcms_info** %2, align 8
  %5 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %6 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %5, i32 0, i32 7
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %12 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %11, i32 0, i32 6
  %13 = call i32 @brcms_ucode_data_free(i32* %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %16 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %21 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %24 = call i32 @free_irq(i64 %22, %struct.brcms_info* %23)
  br label %25

25:                                               ; preds = %19, %14
  %26 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %27 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %26, i32 0, i32 4
  %28 = call i32 @tasklet_kill(i32* %27)
  %29 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %30 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %35 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @brcms_debugfs_detach(i32* %36)
  %38 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %39 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %42 = call i32 @brcms_c_module_unregister(i32* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.brcms_info* %41)
  br label %43

43:                                               ; preds = %33, %25
  %44 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %45 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %50 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @brcms_c_detach(i32* %51)
  %53 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %54 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %53, i32 0, i32 3
  store i32* null, i32** %54, align 8
  %55 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %56 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %55, i32 0, i32 2
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %48, %43
  br label %58

58:                                               ; preds = %63, %57
  %59 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %60 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %59, i32 0, i32 1
  %61 = call i64 @atomic_read(i32* %60)
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 (...) @schedule()
  br label %58

65:                                               ; preds = %58
  %66 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %67 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %66, i32 0, i32 0
  %68 = load %struct.brcms_timer*, %struct.brcms_timer** %67, align 8
  store %struct.brcms_timer* %68, %struct.brcms_timer** %3, align 8
  br label %69

69:                                               ; preds = %78, %65
  %70 = load %struct.brcms_timer*, %struct.brcms_timer** %3, align 8
  %71 = icmp ne %struct.brcms_timer* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load %struct.brcms_timer*, %struct.brcms_timer** %3, align 8
  %74 = getelementptr inbounds %struct.brcms_timer, %struct.brcms_timer* %73, i32 0, i32 1
  %75 = load %struct.brcms_timer*, %struct.brcms_timer** %74, align 8
  store %struct.brcms_timer* %75, %struct.brcms_timer** %4, align 8
  %76 = load %struct.brcms_timer*, %struct.brcms_timer** %3, align 8
  %77 = call i32 @kfree(%struct.brcms_timer* %76)
  br label %78

78:                                               ; preds = %72
  %79 = load %struct.brcms_timer*, %struct.brcms_timer** %4, align 8
  store %struct.brcms_timer* %79, %struct.brcms_timer** %3, align 8
  br label %69

80:                                               ; preds = %69
  ret void
}

declare dso_local i32 @brcms_ucode_data_free(i32*) #1

declare dso_local i32 @free_irq(i64, %struct.brcms_info*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @brcms_debugfs_detach(i32*) #1

declare dso_local i32 @brcms_c_module_unregister(i32*, i8*, %struct.brcms_info*) #1

declare dso_local i32 @brcms_c_detach(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @kfree(%struct.brcms_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
