; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_adjust_adaptive_ifs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_adjust_adaptive_ifs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i64, i32, i32 }

@DUPLEX_HALF = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@e100_configure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nic*, i32, i32)* @e100_adjust_adaptive_ifs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e100_adjust_adaptive_ifs(%struct.nic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.nic* %0, %struct.nic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @DUPLEX_HALF, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %78

12:                                               ; preds = %3
  %13 = load %struct.nic*, %struct.nic** %4, align 8
  %14 = getelementptr inbounds %struct.nic, %struct.nic* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SPEED_100, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1000, i32 100
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %8, align 8
  %22 = load %struct.nic*, %struct.nic** %4, align 8
  %23 = getelementptr inbounds %struct.nic, %struct.nic* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sdiv i32 %24, 32
  %26 = load %struct.nic*, %struct.nic** %4, align 8
  %27 = getelementptr inbounds %struct.nic, %struct.nic* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %12
  %31 = load %struct.nic*, %struct.nic** %4, align 8
  %32 = getelementptr inbounds %struct.nic, %struct.nic* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %8, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %30
  %38 = load %struct.nic*, %struct.nic** %4, align 8
  %39 = getelementptr inbounds %struct.nic, %struct.nic* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %40, 60
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.nic*, %struct.nic** %4, align 8
  %44 = getelementptr inbounds %struct.nic, %struct.nic* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 5
  store i64 %46, i64* %44, align 8
  br label %47

47:                                               ; preds = %42, %37
  br label %67

48:                                               ; preds = %30, %12
  %49 = load %struct.nic*, %struct.nic** %4, align 8
  %50 = getelementptr inbounds %struct.nic, %struct.nic* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %8, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = load %struct.nic*, %struct.nic** %4, align 8
  %57 = getelementptr inbounds %struct.nic, %struct.nic* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sge i64 %58, 5
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.nic*, %struct.nic** %4, align 8
  %62 = getelementptr inbounds %struct.nic, %struct.nic* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, 5
  store i64 %64, i64* %62, align 8
  br label %65

65:                                               ; preds = %60, %55
  br label %66

66:                                               ; preds = %65, %48
  br label %67

67:                                               ; preds = %66, %47
  %68 = load %struct.nic*, %struct.nic** %4, align 8
  %69 = getelementptr inbounds %struct.nic, %struct.nic* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.nic*, %struct.nic** %4, align 8
  %75 = load i32, i32* @e100_configure, align 4
  %76 = call i32 @e100_exec_cb(%struct.nic* %74, i32* null, i32 %75)
  br label %77

77:                                               ; preds = %73, %67
  br label %78

78:                                               ; preds = %77, %3
  ret void
}

declare dso_local i32 @e100_exec_cb(%struct.nic*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
