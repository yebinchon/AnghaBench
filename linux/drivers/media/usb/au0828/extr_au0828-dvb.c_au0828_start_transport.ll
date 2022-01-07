; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-dvb.c_au0828_start_transport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-dvb.c_au0828_start_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au0828_dev*)* @au0828_start_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au0828_start_transport(%struct.au0828_dev* %0) #0 {
  %2 = alloca %struct.au0828_dev*, align 8
  store %struct.au0828_dev* %0, %struct.au0828_dev** %2, align 8
  %3 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %4 = call i32 @au0828_write(%struct.au0828_dev* %3, i32 1544, i32 144)
  %5 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %6 = call i32 @au0828_write(%struct.au0828_dev* %5, i32 1545, i32 114)
  %7 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %8 = call i32 @au0828_write(%struct.au0828_dev* %7, i32 1546, i32 113)
  %9 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %10 = call i32 @au0828_write(%struct.au0828_dev* %9, i32 1547, i32 1)
  ret void
}

declare dso_local i32 @au0828_write(%struct.au0828_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
