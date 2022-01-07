; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_submit_bnx2_kwqes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_submit_bnx2_kwqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, %struct.cnic_local* }
%struct.cnic_local = type { i64, i32, i32, %struct.kwqe**, i32 }
%struct.kwqe = type { i32 }

@CNIC_F_CNIC_UP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CNIC_LCL_FL_KWQ_INIT = common dso_local global i32 0, align 4
@MAX_KWQ_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.kwqe**, i64)* @cnic_submit_bnx2_kwqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_submit_bnx2_kwqes(%struct.cnic_dev* %0, %struct.kwqe** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cnic_dev*, align 8
  %6 = alloca %struct.kwqe**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cnic_local*, align 8
  %9 = alloca %struct.kwqe*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %5, align 8
  store %struct.kwqe** %1, %struct.kwqe*** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %14 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %13, i32 0, i32 1
  %15 = load %struct.cnic_local*, %struct.cnic_local** %14, align 8
  store %struct.cnic_local* %15, %struct.cnic_local** %8, align 8
  %16 = load i32, i32* @CNIC_F_CNIC_UP, align 4
  %17 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %18 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %17, i32 0, i32 0
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %99

24:                                               ; preds = %3
  %25 = load %struct.cnic_local*, %struct.cnic_local** %8, align 8
  %26 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %25, i32 0, i32 1
  %27 = call i32 @spin_lock_bh(i32* %26)
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.cnic_local*, %struct.cnic_local** %8, align 8
  %30 = call i64 @cnic_kwq_avail(%struct.cnic_local* %29)
  %31 = icmp sgt i64 %28, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %24
  %33 = load i32, i32* @CNIC_LCL_FL_KWQ_INIT, align 4
  %34 = load %struct.cnic_local*, %struct.cnic_local** %8, align 8
  %35 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %34, i32 0, i32 4
  %36 = call i32 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.cnic_local*, %struct.cnic_local** %8, align 8
  %40 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock_bh(i32* %40)
  %42 = load i32, i32* @EAGAIN, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %99

44:                                               ; preds = %32, %24
  %45 = load i32, i32* @CNIC_LCL_FL_KWQ_INIT, align 4
  %46 = load %struct.cnic_local*, %struct.cnic_local** %8, align 8
  %47 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %46, i32 0, i32 4
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  %49 = load %struct.cnic_local*, %struct.cnic_local** %8, align 8
  %50 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @MAX_KWQ_IDX, align 8
  %54 = and i64 %52, %53
  store i64 %54, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %55

55:                                               ; preds = %81, %44
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %55
  %60 = load %struct.cnic_local*, %struct.cnic_local** %8, align 8
  %61 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %60, i32 0, i32 3
  %62 = load %struct.kwqe**, %struct.kwqe*** %61, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i64 @KWQ_PG(i64 %63)
  %65 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %62, i64 %64
  %66 = load %struct.kwqe*, %struct.kwqe** %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i64 @KWQ_IDX(i64 %67)
  %69 = getelementptr inbounds %struct.kwqe, %struct.kwqe* %66, i64 %68
  store %struct.kwqe* %69, %struct.kwqe** %9, align 8
  %70 = load %struct.kwqe*, %struct.kwqe** %9, align 8
  %71 = load %struct.kwqe**, %struct.kwqe*** %6, align 8
  %72 = load i64, i64* %12, align 8
  %73 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %71, i64 %72
  %74 = load %struct.kwqe*, %struct.kwqe** %73, align 8
  %75 = call i32 @memcpy(%struct.kwqe* %70, %struct.kwqe* %74, i32 4)
  %76 = load i64, i64* %10, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %10, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* @MAX_KWQ_IDX, align 8
  %80 = and i64 %78, %79
  store i64 %80, i64* %11, align 8
  br label %81

81:                                               ; preds = %59
  %82 = load i64, i64* %12, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %12, align 8
  br label %55

84:                                               ; preds = %55
  %85 = load i64, i64* %10, align 8
  %86 = load %struct.cnic_local*, %struct.cnic_local** %8, align 8
  %87 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %89 = load %struct.cnic_local*, %struct.cnic_local** %8, align 8
  %90 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.cnic_local*, %struct.cnic_local** %8, align 8
  %93 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @CNIC_WR16(%struct.cnic_dev* %88, i32 %91, i64 %94)
  %96 = load %struct.cnic_local*, %struct.cnic_local** %8, align 8
  %97 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %96, i32 0, i32 1
  %98 = call i32 @spin_unlock_bh(i32* %97)
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %84, %38, %21
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @cnic_kwq_avail(%struct.cnic_local*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @KWQ_PG(i64) #1

declare dso_local i64 @KWQ_IDX(i64) #1

declare dso_local i32 @memcpy(%struct.kwqe*, %struct.kwqe*, i32) #1

declare dso_local i32 @CNIC_WR16(%struct.cnic_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
