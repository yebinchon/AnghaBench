; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_card_readonly.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_card_readonly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.au1xmmc_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mmc_host*)* }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @au1xmmc_card_readonly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xmmc_card_readonly(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.au1xmmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %5 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %6 = call %struct.au1xmmc_host* @mmc_priv(%struct.mmc_host* %5)
  store %struct.au1xmmc_host* %6, %struct.au1xmmc_host** %4, align 8
  %7 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %8 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %13 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %15, align 8
  %17 = icmp ne i32 (%struct.mmc_host*)* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %11
  %19 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %20 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %22, align 8
  %24 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %25 = call i32 %23(%struct.mmc_host* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %33

30:                                               ; preds = %11, %1
  %31 = load i32, i32* @ENOSYS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %18
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.au1xmmc_host* @mmc_priv(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
