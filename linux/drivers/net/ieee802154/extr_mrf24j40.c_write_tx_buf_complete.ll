; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_write_tx_buf_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_write_tx_buf_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrf24j40 = type { %struct.TYPE_2__, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32* }

@BIT_TXNTRIG = common dso_local global i32 0, align 4
@BIT_TXNSECEN = common dso_local global i32 0, align 4
@BIT_TXNACKREQ = common dso_local global i32 0, align 4
@REG_TXNCON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"SPI write Failed for transmit buf\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @write_tx_buf_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_tx_buf_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mrf24j40*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.mrf24j40*
  store %struct.mrf24j40* %8, %struct.mrf24j40** %3, align 8
  %9 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %10 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @ieee802154_get_fc_from_skb(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @BIT_TXNTRIG, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @ieee802154_is_secen(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @BIT_TXNSECEN, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @ieee802154_is_ackreq(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @BIT_TXNACKREQ, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %31 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* @REG_TXNCON, align 4
  %34 = call i32 @MRF24J40_WRITESHORT(i32 %33)
  %35 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %36 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %41 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %39, i32* %43, align 4
  %44 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %45 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %48 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %47, i32 0, i32 0
  %49 = call i32 @spi_async(i32 %46, %struct.TYPE_2__* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %29
  %53 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %54 = call i32 @printdev(%struct.mrf24j40* %53)
  %55 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %52, %29
  ret void
}

declare dso_local i32 @ieee802154_get_fc_from_skb(i32) #1

declare dso_local i64 @ieee802154_is_secen(i32) #1

declare dso_local i64 @ieee802154_is_ackreq(i32) #1

declare dso_local i32 @MRF24J40_WRITESHORT(i32) #1

declare dso_local i32 @spi_async(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @printdev(%struct.mrf24j40*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
