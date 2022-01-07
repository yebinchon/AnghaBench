; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_speed_to_fw_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_speed_to_fw_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FW_PORT_CAP32_SPEED_100M = common dso_local global i32 0, align 4
@FW_PORT_CAP32_SPEED_1G = common dso_local global i32 0, align 4
@FW_PORT_CAP32_SPEED_10G = common dso_local global i32 0, align 4
@FW_PORT_CAP32_SPEED_25G = common dso_local global i32 0, align 4
@FW_PORT_CAP32_SPEED_40G = common dso_local global i32 0, align 4
@FW_PORT_CAP32_SPEED_50G = common dso_local global i32 0, align 4
@FW_PORT_CAP32_SPEED_100G = common dso_local global i32 0, align 4
@FW_PORT_CAP32_SPEED_200G = common dso_local global i32 0, align 4
@FW_PORT_CAP32_SPEED_400G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @speed_to_fw_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @speed_to_fw_caps(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 100
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @FW_PORT_CAP32_SPEED_100M, align 4
  store i32 %7, i32* %2, align 4
  br label %49

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 1000
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i32, i32* @FW_PORT_CAP32_SPEED_1G, align 4
  store i32 %12, i32* %2, align 4
  br label %49

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 10000
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @FW_PORT_CAP32_SPEED_10G, align 4
  store i32 %17, i32* %2, align 4
  br label %49

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 25000
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @FW_PORT_CAP32_SPEED_25G, align 4
  store i32 %22, i32* %2, align 4
  br label %49

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 40000
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @FW_PORT_CAP32_SPEED_40G, align 4
  store i32 %27, i32* %2, align 4
  br label %49

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 50000
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @FW_PORT_CAP32_SPEED_50G, align 4
  store i32 %32, i32* %2, align 4
  br label %49

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %34, 100000
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @FW_PORT_CAP32_SPEED_100G, align 4
  store i32 %37, i32* %2, align 4
  br label %49

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  %40 = icmp eq i32 %39, 200000
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @FW_PORT_CAP32_SPEED_200G, align 4
  store i32 %42, i32* %2, align 4
  br label %49

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 400000
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @FW_PORT_CAP32_SPEED_400G, align 4
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %46, %41, %36, %31, %26, %21, %16, %11, %6
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
