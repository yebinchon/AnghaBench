; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ipsec.c_ixgbe_ipsec_find_empty_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ipsec.c_ixgbe_ipsec_find_empty_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ipsec = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IXGBE_IPSEC_MAX_SA_COUNT = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_ipsec*, i32)* @ixgbe_ipsec_find_empty_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_ipsec_find_empty_idx(%struct.ixgbe_ipsec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_ipsec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ixgbe_ipsec* %0, %struct.ixgbe_ipsec** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %2
  %10 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %4, align 8
  %11 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IXGBE_IPSEC_MAX_SA_COUNT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, i32* @ENOSPC, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %74

18:                                               ; preds = %9
  store i64 0, i64* %6, align 8
  br label %19

19:                                               ; preds = %36, %18
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @IXGBE_IPSEC_MAX_SA_COUNT, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %4, align 8
  %25 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i64, i64* %6, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %74

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %6, align 8
  br label %19

39:                                               ; preds = %19
  br label %71

40:                                               ; preds = %2
  %41 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %4, align 8
  %42 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IXGBE_IPSEC_MAX_SA_COUNT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOSPC, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %74

49:                                               ; preds = %40
  store i64 0, i64* %6, align 8
  br label %50

50:                                               ; preds = %67, %49
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @IXGBE_IPSEC_MAX_SA_COUNT, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %4, align 8
  %56 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %54
  %64 = load i64, i64* %6, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %3, align 4
  br label %74

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %6, align 8
  br label %50

70:                                               ; preds = %50
  br label %71

71:                                               ; preds = %70, %39
  %72 = load i32, i32* @ENOSPC, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %63, %46, %32, %15
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
