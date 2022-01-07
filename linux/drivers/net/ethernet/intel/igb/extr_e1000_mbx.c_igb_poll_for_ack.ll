; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_mbx.c_igb_poll_for_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_mbx.c_igb_poll_for_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mbx_info }
%struct.e1000_mbx_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32)* }
%struct.e1000_hw.0 = type opaque

@E1000_ERR_MBX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i32)* @igb_poll_for_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_poll_for_ack(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_mbx_info*, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_mbx_info* %8, %struct.e1000_mbx_info** %5, align 8
  %9 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %5, align 8
  %10 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %5, align 8
  %16 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64 (%struct.e1000_hw.0*, i32)*, i64 (%struct.e1000_hw.0*, i32)** %17, align 8
  %19 = icmp ne i64 (%struct.e1000_hw.0*, i32)* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14, %2
  br label %55

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %43, %21
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %5, align 8
  %27 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64 (%struct.e1000_hw.0*, i32)*, i64 (%struct.e1000_hw.0*, i32)** %28, align 8
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = bitcast %struct.e1000_hw* %30 to %struct.e1000_hw.0*
  %32 = load i32, i32* %4, align 4
  %33 = call i64 %29(%struct.e1000_hw.0* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %25, %22
  %36 = phi i1 [ false, %22 ], [ %34, %25 ]
  br i1 %36, label %37, label %48

37:                                               ; preds = %35
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %48

43:                                               ; preds = %37
  %44 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %5, align 8
  %45 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @udelay(i32 %46)
  br label %22

48:                                               ; preds = %42, %35
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %5, align 8
  %53 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %20
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @E1000_ERR_MBX, align 4
  %61 = sub nsw i32 0, %60
  br label %62

62:                                               ; preds = %59, %58
  %63 = phi i32 [ 0, %58 ], [ %61, %59 ]
  ret i32 %63
}

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
