; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_msgq.c_bfa_msgq_cmd_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_msgq.c_bfa_msgq_cmd_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_msgq = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.bfa_msgq_cmd_entry = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4
@CMDQ_E_POST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_msgq_cmd_post(%struct.bfa_msgq* %0, %struct.bfa_msgq_cmd_entry* %1) #0 {
  %3 = alloca %struct.bfa_msgq*, align 8
  %4 = alloca %struct.bfa_msgq_cmd_entry*, align 8
  store %struct.bfa_msgq* %0, %struct.bfa_msgq** %3, align 8
  store %struct.bfa_msgq_cmd_entry* %1, %struct.bfa_msgq_cmd_entry** %4, align 8
  %5 = load %struct.bfa_msgq_cmd_entry*, %struct.bfa_msgq_cmd_entry** %4, align 8
  %6 = getelementptr inbounds %struct.bfa_msgq_cmd_entry, %struct.bfa_msgq_cmd_entry* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @ntohs(i32 %9)
  %11 = load %struct.bfa_msgq*, %struct.bfa_msgq** %3, align 8
  %12 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %11, i32 0, i32 0
  %13 = call i64 @BFA_MSGQ_FREE_CNT(%struct.TYPE_6__* %12)
  %14 = icmp sle i64 %10, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.bfa_msgq*, %struct.bfa_msgq** %3, align 8
  %17 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %16, i32 0, i32 0
  %18 = load %struct.bfa_msgq_cmd_entry*, %struct.bfa_msgq_cmd_entry** %4, align 8
  %19 = call i32 @__cmd_copy(%struct.TYPE_6__* %17, %struct.bfa_msgq_cmd_entry* %18)
  %20 = load %struct.bfa_msgq_cmd_entry*, %struct.bfa_msgq_cmd_entry** %4, align 8
  %21 = load i32, i32* @BFA_STATUS_OK, align 4
  %22 = call i32 @call_cmdq_ent_cbfn(%struct.bfa_msgq_cmd_entry* %20, i32 %21)
  %23 = load %struct.bfa_msgq*, %struct.bfa_msgq** %3, align 8
  %24 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %23, i32 0, i32 0
  %25 = load i32, i32* @CMDQ_E_POST, align 4
  %26 = call i32 @bfa_fsm_send_event(%struct.TYPE_6__* %24, i32 %25)
  br label %34

27:                                               ; preds = %2
  %28 = load %struct.bfa_msgq_cmd_entry*, %struct.bfa_msgq_cmd_entry** %4, align 8
  %29 = getelementptr inbounds %struct.bfa_msgq_cmd_entry, %struct.bfa_msgq_cmd_entry* %28, i32 0, i32 0
  %30 = load %struct.bfa_msgq*, %struct.bfa_msgq** %3, align 8
  %31 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = call i32 @list_add_tail(i32* %29, i32* %32)
  br label %34

34:                                               ; preds = %27, %15
  ret void
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @BFA_MSGQ_FREE_CNT(%struct.TYPE_6__*) #1

declare dso_local i32 @__cmd_copy(%struct.TYPE_6__*, %struct.bfa_msgq_cmd_entry*) #1

declare dso_local i32 @call_cmdq_ent_cbfn(%struct.bfa_msgq_cmd_entry*, i32) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
