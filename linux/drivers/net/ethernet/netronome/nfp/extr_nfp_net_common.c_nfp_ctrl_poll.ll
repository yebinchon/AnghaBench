; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_ctrl_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_ctrl_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_r_vector = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"control message budget exceeded!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @nfp_ctrl_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_ctrl_poll(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.nfp_net_r_vector*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to i8*
  %6 = bitcast i8* %5 to %struct.nfp_net_r_vector*
  store %struct.nfp_net_r_vector* %6, %struct.nfp_net_r_vector** %3, align 8
  %7 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %3, align 8
  %8 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %7, i32 0, i32 3
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %3, align 8
  %11 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @nfp_net_tx_complete(i32 %12, i32 0)
  %14 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %3, align 8
  %15 = call i32 @__nfp_ctrl_tx_queued(%struct.nfp_net_r_vector* %14)
  %16 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %3, align 8
  %17 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %16, i32 0, i32 3
  %18 = call i32 @spin_unlock(i32* %17)
  %19 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %3, align 8
  %20 = call i64 @nfp_ctrl_rx(%struct.nfp_net_r_vector* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %3, align 8
  %24 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %3, align 8
  %27 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @nfp_net_irq_unmask(%struct.TYPE_2__* %25, i32 %28)
  br label %39

30:                                               ; preds = %1
  %31 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %3, align 8
  %32 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %31, i32 0, i32 1
  %33 = call i32 @tasklet_schedule(i32* %32)
  %34 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %3, align 8
  %35 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @nn_dp_warn(i32* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %30, %22
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @nfp_net_tx_complete(i32, i32) #1

declare dso_local i32 @__nfp_ctrl_tx_queued(%struct.nfp_net_r_vector*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @nfp_ctrl_rx(%struct.nfp_net_r_vector*) #1

declare dso_local i32 @nfp_net_irq_unmask(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @nn_dp_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
