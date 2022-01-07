; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_wl3501_cs.c_wl3501_mgmt_resync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_wl3501_cs.c_wl3501_mgmt_resync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl3501_card = type { i32 }
%struct.wl3501_resync_req = type { i32 }

@WL3501_SIG_RESYNC_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl3501_card*)* @wl3501_mgmt_resync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl3501_mgmt_resync(%struct.wl3501_card* %0) #0 {
  %2 = alloca %struct.wl3501_card*, align 8
  %3 = alloca %struct.wl3501_resync_req, align 4
  store %struct.wl3501_card* %0, %struct.wl3501_card** %2, align 8
  %4 = getelementptr inbounds %struct.wl3501_resync_req, %struct.wl3501_resync_req* %3, i32 0, i32 0
  %5 = load i32, i32* @WL3501_SIG_RESYNC_REQ, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.wl3501_card*, %struct.wl3501_card** %2, align 8
  %7 = call i32 @wl3501_esbq_exec(%struct.wl3501_card* %6, %struct.wl3501_resync_req* %3, i32 4)
  ret i32 %7
}

declare dso_local i32 @wl3501_esbq_exec(%struct.wl3501_card*, %struct.wl3501_resync_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
