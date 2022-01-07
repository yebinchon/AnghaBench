; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_check_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIO_EMM_RSP_STS_RSP_BAD_STS = common dso_local global i32 0, align 4
@MIO_EMM_RSP_STS_RSP_CRC_ERR = common dso_local global i32 0, align 4
@MIO_EMM_RSP_STS_BLK_CRC_ERR = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@MIO_EMM_RSP_STS_RSP_TIMEOUT = common dso_local global i32 0, align 4
@MIO_EMM_RSP_STS_BLK_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@MIO_EMM_RSP_STS_DBUF_ERR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @MIO_EMM_RSP_STS_RSP_BAD_STS, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MIO_EMM_RSP_STS_RSP_CRC_ERR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @MIO_EMM_RSP_STS_BLK_CRC_ERR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %8, %1
  %19 = load i32, i32* @EILSEQ, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %43

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @MIO_EMM_RSP_STS_RSP_TIMEOUT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @MIO_EMM_RSP_STS_BLK_TIMEOUT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %21
  %32 = load i32, i32* @ETIMEDOUT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %43

34:                                               ; preds = %26
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @MIO_EMM_RSP_STS_DBUF_ERR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %39, %31, %18
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
