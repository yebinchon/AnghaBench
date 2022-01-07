; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_download_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_card = type { i32 }

@SPIDER_NET_GSINIT = common dso_local global i64 0, align 8
@SPIDER_NET_STOP_SEQ_VALUE = common dso_local global i32 0, align 4
@SPIDER_NET_FIRMWARE_SEQS = common dso_local global i32 0, align 4
@SPIDER_NET_GSnPRGADR = common dso_local global i64 0, align 8
@SPIDER_NET_FIRMWARE_SEQWORDS = common dso_local global i32 0, align 4
@SPIDER_NET_GSnPRGDAT = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@SPIDER_NET_RUN_SEQ_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spider_net_card*, i8*)* @spider_net_download_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spider_net_download_firmware(%struct.spider_net_card* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spider_net_card*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.spider_net_card* %0, %struct.spider_net_card** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %8, align 8
  %11 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %12 = load i64, i64* @SPIDER_NET_GSINIT, align 8
  %13 = load i32, i32* @SPIDER_NET_STOP_SEQ_VALUE, align 4
  %14 = call i32 @spider_net_write_reg(%struct.spider_net_card* %11, i64 %12, i32 %13)
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %47, %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @SPIDER_NET_FIRMWARE_SEQS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %15
  %20 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %21 = load i64, i64* @SPIDER_NET_GSnPRGADR, align 8
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 %22, 8
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = call i32 @spider_net_write_reg(%struct.spider_net_card* %20, i64 %25, i32 0)
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %43, %19
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SPIDER_NET_FIRMWARE_SEQWORDS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %33 = load i64, i64* @SPIDER_NET_GSnPRGDAT, align 8
  %34 = load i32, i32* %6, align 4
  %35 = mul nsw i32 %34, 8
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @spider_net_write_reg(%struct.spider_net_card* %32, i64 %37, i32 %39)
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %8, align 8
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %27

46:                                               ; preds = %27
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %15

50:                                               ; preds = %15
  %51 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %52 = load i64, i64* @SPIDER_NET_GSINIT, align 8
  %53 = call i64 @spider_net_read_reg(%struct.spider_net_card* %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %63

58:                                               ; preds = %50
  %59 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %60 = load i64, i64* @SPIDER_NET_GSINIT, align 8
  %61 = load i32, i32* @SPIDER_NET_RUN_SEQ_VALUE, align 4
  %62 = call i32 @spider_net_write_reg(%struct.spider_net_card* %59, i64 %60, i32 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %58, %55
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @spider_net_write_reg(%struct.spider_net_card*, i64, i32) #1

declare dso_local i64 @spider_net_read_reg(%struct.spider_net_card*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
