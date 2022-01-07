; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_check_lbtest_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_check_lbtest_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_rx_buffer = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_rx_buffer*, i32)* @ixgbe_check_lbtest_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_check_lbtest_frame(%struct.ixgbe_rx_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_rx_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.ixgbe_rx_buffer* %0, %struct.ixgbe_rx_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = lshr i32 %7, 1
  store i32 %8, i32* %4, align 4
  %9 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @kmap(i32 %11)
  %13 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %12, i64 %16
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 3
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %21, 255
  br i1 %22, label %41, label %23

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = add i32 %25, 10
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp ne i32 %30, 190
  br i1 %31, label %41, label %32

32:                                               ; preds = %23
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = add i32 %34, 12
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp ne i32 %39, 175
  br i1 %40, label %41, label %42

41:                                               ; preds = %32, %23, %2
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %32
  %43 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %3, align 8
  %44 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @kunmap(i32 %45)
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i8* @kmap(i32) #1

declare dso_local i32 @kunmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
