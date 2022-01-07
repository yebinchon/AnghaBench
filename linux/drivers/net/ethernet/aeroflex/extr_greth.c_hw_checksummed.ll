; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_hw_checksummed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_hw_checksummed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GRETH_RXBD_IP_FRAG = common dso_local global i32 0, align 4
@GRETH_RXBD_IP = common dso_local global i32 0, align 4
@GRETH_RXBD_IP_CSERR = common dso_local global i32 0, align 4
@GRETH_RXBD_UDP = common dso_local global i32 0, align 4
@GRETH_RXBD_UDP_CSERR = common dso_local global i32 0, align 4
@GRETH_RXBD_TCP = common dso_local global i32 0, align 4
@GRETH_RXBD_TCP_CSERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hw_checksummed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_checksummed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @GRETH_RXBD_IP_FRAG, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @GRETH_RXBD_IP, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @GRETH_RXBD_IP_CSERR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %43

20:                                               ; preds = %14, %9
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @GRETH_RXBD_UDP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @GRETH_RXBD_UDP_CSERR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %43

31:                                               ; preds = %25, %20
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @GRETH_RXBD_TCP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @GRETH_RXBD_TCP_CSERR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %43

42:                                               ; preds = %36, %31
  store i32 1, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %41, %30, %19, %8
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
