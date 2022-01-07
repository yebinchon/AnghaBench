; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_5708s_linkup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_5708s_linkup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, i32 }

@BCM5708S_1000X_STAT1 = common dso_local global i32 0, align 4
@BCM5708S_1000X_STAT1_SPEED_MASK = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_2500 = common dso_local global i32 0, align 4
@BCM5708S_1000X_STAT1_FD = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_5708s_linkup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_5708s_linkup(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  %4 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %5 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %4, i32 0, i32 0
  store i32 1, i32* %5, align 4
  %6 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %7 = load i32, i32* @BCM5708S_1000X_STAT1, align 4
  %8 = call i32 @bnx2_read_phy(%struct.bnx2* %6, i32 %7, i32* %3)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @BCM5708S_1000X_STAT1_SPEED_MASK, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %28 [
    i32 131, label %12
    i32 130, label %16
    i32 129, label %20
    i32 128, label %24
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @SPEED_10, align 4
  %14 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %15 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  br label %28

16:                                               ; preds = %1
  %17 = load i32, i32* @SPEED_100, align 4
  %18 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %19 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  br label %28

20:                                               ; preds = %1
  %21 = load i32, i32* @SPEED_1000, align 4
  %22 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %23 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  br label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @SPEED_2500, align 4
  %26 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %27 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %1, %24, %20, %16, %12
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @BCM5708S_1000X_STAT1_FD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @DUPLEX_FULL, align 4
  %35 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %36 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %41

37:                                               ; preds = %28
  %38 = load i32, i32* @DUPLEX_HALF, align 4
  %39 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %40 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %33
  ret i32 0
}

declare dso_local i32 @bnx2_read_phy(%struct.bnx2*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
