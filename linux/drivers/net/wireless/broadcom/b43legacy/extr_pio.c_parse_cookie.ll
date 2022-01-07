; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_pio.c_parse_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_pio.c_parse_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_pioqueue = type { %struct.b43legacy_pio_txpacket* }
%struct.b43legacy_pio_txpacket = type { i32 }
%struct.b43legacy_wldev = type { %struct.b43legacy_pio }
%struct.b43legacy_pio = type { %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue* }

@B43legacy_PIO_MAXTXPACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.b43legacy_pioqueue* (%struct.b43legacy_wldev*, i32, %struct.b43legacy_pio_txpacket**)* @parse_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.b43legacy_pioqueue* @parse_cookie(%struct.b43legacy_wldev* %0, i32 %1, %struct.b43legacy_pio_txpacket** %2) #0 {
  %4 = alloca %struct.b43legacy_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.b43legacy_pio_txpacket**, align 8
  %7 = alloca %struct.b43legacy_pio*, align 8
  %8 = alloca %struct.b43legacy_pioqueue*, align 8
  %9 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.b43legacy_pio_txpacket** %2, %struct.b43legacy_pio_txpacket*** %6, align 8
  %10 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %11 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %10, i32 0, i32 0
  store %struct.b43legacy_pio* %11, %struct.b43legacy_pio** %7, align 8
  store %struct.b43legacy_pioqueue* null, %struct.b43legacy_pioqueue** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 61440
  switch i32 %13, label %30 [
    i32 0, label %14
    i32 4096, label %18
    i32 8192, label %22
    i32 12288, label %26
  ]

14:                                               ; preds = %3
  %15 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %7, align 8
  %16 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %15, i32 0, i32 3
  %17 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %16, align 8
  store %struct.b43legacy_pioqueue* %17, %struct.b43legacy_pioqueue** %8, align 8
  br label %32

18:                                               ; preds = %3
  %19 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %7, align 8
  %20 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %19, i32 0, i32 2
  %21 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %20, align 8
  store %struct.b43legacy_pioqueue* %21, %struct.b43legacy_pioqueue** %8, align 8
  br label %32

22:                                               ; preds = %3
  %23 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %7, align 8
  %24 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %23, i32 0, i32 1
  %25 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %24, align 8
  store %struct.b43legacy_pioqueue* %25, %struct.b43legacy_pioqueue** %8, align 8
  br label %32

26:                                               ; preds = %3
  %27 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %7, align 8
  %28 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %27, i32 0, i32 0
  %29 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %28, align 8
  store %struct.b43legacy_pioqueue* %29, %struct.b43legacy_pioqueue** %8, align 8
  br label %32

30:                                               ; preds = %3
  %31 = call i32 @B43legacy_WARN_ON(i32 1)
  br label %32

32:                                               ; preds = %30, %26, %22, %18, %14
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 4095
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @B43legacy_PIO_MAXTXPACKETS, align 4
  %40 = icmp slt i32 %38, %39
  br label %41

41:                                               ; preds = %37, %32
  %42 = phi i1 [ false, %32 ], [ %40, %37 ]
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @B43legacy_WARN_ON(i32 %44)
  %46 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %8, align 8
  %47 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %46, i32 0, i32 0
  %48 = load %struct.b43legacy_pio_txpacket*, %struct.b43legacy_pio_txpacket** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.b43legacy_pio_txpacket, %struct.b43legacy_pio_txpacket* %48, i64 %50
  %52 = load %struct.b43legacy_pio_txpacket**, %struct.b43legacy_pio_txpacket*** %6, align 8
  store %struct.b43legacy_pio_txpacket* %51, %struct.b43legacy_pio_txpacket** %52, align 8
  %53 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %8, align 8
  ret %struct.b43legacy_pioqueue* %53
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
