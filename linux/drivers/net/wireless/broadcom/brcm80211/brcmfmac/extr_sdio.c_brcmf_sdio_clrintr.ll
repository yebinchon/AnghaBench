; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_clrintr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_clrintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { i32, %struct.brcmf_sdio_dev* }
%struct.brcmf_sdio_dev = type { i32, i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_sdio*)* @brcmf_sdio_clrintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_sdio_clrintr(%struct.brcmf_sdio* %0) #0 {
  %2 = alloca %struct.brcmf_sdio*, align 8
  %3 = alloca %struct.brcmf_sdio_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %2, align 8
  %5 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %6 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %5, i32 0, i32 1
  %7 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %6, align 8
  store %struct.brcmf_sdio_dev* %7, %struct.brcmf_sdio_dev** %3, align 8
  %8 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %9 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %1
  %13 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %14 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %13, i32 0, i32 1
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %18 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %12
  %22 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %23 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %22, i32 0, i32 0
  %24 = call i32 @atomic_read(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %21
  %27 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %28 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @enable_irq(i32 %33)
  %35 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %36 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %26, %21, %12
  %38 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %39 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %38, i32 0, i32 1
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  br label %42

42:                                               ; preds = %37, %1
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
