; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_intstat_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_intstat_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrf24j40 = type { i32*, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BIT_SECIF = common dso_local global i32 0, align 4
@REG_SECCON0 = common dso_local global i32 0, align 4
@BIT_SECIGNORE = common dso_local global i32 0, align 4
@BIT_TXNIF = common dso_local global i32 0, align 4
@BIT_RXIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mrf24j40_intstat_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrf24j40_intstat_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mrf24j40*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.mrf24j40*
  store %struct.mrf24j40* %6, %struct.mrf24j40** %3, align 8
  %7 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %8 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %13 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @enable_irq(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @BIT_SECIF, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %24 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @REG_SECCON0, align 4
  %27 = load i32, i32* @BIT_SECIGNORE, align 4
  %28 = call i32 @regmap_write_async(i32 %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %22, %1
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @BIT_TXNIF, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %36 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %39 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ieee802154_xmit_complete(i32 %37, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %34, %29
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @BIT_RXIF, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %49 = call i32 @mrf24j40_handle_rx(%struct.mrf24j40* %48)
  br label %50

50:                                               ; preds = %47, %42
  ret void
}

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @regmap_write_async(i32, i32, i32) #1

declare dso_local i32 @ieee802154_xmit_complete(i32, i32, i32) #1

declare dso_local i32 @mrf24j40_handle_rx(%struct.mrf24j40*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
