; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_exe_queue_alloc_elem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_exe_queue_alloc_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_exeq_elem = type { i32 }
%struct.bnx2x = type { i32 }

@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Allocating a new exe_queue element\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bnx2x_exeq_elem* (%struct.bnx2x*)* @bnx2x_exe_queue_alloc_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bnx2x_exeq_elem* @bnx2x_exe_queue_alloc_elem(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %3 = load i32, i32* @BNX2X_MSG_SP, align 4
  %4 = call i32 @DP(i32 %3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = call %struct.bnx2x_exeq_elem* @kzalloc(i32 4, i32 %5)
  ret %struct.bnx2x_exeq_elem* %6
}

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local %struct.bnx2x_exeq_elem* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
