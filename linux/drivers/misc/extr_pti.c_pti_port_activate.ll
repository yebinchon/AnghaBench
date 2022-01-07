; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pti.c_pti_port_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pti.c_pti_port_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.tty_struct = type { i32 }

@PTITTY_MINOR_START = common dso_local global i64 0, align 8
@pti_console = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_port*, %struct.tty_struct*)* @pti_port_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pti_port_activate(%struct.tty_port* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  store %struct.tty_port* %0, %struct.tty_port** %3, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %5 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %6 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PTITTY_MINOR_START, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @console_start(i32* @pti_console)
  br label %14

14:                                               ; preds = %12, %2
  ret i32 0
}

declare dso_local i32 @console_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
