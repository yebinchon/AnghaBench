; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_set_ratetable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_set_ratetable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.brcms_c_rateset = type { i64, i32* }

@BRCMS_RATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_c_info*)* @brcms_c_set_ratetable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_set_ratetable(%struct.brcms_c_info* %0) #0 {
  %2 = alloca %struct.brcms_c_info*, align 8
  %3 = alloca %struct.brcms_c_rateset*, align 8
  %4 = alloca %struct.brcms_c_rateset, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %2, align 8
  %8 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %9 = call %struct.brcms_c_rateset* @brcms_c_rateset_get_hwrs(%struct.brcms_c_info* %8)
  store %struct.brcms_c_rateset* %9, %struct.brcms_c_rateset** %3, align 8
  %10 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %3, align 8
  %11 = call i32 @brcms_c_rateset_copy(%struct.brcms_c_rateset* %10, %struct.brcms_c_rateset* %4)
  %12 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %13 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @brcms_c_rateset_mcs_upd(%struct.brcms_c_rateset* %4, i32 %16)
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %48, %1
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %4, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %4, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BRCMS_RATE_MASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %5, align 4
  %31 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @brcms_basic_rate(%struct.brcms_c_info* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %4, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @BRCMS_RATE_MASK, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %36, %23
  %44 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @brcms_c_write_rate_shm(%struct.brcms_c_info* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %7, align 8
  br label %18

51:                                               ; preds = %18
  ret void
}

declare dso_local %struct.brcms_c_rateset* @brcms_c_rateset_get_hwrs(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_c_rateset_copy(%struct.brcms_c_rateset*, %struct.brcms_c_rateset*) #1

declare dso_local i32 @brcms_c_rateset_mcs_upd(%struct.brcms_c_rateset*, i32) #1

declare dso_local i32 @brcms_basic_rate(%struct.brcms_c_info*, i32) #1

declare dso_local i32 @brcms_c_write_rate_shm(%struct.brcms_c_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
