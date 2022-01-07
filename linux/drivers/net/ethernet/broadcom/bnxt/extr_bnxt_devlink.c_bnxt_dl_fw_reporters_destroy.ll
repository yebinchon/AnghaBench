; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.c_bnxt_dl_fw_reporters_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.c_bnxt_dl_fw_reporters_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.bnxt_fw_health* }
%struct.bnxt_fw_health = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_dl_fw_reporters_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_dl_fw_reporters_destroy(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca %struct.bnxt_fw_health*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %4 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %5 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %4, i32 0, i32 0
  %6 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  store %struct.bnxt_fw_health* %6, %struct.bnxt_fw_health** %3, align 8
  %7 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %8 = icmp ne %struct.bnxt_fw_health* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %40

10:                                               ; preds = %1
  %11 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %12 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %17 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @devlink_health_reporter_destroy(i64 %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %22 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %27 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @devlink_health_reporter_destroy(i64 %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %32 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %37 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @devlink_health_reporter_destroy(i64 %38)
  br label %40

40:                                               ; preds = %9, %35, %30
  ret void
}

declare dso_local i32 @devlink_health_reporter_destroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
