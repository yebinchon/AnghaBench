; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-ops.h_ath10k_wmi_pull_phyerr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-ops.h_ath10k_wmi_pull_phyerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.wmi_phyerr_ev_arg = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i8*, i32, %struct.wmi_phyerr_ev_arg*)* @ath10k_wmi_pull_phyerr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_pull_phyerr(%struct.ath10k* %0, i8* %1, i32 %2, %struct.wmi_phyerr_ev_arg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wmi_phyerr_ev_arg*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.wmi_phyerr_ev_arg* %3, %struct.wmi_phyerr_ev_arg** %9, align 8
  %10 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %11 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.ath10k*, i8*, i32, %struct.wmi_phyerr_ev_arg*)**
  %16 = load i32 (%struct.ath10k*, i8*, i32, %struct.wmi_phyerr_ev_arg*)*, i32 (%struct.ath10k*, i8*, i32, %struct.wmi_phyerr_ev_arg*)** %15, align 8
  %17 = icmp ne i32 (%struct.ath10k*, i8*, i32, %struct.wmi_phyerr_ev_arg*)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %34

21:                                               ; preds = %4
  %22 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %23 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.ath10k*, i8*, i32, %struct.wmi_phyerr_ev_arg*)**
  %28 = load i32 (%struct.ath10k*, i8*, i32, %struct.wmi_phyerr_ev_arg*)*, i32 (%struct.ath10k*, i8*, i32, %struct.wmi_phyerr_ev_arg*)** %27, align 8
  %29 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %33 = call i32 %28(%struct.ath10k* %29, i8* %30, i32 %31, %struct.wmi_phyerr_ev_arg* %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %21, %18
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
