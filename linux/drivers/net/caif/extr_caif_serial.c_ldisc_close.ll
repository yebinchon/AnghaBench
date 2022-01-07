; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_serial.c_ldisc_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_serial.c_ldisc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ser_device* }
%struct.ser_device = type { i32, i32 }

@ser_lock = common dso_local global i32 0, align 4
@ser_release_list = common dso_local global i32 0, align 4
@ser_release_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @ldisc_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ldisc_close(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.ser_device*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  %6 = load %struct.ser_device*, %struct.ser_device** %5, align 8
  store %struct.ser_device* %6, %struct.ser_device** %3, align 8
  %7 = load %struct.ser_device*, %struct.ser_device** %3, align 8
  %8 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @tty_kref_put(i32 %9)
  %11 = call i32 @spin_lock(i32* @ser_lock)
  %12 = load %struct.ser_device*, %struct.ser_device** %3, align 8
  %13 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %12, i32 0, i32 0
  %14 = call i32 @list_move(i32* %13, i32* @ser_release_list)
  %15 = call i32 @spin_unlock(i32* @ser_lock)
  %16 = call i32 @schedule_work(i32* @ser_release_work)
  ret void
}

declare dso_local i32 @tty_kref_put(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
