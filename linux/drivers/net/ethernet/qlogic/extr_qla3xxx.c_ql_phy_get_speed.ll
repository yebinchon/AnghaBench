; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_phy_get_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_phy_get_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i32 }

@AUX_CONTROL_STATUS = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql3_adapter*)* @ql_phy_get_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_phy_get_speed(%struct.ql3_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql3_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %3, align 8
  %5 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %17 [
    i32 128, label %8
  ]

8:                                                ; preds = %1
  %9 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %10 = call i32 @ql_mii_read_reg(%struct.ql3_adapter* %9, i32 26, i32* %4)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %37

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 8
  %16 = and i32 %15, 3
  store i32 %16, i32* %4, align 4
  br label %28

17:                                               ; preds = %1
  %18 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %19 = load i32, i32* @AUX_CONTROL_STATUS, align 4
  %20 = call i32 @ql_mii_read_reg(%struct.ql3_adapter* %18, i32 %19, i32* %4)
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %37

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 24
  %26 = ashr i32 %25, 3
  %27 = and i32 %26, 3
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %23, %13
  %29 = load i32, i32* %4, align 4
  switch i32 %29, label %36 [
    i32 2, label %30
    i32 1, label %32
    i32 0, label %34
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* @SPEED_1000, align 4
  store i32 %31, i32* %2, align 4
  br label %37

32:                                               ; preds = %28
  %33 = load i32, i32* @SPEED_100, align 4
  store i32 %33, i32* %2, align 4
  br label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @SPEED_10, align 4
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %28
  store i32 -1, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %34, %32, %30, %22, %12
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @ql_mii_read_reg(%struct.ql3_adapter*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
