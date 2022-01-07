; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_wl3501_cs.c_wl3501_auth_confirm_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_wl3501_cs.c_wl3501_auth_confirm_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl3501_card = type { i32 }
%struct.wl3501_auth_confirm = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@WL3501_STATUS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl3501_card*, i32)* @wl3501_auth_confirm_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl3501_auth_confirm_interrupt(%struct.wl3501_card* %0, i32 %1) #0 {
  %3 = alloca %struct.wl3501_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl3501_auth_confirm, align 8
  store %struct.wl3501_card* %0, %struct.wl3501_card** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @wl3501_get_from_wla(%struct.wl3501_card* %7, i32 %8, %struct.wl3501_auth_confirm* %5, i32 8)
  %10 = getelementptr inbounds %struct.wl3501_auth_confirm, %struct.wl3501_auth_confirm* %5, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @WL3501_STATUS_SUCCESS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %16 = call i32 @wl3501_mgmt_association(%struct.wl3501_card* %15)
  br label %20

17:                                               ; preds = %2
  %18 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %19 = call i32 @wl3501_mgmt_resync(%struct.wl3501_card* %18)
  br label %20

20:                                               ; preds = %17, %14
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @wl3501_get_from_wla(%struct.wl3501_card*, i32, %struct.wl3501_auth_confirm*, i32) #1

declare dso_local i32 @wl3501_mgmt_association(%struct.wl3501_card*) #1

declare dso_local i32 @wl3501_mgmt_resync(%struct.wl3501_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
