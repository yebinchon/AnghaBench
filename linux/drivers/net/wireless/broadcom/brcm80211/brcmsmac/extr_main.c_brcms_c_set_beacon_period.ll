; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_set_beacon_period.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_set_beacon_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@tsf_cfprep = common dso_local global i32 0, align 4
@CFPREP_CBI_SHIFT = common dso_local global i32 0, align 4
@tsf_cfpstart = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_c_set_beacon_period(%struct.brcms_c_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcms_c_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %44

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %15 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 %18, 10
  store i32 %19, i32* %6, align 4
  %20 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %21 = call i32 @brcms_c_time_lock(%struct.brcms_c_info* %20)
  %22 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %23 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @tsf_cfprep, align 4
  %28 = call i32 @D11REGOFFS(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @CFPREP_CBI_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = call i32 @bcma_write32(i32 %26, i32 %28, i32 %31)
  %33 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %34 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @tsf_cfpstart, align 4
  %39 = call i32 @D11REGOFFS(i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @bcma_write32(i32 %37, i32 %39, i32 %40)
  %42 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %43 = call i32 @brcms_c_time_unlock(%struct.brcms_c_info* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %12, %9
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @brcms_c_time_lock(%struct.brcms_c_info*) #1

declare dso_local i32 @bcma_write32(i32, i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @brcms_c_time_unlock(%struct.brcms_c_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
