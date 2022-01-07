; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.h_bnxt_get_bp_from_dl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.h_bnxt_get_bp_from_dl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.devlink = type { i32 }
%struct.bnxt_dl = type { %struct.bnxt* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bnxt* (%struct.devlink*)* @bnxt_get_bp_from_dl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bnxt* @bnxt_get_bp_from_dl(%struct.devlink* %0) #0 {
  %2 = alloca %struct.devlink*, align 8
  store %struct.devlink* %0, %struct.devlink** %2, align 8
  %3 = load %struct.devlink*, %struct.devlink** %2, align 8
  %4 = call i64 @devlink_priv(%struct.devlink* %3)
  %5 = inttoptr i64 %4 to %struct.bnxt_dl*
  %6 = getelementptr inbounds %struct.bnxt_dl, %struct.bnxt_dl* %5, i32 0, i32 0
  %7 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  ret %struct.bnxt* %7
}

declare dso_local i64 @devlink_priv(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
