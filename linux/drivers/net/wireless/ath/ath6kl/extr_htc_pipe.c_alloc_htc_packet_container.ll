; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_alloc_htc_packet_container.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_alloc_htc_packet_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_packet = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.htc_target = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.htc_packet* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.htc_packet* (%struct.htc_target*)* @alloc_htc_packet_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.htc_packet* @alloc_htc_packet_container(%struct.htc_target* %0) #0 {
  %2 = alloca %struct.htc_packet*, align 8
  %3 = alloca %struct.htc_target*, align 8
  %4 = alloca %struct.htc_packet*, align 8
  store %struct.htc_target* %0, %struct.htc_target** %3, align 8
  %5 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %6 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %9 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.htc_packet*, %struct.htc_packet** %10, align 8
  %12 = icmp eq %struct.htc_packet* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %15 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %14, i32 0, i32 0
  %16 = call i32 @spin_unlock_bh(i32* %15)
  store %struct.htc_packet* null, %struct.htc_packet** %2, align 8
  br label %37

17:                                               ; preds = %1
  %18 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %19 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.htc_packet*, %struct.htc_packet** %20, align 8
  store %struct.htc_packet* %21, %struct.htc_packet** %4, align 8
  %22 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %23 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to %struct.htc_packet*
  %27 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %28 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store %struct.htc_packet* %26, %struct.htc_packet** %29, align 8
  %30 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %31 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock_bh(i32* %31)
  %33 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %34 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  %36 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  store %struct.htc_packet* %36, %struct.htc_packet** %2, align 8
  br label %37

37:                                               ; preds = %17, %13
  %38 = load %struct.htc_packet*, %struct.htc_packet** %2, align 8
  ret %struct.htc_packet* %38
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
