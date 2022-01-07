; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_mbx.c_ixgbe_read_mbx_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_mbx.c_ixgbe_read_mbx_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IXGBE_PFMAILBOX_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32*, i64, i64)* @ixgbe_read_mbx_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_read_mbx_pf(%struct.ixgbe_hw* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i64 @ixgbe_obtain_mbx_lock_pf(%struct.ixgbe_hw* %12, i64 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i64, i64* %10, align 8
  store i64 %18, i64* %5, align 8
  br label %48

19:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  br label %20

20:                                               ; preds = %33, %19
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @IXGBE_PFMBMEM(i64 %26)
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @IXGBE_READ_REG_ARRAY(%struct.ixgbe_hw* %25, i32 %27, i64 %28)
  %30 = load i32*, i32** %7, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %24
  %34 = load i64, i64* %11, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %11, align 8
  br label %20

36:                                               ; preds = %20
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @IXGBE_PFMAILBOX(i64 %38)
  %40 = load i32, i32* @IXGBE_PFMAILBOX_ACK, align 4
  %41 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %37, i32 %39, i32 %40)
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  store i64 0, i64* %5, align 8
  br label %48

48:                                               ; preds = %36, %17
  %49 = load i64, i64* %5, align 8
  ret i64 %49
}

declare dso_local i64 @ixgbe_obtain_mbx_lock_pf(%struct.ixgbe_hw*, i64) #1

declare dso_local i32 @IXGBE_READ_REG_ARRAY(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @IXGBE_PFMBMEM(i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_PFMAILBOX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
