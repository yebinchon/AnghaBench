; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_pio.c_generate_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_pio.c_generate_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_pioqueue = type { i32 }
%struct.b43legacy_pio_txpacket = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_pioqueue*, %struct.b43legacy_pio_txpacket*)* @generate_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_cookie(%struct.b43legacy_pioqueue* %0, %struct.b43legacy_pio_txpacket* %1) #0 {
  %3 = alloca %struct.b43legacy_pioqueue*, align 8
  %4 = alloca %struct.b43legacy_pio_txpacket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43legacy_pioqueue* %0, %struct.b43legacy_pioqueue** %3, align 8
  store %struct.b43legacy_pio_txpacket* %1, %struct.b43legacy_pio_txpacket** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %3, align 8
  %8 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %14 [
    i32 131, label %10
    i32 130, label %11
    i32 129, label %12
    i32 128, label %13
  ]

10:                                               ; preds = %2
  br label %16

11:                                               ; preds = %2
  store i32 4096, i32* %5, align 4
  br label %16

12:                                               ; preds = %2
  store i32 8192, i32* %5, align 4
  br label %16

13:                                               ; preds = %2
  store i32 12288, i32* %5, align 4
  br label %16

14:                                               ; preds = %2
  %15 = call i32 @B43legacy_WARN_ON(i32 1)
  br label %16

16:                                               ; preds = %14, %13, %12, %11, %10
  %17 = load %struct.b43legacy_pio_txpacket*, %struct.b43legacy_pio_txpacket** %4, align 8
  %18 = call i32 @pio_txpacket_getindex(%struct.b43legacy_pio_txpacket* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 61440
  %21 = icmp eq i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @B43legacy_WARN_ON(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @pio_txpacket_getindex(%struct.b43legacy_pio_txpacket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
