; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_set_other_mcast_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_set_other_mcast_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { i32 }

@MVNETA_DA_FILT_OTH_MCAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvneta_port*, i32)* @mvneta_set_other_mcast_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvneta_set_other_mcast_table(%struct.mvneta_port* %0, i32 %1) #0 {
  %3 = alloca %struct.mvneta_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mvneta_port* %0, %struct.mvneta_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %11 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memset(i32 %12, i32 0, i32 4)
  store i32 0, i32* %6, align 4
  br label %32

14:                                               ; preds = %2
  %15 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %16 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @memset(i32 %17, i32 1, i32 4)
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 %19, 1
  %21 = or i32 1, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 %22, 24
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 %24, 16
  %26 = or i32 %23, %25
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 %27, 8
  %29 = or i32 %26, %28
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %14, %9
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %44, %32
  %34 = load i32, i32* %5, align 4
  %35 = icmp sle i32 %34, 252
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %38 = load i64, i64* @MVNETA_DA_FILT_OTH_MCAST, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @mvreg_write(%struct.mvneta_port* %37, i64 %41, i32 %42)
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 4
  store i32 %46, i32* %5, align 4
  br label %33

47:                                               ; preds = %33
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mvreg_write(%struct.mvneta_port*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
