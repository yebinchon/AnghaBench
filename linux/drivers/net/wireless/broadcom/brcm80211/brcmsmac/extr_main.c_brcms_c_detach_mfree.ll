; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_detach_mfree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_detach_mfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i64, i64, %struct.brcms_c_info*, %struct.brcms_c_info**, %struct.brcms_c_info*, %struct.brcms_c_info*, %struct.brcms_c_info*, %struct.brcms_c_info*, %struct.brcms_c_info*, %struct.brcms_c_info*, %struct.brcms_c_info*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_c_info*)* @brcms_c_detach_mfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_detach_mfree(%struct.brcms_c_info* %0) #0 {
  %2 = alloca %struct.brcms_c_info*, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %2, align 8
  %3 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %4 = icmp eq %struct.brcms_c_info* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %93

6:                                                ; preds = %1
  %7 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %8 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %7, i32 0, i32 11
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @brcms_c_bsscfg_mfree(i32 %9)
  %11 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %12 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %11, i32 0, i32 10
  %13 = load %struct.brcms_c_info*, %struct.brcms_c_info** %12, align 8
  %14 = call i32 @kfree(%struct.brcms_c_info* %13)
  %15 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %16 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %15, i32 0, i32 9
  %17 = load %struct.brcms_c_info*, %struct.brcms_c_info** %16, align 8
  %18 = call i32 @kfree(%struct.brcms_c_info* %17)
  %19 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %20 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %19, i32 0, i32 8
  %21 = load %struct.brcms_c_info*, %struct.brcms_c_info** %20, align 8
  %22 = call i32 @kfree(%struct.brcms_c_info* %21)
  %23 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %24 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %23, i32 0, i32 7
  %25 = load %struct.brcms_c_info*, %struct.brcms_c_info** %24, align 8
  %26 = call i32 @kfree(%struct.brcms_c_info* %25)
  %27 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %28 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %27, i32 0, i32 6
  %29 = load %struct.brcms_c_info*, %struct.brcms_c_info** %28, align 8
  %30 = call i32 @kfree(%struct.brcms_c_info* %29)
  %31 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %32 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %31, i32 0, i32 3
  %33 = load %struct.brcms_c_info**, %struct.brcms_c_info*** %32, align 8
  %34 = getelementptr inbounds %struct.brcms_c_info*, %struct.brcms_c_info** %33, i64 0
  %35 = load %struct.brcms_c_info*, %struct.brcms_c_info** %34, align 8
  %36 = call i32 @kfree(%struct.brcms_c_info* %35)
  %37 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %38 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %37, i32 0, i32 4
  %39 = load %struct.brcms_c_info*, %struct.brcms_c_info** %38, align 8
  %40 = icmp ne %struct.brcms_c_info* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %6
  %42 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %43 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %42, i32 0, i32 4
  %44 = load %struct.brcms_c_info*, %struct.brcms_c_info** %43, align 8
  %45 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %44, i32 0, i32 5
  %46 = load %struct.brcms_c_info*, %struct.brcms_c_info** %45, align 8
  %47 = call i32 @kfree(%struct.brcms_c_info* %46)
  br label %48

48:                                               ; preds = %41, %6
  %49 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %50 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %49, i32 0, i32 4
  %51 = load %struct.brcms_c_info*, %struct.brcms_c_info** %50, align 8
  %52 = call i32 @kfree(%struct.brcms_c_info* %51)
  %53 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %54 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %53, i32 0, i32 2
  %55 = load %struct.brcms_c_info*, %struct.brcms_c_info** %54, align 8
  %56 = icmp ne %struct.brcms_c_info* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %48
  %58 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %59 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %58, i32 0, i32 2
  %60 = load %struct.brcms_c_info*, %struct.brcms_c_info** %59, align 8
  %61 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %60, i32 0, i32 3
  %62 = load %struct.brcms_c_info**, %struct.brcms_c_info*** %61, align 8
  %63 = getelementptr inbounds %struct.brcms_c_info*, %struct.brcms_c_info** %62, i64 0
  %64 = load %struct.brcms_c_info*, %struct.brcms_c_info** %63, align 8
  %65 = call i32 @kfree(%struct.brcms_c_info* %64)
  br label %66

66:                                               ; preds = %57, %48
  %67 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %68 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %67, i32 0, i32 2
  %69 = load %struct.brcms_c_info*, %struct.brcms_c_info** %68, align 8
  %70 = call i32 @kfree(%struct.brcms_c_info* %69)
  %71 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %72 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %66
  %76 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %77 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @dev_kfree_skb_any(i64 %78)
  br label %80

80:                                               ; preds = %75, %66
  %81 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %82 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %87 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @dev_kfree_skb_any(i64 %88)
  br label %90

90:                                               ; preds = %85, %80
  %91 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %92 = call i32 @kfree(%struct.brcms_c_info* %91)
  br label %93

93:                                               ; preds = %90, %5
  ret void
}

declare dso_local i32 @brcms_c_bsscfg_mfree(i32) #1

declare dso_local i32 @kfree(%struct.brcms_c_info*) #1

declare dso_local i32 @dev_kfree_skb_any(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
