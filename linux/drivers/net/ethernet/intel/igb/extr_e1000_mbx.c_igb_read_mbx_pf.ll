; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_mbx.c_igb_read_mbx_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_mbx.c_igb_read_mbx_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@E1000_P2VMAILBOX_ACK = common dso_local global i32 0, align 4
@E1000_P2VMAILBOX_PFU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32*, i64, i64, i32)* @igb_read_mbx_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igb_read_mbx_pf(%struct.e1000_hw* %0, i32* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i64 @igb_obtain_mbx_lock_pf(%struct.e1000_hw* %13, i64 %14)
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %57

19:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  br label %20

20:                                               ; preds = %32, %19
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @E1000_VMBMEM(i64 %25)
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @array_rd32(i32 %26, i64 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = load i64, i64* %12, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %24
  %33 = load i64, i64* %12, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %12, align 8
  br label %20

35:                                               ; preds = %20
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @E1000_P2VMAILBOX(i64 %39)
  %41 = load i32, i32* @E1000_P2VMAILBOX_ACK, align 4
  %42 = call i32 @wr32(i32 %40, i32 %41)
  br label %50

43:                                               ; preds = %35
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @E1000_P2VMAILBOX(i64 %44)
  %46 = load i32, i32* @E1000_P2VMAILBOX_ACK, align 4
  %47 = load i32, i32* @E1000_P2VMAILBOX_PFU, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @wr32(i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %43, %38
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %52 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %50, %18
  %58 = load i64, i64* %11, align 8
  ret i64 %58
}

declare dso_local i64 @igb_obtain_mbx_lock_pf(%struct.e1000_hw*, i64) #1

declare dso_local i32 @array_rd32(i32, i64) #1

declare dso_local i32 @E1000_VMBMEM(i64) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @E1000_P2VMAILBOX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
