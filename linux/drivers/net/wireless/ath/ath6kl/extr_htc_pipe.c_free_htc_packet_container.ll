; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_free_htc_packet_container.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_free_htc_packet_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.htc_packet* }
%struct.htc_packet = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.list_head* }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_target*, %struct.htc_packet*)* @free_htc_packet_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_htc_packet_container(%struct.htc_target* %0, %struct.htc_packet* %1) #0 {
  %3 = alloca %struct.htc_target*, align 8
  %4 = alloca %struct.htc_packet*, align 8
  %5 = alloca %struct.list_head*, align 8
  store %struct.htc_target* %0, %struct.htc_target** %3, align 8
  store %struct.htc_packet* %1, %struct.htc_packet** %4, align 8
  %6 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %7 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %10 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.htc_packet*, %struct.htc_packet** %11, align 8
  %13 = icmp eq %struct.htc_packet* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %16 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %17 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.htc_packet* %15, %struct.htc_packet** %18, align 8
  %19 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %20 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.list_head* null, %struct.list_head** %21, align 8
  br label %36

22:                                               ; preds = %2
  %23 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %24 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.htc_packet*, %struct.htc_packet** %25, align 8
  %27 = bitcast %struct.htc_packet* %26 to %struct.list_head*
  store %struct.list_head* %27, %struct.list_head** %5, align 8
  %28 = load %struct.list_head*, %struct.list_head** %5, align 8
  %29 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %30 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store %struct.list_head* %28, %struct.list_head** %31, align 8
  %32 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %33 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %34 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.htc_packet* %32, %struct.htc_packet** %35, align 8
  br label %36

36:                                               ; preds = %22, %14
  %37 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %38 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock_bh(i32* %38)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
