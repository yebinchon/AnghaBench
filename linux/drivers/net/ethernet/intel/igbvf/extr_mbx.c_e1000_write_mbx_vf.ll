; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_mbx.c_e1000_write_mbx_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_mbx.c_e1000_write_mbx_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@E1000_V2PMAILBOX_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32*, i64)* @e1000_write_mbx_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_write_mbx_vf(%struct.e1000_hw* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 1
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %13 = call i64 @e1000_obtain_mbx_lock_vf(%struct.e1000_hw* %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %47

17:                                               ; preds = %3
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %19 = call i32 @e1000_check_for_ack_vf(%struct.e1000_hw* %18)
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %21 = call i32 @e1000_check_for_msg_vf(%struct.e1000_hw* %20)
  store i64 0, i64* %8, align 8
  br label %22

22:                                               ; preds = %34, %17
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = call i32 @VMBMEM(i32 0)
  %28 = load i64, i64* %8, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @array_ew32(i32 %27, i64 %28, i32 %32)
  br label %34

34:                                               ; preds = %26
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %8, align 8
  br label %22

37:                                               ; preds = %22
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = call i32 @V2PMAILBOX(i32 0)
  %45 = load i32, i32* @E1000_V2PMAILBOX_REQ, align 4
  %46 = call i32 @ew32(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %37, %16
  %48 = load i64, i64* %7, align 8
  ret i64 %48
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @e1000_obtain_mbx_lock_vf(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_check_for_ack_vf(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_check_for_msg_vf(%struct.e1000_hw*) #1

declare dso_local i32 @array_ew32(i32, i64, i32) #1

declare dso_local i32 @VMBMEM(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @V2PMAILBOX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
