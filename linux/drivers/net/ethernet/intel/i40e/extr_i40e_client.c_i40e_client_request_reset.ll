; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_client.c_i40e_client_request_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_client.c_i40e_client_request_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_info = type { %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i40e_client = type { i32 }

@__I40E_PF_RESET_REQUESTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Client for PF id %d requested an unsupported reset: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_info*, %struct.i40e_client*, i32)* @i40e_client_request_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_client_request_reset(%struct.i40e_info* %0, %struct.i40e_client* %1, i32 %2) #0 {
  %4 = alloca %struct.i40e_info*, align 8
  %5 = alloca %struct.i40e_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_pf*, align 8
  store %struct.i40e_info* %0, %struct.i40e_info** %4, align 8
  store %struct.i40e_client* %1, %struct.i40e_client** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.i40e_info*, %struct.i40e_info** %4, align 8
  %9 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %8, i32 0, i32 0
  %10 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  store %struct.i40e_pf* %10, %struct.i40e_pf** %7, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %24 [
    i32 128, label %12
    i32 129, label %18
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @__I40E_PF_RESET_REQUESTED, align 4
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %15 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @set_bit(i32 %13, i32 %16)
  br label %35

18:                                               ; preds = %3
  %19 = load i32, i32* @__I40E_PF_RESET_REQUESTED, align 4
  %20 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %21 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @set_bit(i32 %19, i32 %22)
  br label %35

24:                                               ; preds = %3
  %25 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %26 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %30 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_warn(i32* %28, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %24, %18, %12
  %36 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %37 = call i32 @i40e_service_event_schedule(%struct.i40e_pf* %36)
  ret void
}

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @i40e_service_event_schedule(%struct.i40e_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
