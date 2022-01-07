; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_clean_mailboxq_subtask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_clean_mailboxq_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { i32, %struct.ice_hw }
%struct.ice_hw = type { i32 }

@__ICE_MAILBOXQ_EVENT_PENDING = common dso_local global i32 0, align 4
@ICE_CTL_Q_MAILBOX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_pf*)* @ice_clean_mailboxq_subtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_clean_mailboxq_subtask(%struct.ice_pf* %0) #0 {
  %2 = alloca %struct.ice_pf*, align 8
  %3 = alloca %struct.ice_hw*, align 8
  store %struct.ice_pf* %0, %struct.ice_pf** %2, align 8
  %4 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %5 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %4, i32 0, i32 1
  store %struct.ice_hw* %5, %struct.ice_hw** %3, align 8
  %6 = load i32, i32* @__ICE_MAILBOXQ_EVENT_PENDING, align 4
  %7 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %8 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @test_bit(i32 %6, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %15 = load i32, i32* @ICE_CTL_Q_MAILBOX, align 4
  %16 = call i64 @__ice_clean_ctrlq(%struct.ice_pf* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %37

19:                                               ; preds = %13
  %20 = load i32, i32* @__ICE_MAILBOXQ_EVENT_PENDING, align 4
  %21 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %22 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clear_bit(i32 %20, i32 %23)
  %25 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %26 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %27 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %26, i32 0, i32 0
  %28 = call i64 @ice_ctrlq_pending(%struct.ice_hw* %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %32 = load i32, i32* @ICE_CTL_Q_MAILBOX, align 4
  %33 = call i64 @__ice_clean_ctrlq(%struct.ice_pf* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %19
  %35 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %36 = call i32 @ice_flush(%struct.ice_hw* %35)
  br label %37

37:                                               ; preds = %34, %18, %12
  ret void
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i64 @__ice_clean_ctrlq(%struct.ice_pf*, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i64 @ice_ctrlq_pending(%struct.ice_hw*, i32*) #1

declare dso_local i32 @ice_flush(%struct.ice_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
