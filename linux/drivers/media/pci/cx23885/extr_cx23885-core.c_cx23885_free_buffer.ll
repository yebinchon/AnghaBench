; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_free_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32 }
%struct.cx23885_buffer = type { %struct.cx23885_riscmem }
%struct.cx23885_riscmem = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx23885_free_buffer(%struct.cx23885_dev* %0, %struct.cx23885_buffer* %1) #0 {
  %3 = alloca %struct.cx23885_dev*, align 8
  %4 = alloca %struct.cx23885_buffer*, align 8
  %5 = alloca %struct.cx23885_riscmem*, align 8
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %3, align 8
  store %struct.cx23885_buffer* %1, %struct.cx23885_buffer** %4, align 8
  %6 = load %struct.cx23885_buffer*, %struct.cx23885_buffer** %4, align 8
  %7 = getelementptr inbounds %struct.cx23885_buffer, %struct.cx23885_buffer* %6, i32 0, i32 0
  store %struct.cx23885_riscmem* %7, %struct.cx23885_riscmem** %5, align 8
  %8 = call i32 (...) @in_interrupt()
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %11 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %5, align 8
  %14 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %5, align 8
  %17 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %5, align 8
  %20 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pci_free_consistent(i32 %12, i32 %15, i32 %18, i32 %21)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
