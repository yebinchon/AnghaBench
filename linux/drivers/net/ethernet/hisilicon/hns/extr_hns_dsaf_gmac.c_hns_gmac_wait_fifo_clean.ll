; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_gmac.c_hns_gmac_wait_fifo_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_gmac.c_hns_gmac_wait_fifo_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_driver = type { i32, i32 }

@HNS_MAX_WAIT_CNT = common dso_local global i32 0, align 4
@GMAC_FIFO_STATE_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"hns ge %d fifo was not idle.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @hns_gmac_wait_fifo_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_gmac_wait_fifo_clean(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mac_driver*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.mac_driver*
  store %struct.mac_driver* %8, %struct.mac_driver** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %22, %1
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @HNS_MAX_WAIT_CNT, align 4
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %16 = load i32, i32* @GMAC_FIFO_STATE_REG, align 4
  %17 = call i32 @dsaf_read_dev(%struct.mac_driver* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 63
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %24

22:                                               ; preds = %14
  %23 = call i32 @usleep_range(i32 100, i32 200)
  br label %9

24:                                               ; preds = %21, %9
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @HNS_MAX_WAIT_CNT, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %30 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %33 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %28
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @dsaf_read_dev(%struct.mac_driver*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
