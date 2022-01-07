; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_hif.h_ath10k_hif_get_target_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_hif.h_ath10k_hif_get_target_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.bmi_target_info = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.bmi_target_info*)* @ath10k_hif_get_target_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_hif_get_target_info(%struct.ath10k* %0, %struct.bmi_target_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.bmi_target_info*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.bmi_target_info* %1, %struct.bmi_target_info** %5, align 8
  %6 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %7 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.ath10k*, %struct.bmi_target_info*)**
  %12 = load i32 (%struct.ath10k*, %struct.bmi_target_info*)*, i32 (%struct.ath10k*, %struct.bmi_target_info*)** %11, align 8
  %13 = icmp ne i32 (%struct.ath10k*, %struct.bmi_target_info*)* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %19 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.ath10k*, %struct.bmi_target_info*)**
  %24 = load i32 (%struct.ath10k*, %struct.bmi_target_info*)*, i32 (%struct.ath10k*, %struct.bmi_target_info*)** %23, align 8
  %25 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %26 = load %struct.bmi_target_info*, %struct.bmi_target_info** %5, align 8
  %27 = call i32 %24(%struct.ath10k* %25, %struct.bmi_target_info* %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %17, %14
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
