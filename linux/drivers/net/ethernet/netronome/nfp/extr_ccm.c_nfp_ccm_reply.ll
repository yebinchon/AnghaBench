; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_ccm.c_nfp_ccm_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_ccm.c_nfp_ccm_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nfp_ccm = type { i32 }
%struct.nfp_app = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.nfp_ccm*, %struct.nfp_app*, i32)* @nfp_ccm_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @nfp_ccm_reply(%struct.nfp_ccm* %0, %struct.nfp_app* %1, i32 %2) #0 {
  %4 = alloca %struct.nfp_ccm*, align 8
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.nfp_ccm* %0, %struct.nfp_ccm** %4, align 8
  store %struct.nfp_app* %1, %struct.nfp_app** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %9 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @nfp_ctrl_lock(i32 %10)
  %12 = load %struct.nfp_ccm*, %struct.nfp_ccm** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.sk_buff* @__nfp_ccm_reply(%struct.nfp_ccm* %12, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %7, align 8
  %15 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %16 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @nfp_ctrl_unlock(i32 %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %19
}

declare dso_local i32 @nfp_ctrl_lock(i32) #1

declare dso_local %struct.sk_buff* @__nfp_ccm_reply(%struct.nfp_ccm*, i32) #1

declare dso_local i32 @nfp_ctrl_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
