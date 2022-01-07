; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_vecs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_vecs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32, %struct.TYPE_2__, %struct.nfp_net_r_vector*, %struct.msix_entry*, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.nfp_net_r_vector = type { i32, i32, i32, i32, i32, i32, i32, %struct.nfp_net* }
%struct.msix_entry = type { i32, i32 }

@nfp_net_irq_lsc = common dso_local global i32 0, align 4
@nfp_net_irq_exn = common dso_local global i32 0, align 4
@NFP_NET_NON_Q_VECTORS = common dso_local global i32 0, align 4
@nfp_net_irq_rxtx = common dso_local global i32 0, align 4
@nfp_ctrl_irq_rxtx = common dso_local global i32 0, align 4
@nfp_ctrl_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net*)* @nfp_net_vecs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_vecs_init(%struct.nfp_net* %0) #0 {
  %2 = alloca %struct.nfp_net*, align 8
  %3 = alloca %struct.nfp_net_r_vector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msix_entry*, align 8
  store %struct.nfp_net* %0, %struct.nfp_net** %2, align 8
  %6 = load i32, i32* @nfp_net_irq_lsc, align 4
  %7 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %8 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %7, i32 0, i32 5
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @nfp_net_irq_exn, align 4
  %10 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %11 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %79, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %15 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %82

18:                                               ; preds = %12
  %19 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %20 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %19, i32 0, i32 3
  %21 = load %struct.msix_entry*, %struct.msix_entry** %20, align 8
  %22 = load i32, i32* @NFP_NET_NON_Q_VECTORS, align 4
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %21, i64 %25
  store %struct.msix_entry* %26, %struct.msix_entry** %5, align 8
  %27 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %28 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %27, i32 0, i32 2
  %29 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %29, i64 %31
  store %struct.nfp_net_r_vector* %32, %struct.nfp_net_r_vector** %3, align 8
  %33 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %34 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %3, align 8
  %35 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %34, i32 0, i32 7
  store %struct.nfp_net* %33, %struct.nfp_net** %35, align 8
  %36 = load %struct.msix_entry*, %struct.msix_entry** %5, align 8
  %37 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %3, align 8
  %40 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load %struct.msix_entry*, %struct.msix_entry** %5, align 8
  %42 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %3, align 8
  %45 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %47 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %18
  %52 = load i32, i32* @nfp_net_irq_rxtx, align 4
  %53 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %3, align 8
  %54 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  br label %74

55:                                               ; preds = %18
  %56 = load i32, i32* @nfp_ctrl_irq_rxtx, align 4
  %57 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %3, align 8
  %58 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %3, align 8
  %60 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %59, i32 0, i32 3
  %61 = call i32 @__skb_queue_head_init(i32* %60)
  %62 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %3, align 8
  %63 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %62, i32 0, i32 2
  %64 = call i32 @spin_lock_init(i32* %63)
  %65 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %3, align 8
  %66 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %65, i32 0, i32 1
  %67 = load i32, i32* @nfp_ctrl_poll, align 4
  %68 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %3, align 8
  %69 = ptrtoint %struct.nfp_net_r_vector* %68 to i64
  %70 = call i32 @tasklet_init(i32* %66, i32 %67, i64 %69)
  %71 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %3, align 8
  %72 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %71, i32 0, i32 1
  %73 = call i32 @tasklet_disable(i32* %72)
  br label %74

74:                                               ; preds = %55, %51
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %3, align 8
  %77 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %76, i32 0, i32 0
  %78 = call i32 @cpumask_set_cpu(i32 %75, i32* %77)
  br label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %12

82:                                               ; preds = %12
  ret void
}

declare dso_local i32 @__skb_queue_head_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
