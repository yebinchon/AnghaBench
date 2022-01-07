; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_mbx.c_e1000_read_posted_mbx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_mbx.c_e1000_read_posted_mbx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mbx_info }
%struct.e1000_mbx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32*, i32)* }
%struct.e1000_hw.0 = type opaque

@E1000_ERR_MBX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32*, i32)* @e1000_read_posted_mbx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_read_posted_mbx(%struct.e1000_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_mbx_info*, align 8
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  store %struct.e1000_mbx_info* %10, %struct.e1000_mbx_info** %7, align 8
  %11 = load i64, i64* @E1000_ERR_MBX, align 8
  %12 = sub nsw i64 0, %11
  store i64 %12, i64* %8, align 8
  %13 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %7, align 8
  %14 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64 (%struct.e1000_hw.0*, i32*, i32)*, i64 (%struct.e1000_hw.0*, i32*, i32)** %15, align 8
  %17 = icmp ne i64 (%struct.e1000_hw.0*, i32*, i32)* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %35

19:                                               ; preds = %3
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %21 = call i64 @e1000_poll_for_msg(%struct.e1000_hw* %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %7, align 8
  %26 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64 (%struct.e1000_hw.0*, i32*, i32)*, i64 (%struct.e1000_hw.0*, i32*, i32)** %27, align 8
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %30 = bitcast %struct.e1000_hw* %29 to %struct.e1000_hw.0*
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i64 %28(%struct.e1000_hw.0* %30, i32* %31, i32 %32)
  store i64 %33, i64* %8, align 8
  br label %34

34:                                               ; preds = %24, %19
  br label %35

35:                                               ; preds = %34, %18
  %36 = load i64, i64* %8, align 8
  ret i64 %36
}

declare dso_local i64 @e1000_poll_for_msg(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
