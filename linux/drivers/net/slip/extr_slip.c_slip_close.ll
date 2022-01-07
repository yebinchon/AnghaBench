; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/slip/extr_slip.c_slip_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/slip/extr_slip.c_slip_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.slip* }
%struct.slip = type { i64, i32, i32, i32, i32, i32, %struct.tty_struct* }

@SLIP_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @slip_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slip_close(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.slip*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  %6 = load %struct.slip*, %struct.slip** %5, align 8
  store %struct.slip* %6, %struct.slip** %3, align 8
  %7 = load %struct.slip*, %struct.slip** %3, align 8
  %8 = icmp ne %struct.slip* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.slip*, %struct.slip** %3, align 8
  %11 = getelementptr inbounds %struct.slip, %struct.slip* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SLIP_MAGIC, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = load %struct.slip*, %struct.slip** %3, align 8
  %17 = getelementptr inbounds %struct.slip, %struct.slip* %16, i32 0, i32 6
  %18 = load %struct.tty_struct*, %struct.tty_struct** %17, align 8
  %19 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %20 = icmp ne %struct.tty_struct* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %9, %1
  br label %40

22:                                               ; preds = %15
  %23 = load %struct.slip*, %struct.slip** %3, align 8
  %24 = getelementptr inbounds %struct.slip, %struct.slip* %23, i32 0, i32 5
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %27 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %26, i32 0, i32 0
  store %struct.slip* null, %struct.slip** %27, align 8
  %28 = load %struct.slip*, %struct.slip** %3, align 8
  %29 = getelementptr inbounds %struct.slip, %struct.slip* %28, i32 0, i32 6
  store %struct.tty_struct* null, %struct.tty_struct** %29, align 8
  %30 = load %struct.slip*, %struct.slip** %3, align 8
  %31 = getelementptr inbounds %struct.slip, %struct.slip* %30, i32 0, i32 5
  %32 = call i32 @spin_unlock_bh(i32* %31)
  %33 = load %struct.slip*, %struct.slip** %3, align 8
  %34 = getelementptr inbounds %struct.slip, %struct.slip* %33, i32 0, i32 4
  %35 = call i32 @flush_work(i32* %34)
  %36 = load %struct.slip*, %struct.slip** %3, align 8
  %37 = getelementptr inbounds %struct.slip, %struct.slip* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @unregister_netdev(i32 %38)
  br label %40

40:                                               ; preds = %22, %21
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
