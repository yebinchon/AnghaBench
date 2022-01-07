; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_slcan.c_slcan_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_slcan.c_slcan_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32* }
%struct.slcan = type { i64, i32, i32, i32, %struct.tty_struct* }

@SLCAN_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @slcan_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slcan_close(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.slcan*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = bitcast i32* %6 to %struct.slcan*
  store %struct.slcan* %7, %struct.slcan** %3, align 8
  %8 = load %struct.slcan*, %struct.slcan** %3, align 8
  %9 = icmp ne %struct.slcan* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.slcan*, %struct.slcan** %3, align 8
  %12 = getelementptr inbounds %struct.slcan, %struct.slcan* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SLCAN_MAGIC, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load %struct.slcan*, %struct.slcan** %3, align 8
  %18 = getelementptr inbounds %struct.slcan, %struct.slcan* %17, i32 0, i32 4
  %19 = load %struct.tty_struct*, %struct.tty_struct** %18, align 8
  %20 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %21 = icmp ne %struct.tty_struct* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %10, %1
  br label %41

23:                                               ; preds = %16
  %24 = load %struct.slcan*, %struct.slcan** %3, align 8
  %25 = getelementptr inbounds %struct.slcan, %struct.slcan* %24, i32 0, i32 3
  %26 = call i32 @spin_lock_bh(i32* %25)
  %27 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load %struct.slcan*, %struct.slcan** %3, align 8
  %30 = getelementptr inbounds %struct.slcan, %struct.slcan* %29, i32 0, i32 4
  store %struct.tty_struct* null, %struct.tty_struct** %30, align 8
  %31 = load %struct.slcan*, %struct.slcan** %3, align 8
  %32 = getelementptr inbounds %struct.slcan, %struct.slcan* %31, i32 0, i32 3
  %33 = call i32 @spin_unlock_bh(i32* %32)
  %34 = load %struct.slcan*, %struct.slcan** %3, align 8
  %35 = getelementptr inbounds %struct.slcan, %struct.slcan* %34, i32 0, i32 2
  %36 = call i32 @flush_work(i32* %35)
  %37 = load %struct.slcan*, %struct.slcan** %3, align 8
  %38 = getelementptr inbounds %struct.slcan, %struct.slcan* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @unregister_netdev(i32 %39)
  br label %41

41:                                               ; preds = %23, %22
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @unregister_netdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
