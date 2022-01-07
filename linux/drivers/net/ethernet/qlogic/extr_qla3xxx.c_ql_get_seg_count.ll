; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_get_seg_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_get_seg_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i64 }

@QL3022_DEVICE_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql3_adapter*, i16)* @ql_get_seg_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_get_seg_count(%struct.ql3_adapter* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ql3_adapter*, align 8
  %5 = alloca i16, align 2
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %4, align 8
  store i16 %1, i16* %5, align 2
  %6 = load %struct.ql3_adapter*, %struct.ql3_adapter** %4, align 8
  %7 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @QL3022_DEVICE_ID, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %57

12:                                               ; preds = %2
  %13 = load i16, i16* %5, align 2
  %14 = zext i16 %13 to i32
  %15 = icmp sle i32 %14, 2
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i16, i16* %5, align 2
  %18 = zext i16 %17 to i32
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %57

20:                                               ; preds = %12
  %21 = load i16, i16* %5, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp sle i32 %22, 6
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i16, i16* %5, align 2
  %26 = zext i16 %25 to i32
  %27 = add nsw i32 %26, 2
  store i32 %27, i32* %3, align 4
  br label %57

28:                                               ; preds = %20
  %29 = load i16, i16* %5, align 2
  %30 = zext i16 %29 to i32
  %31 = icmp sle i32 %30, 10
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i16, i16* %5, align 2
  %34 = zext i16 %33 to i32
  %35 = add nsw i32 %34, 3
  store i32 %35, i32* %3, align 4
  br label %57

36:                                               ; preds = %28
  %37 = load i16, i16* %5, align 2
  %38 = zext i16 %37 to i32
  %39 = icmp sle i32 %38, 14
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i16, i16* %5, align 2
  %42 = zext i16 %41 to i32
  %43 = add nsw i32 %42, 4
  store i32 %43, i32* %3, align 4
  br label %57

44:                                               ; preds = %36
  %45 = load i16, i16* %5, align 2
  %46 = zext i16 %45 to i32
  %47 = icmp sle i32 %46, 18
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i16, i16* %5, align 2
  %50 = zext i16 %49 to i32
  %51 = add nsw i32 %50, 5
  store i32 %51, i32* %3, align 4
  br label %57

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  store i32 -1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %48, %40, %32, %24, %16, %11
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
