; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.c_bnxt_fw_reset_recover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.c_bnxt_fw_reset_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_health_reporter = type { i32 }
%struct.bnxt = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_health_reporter*, i8*)* @bnxt_fw_reset_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_fw_reset_recover(%struct.devlink_health_reporter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devlink_health_reporter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bnxt*, align 8
  store %struct.devlink_health_reporter* %0, %struct.devlink_health_reporter** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %4, align 8
  %8 = call %struct.bnxt* @devlink_health_reporter_priv(%struct.devlink_health_reporter* %7)
  store %struct.bnxt* %8, %struct.bnxt** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %17

14:                                               ; preds = %2
  %15 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %16 = call i32 @bnxt_fw_reset(%struct.bnxt* %15)
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local %struct.bnxt* @devlink_health_reporter_priv(%struct.devlink_health_reporter*) #1

declare dso_local i32 @bnxt_fw_reset(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
