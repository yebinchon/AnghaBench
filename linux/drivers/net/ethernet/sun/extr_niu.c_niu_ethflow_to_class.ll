; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_ethflow_to_class.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_ethflow_to_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLASS_CODE_TCP_IPV4 = common dso_local global i32 0, align 4
@CLASS_CODE_UDP_IPV4 = common dso_local global i32 0, align 4
@CLASS_CODE_AH_ESP_IPV4 = common dso_local global i32 0, align 4
@CLASS_CODE_SCTP_IPV4 = common dso_local global i32 0, align 4
@CLASS_CODE_TCP_IPV6 = common dso_local global i32 0, align 4
@CLASS_CODE_UDP_IPV6 = common dso_local global i32 0, align 4
@CLASS_CODE_AH_ESP_IPV6 = common dso_local global i32 0, align 4
@CLASS_CODE_SCTP_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @niu_ethflow_to_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_ethflow_to_class(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %31 [
    i32 131, label %7
    i32 129, label %10
    i32 139, label %13
    i32 137, label %13
    i32 135, label %13
    i32 133, label %16
    i32 130, label %19
    i32 128, label %22
    i32 138, label %25
    i32 136, label %25
    i32 134, label %25
    i32 132, label %28
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @CLASS_CODE_TCP_IPV4, align 4
  %9 = load i32*, i32** %5, align 8
  store i32 %8, i32* %9, align 4
  br label %32

10:                                               ; preds = %2
  %11 = load i32, i32* @CLASS_CODE_UDP_IPV4, align 4
  %12 = load i32*, i32** %5, align 8
  store i32 %11, i32* %12, align 4
  br label %32

13:                                               ; preds = %2, %2, %2
  %14 = load i32, i32* @CLASS_CODE_AH_ESP_IPV4, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load i32, i32* @CLASS_CODE_SCTP_IPV4, align 4
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  br label %32

19:                                               ; preds = %2
  %20 = load i32, i32* @CLASS_CODE_TCP_IPV6, align 4
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  br label %32

22:                                               ; preds = %2
  %23 = load i32, i32* @CLASS_CODE_UDP_IPV6, align 4
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  br label %32

25:                                               ; preds = %2, %2, %2
  %26 = load i32, i32* @CLASS_CODE_AH_ESP_IPV6, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load i32, i32* @CLASS_CODE_SCTP_IPV6, align 4
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  br label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

32:                                               ; preds = %28, %25, %22, %19, %16, %13, %10, %7
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
