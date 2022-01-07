; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_lo.c_b43_lo_fixup_rfatt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_lo.c_b43_lo_fixup_rfatt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_rfatt = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_rfatt*)* @b43_lo_fixup_rfatt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_lo_fixup_rfatt(%struct.b43_rfatt* %0) #0 {
  %2 = alloca %struct.b43_rfatt*, align 8
  store %struct.b43_rfatt* %0, %struct.b43_rfatt** %2, align 8
  %3 = load %struct.b43_rfatt*, %struct.b43_rfatt** %2, align 8
  %4 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %26

8:                                                ; preds = %1
  %9 = load %struct.b43_rfatt*, %struct.b43_rfatt** %2, align 8
  %10 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = load %struct.b43_rfatt*, %struct.b43_rfatt** %2, align 8
  %15 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.b43_rfatt*, %struct.b43_rfatt** %2, align 8
  %20 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 3
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.b43_rfatt*, %struct.b43_rfatt** %2, align 8
  %25 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %24, i32 0, i32 0
  store i32 4, i32* %25, align 4
  br label %26

26:                                               ; preds = %7, %23, %18, %13, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
