; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_reg_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_reg_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmci_host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmci_host*)* @mmci_reg_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmci_reg_delay(%struct.mmci_host* %0) #0 {
  %2 = alloca %struct.mmci_host*, align 8
  store %struct.mmci_host* %0, %struct.mmci_host** %2, align 8
  %3 = load %struct.mmci_host*, %struct.mmci_host** %2, align 8
  %4 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 25000000
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @udelay(i32 30)
  br label %11

9:                                                ; preds = %1
  %10 = call i32 @ndelay(i32 120)
  br label %11

11:                                               ; preds = %9, %7
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ndelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
