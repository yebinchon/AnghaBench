; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_ath6kl_htc_pipe_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_ath6kl_htc_pipe_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { %struct.htc_target* }
%struct.htc_packet = type { %struct.htc_packet* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_target*)* @ath6kl_htc_pipe_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_htc_pipe_cleanup(%struct.htc_target* %0) #0 {
  %2 = alloca %struct.htc_target*, align 8
  %3 = alloca %struct.htc_packet*, align 8
  store %struct.htc_target* %0, %struct.htc_target** %2, align 8
  br label %4

4:                                                ; preds = %1, %11
  %5 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %6 = call %struct.htc_target* @alloc_htc_packet_container(%struct.htc_target* %5)
  %7 = bitcast %struct.htc_target* %6 to %struct.htc_packet*
  store %struct.htc_packet* %7, %struct.htc_packet** %3, align 8
  %8 = load %struct.htc_packet*, %struct.htc_packet** %3, align 8
  %9 = icmp eq %struct.htc_packet* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  br label %15

11:                                               ; preds = %4
  %12 = load %struct.htc_packet*, %struct.htc_packet** %3, align 8
  %13 = bitcast %struct.htc_packet* %12 to %struct.htc_target*
  %14 = call i32 @kfree(%struct.htc_target* %13)
  br label %4

15:                                               ; preds = %10
  %16 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %17 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %16, i32 0, i32 0
  %18 = load %struct.htc_target*, %struct.htc_target** %17, align 8
  %19 = call i32 @kfree(%struct.htc_target* %18)
  %20 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %21 = call i32 @kfree(%struct.htc_target* %20)
  ret void
}

declare dso_local %struct.htc_target* @alloc_htc_packet_container(%struct.htc_target*) #1

declare dso_local i32 @kfree(%struct.htc_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
