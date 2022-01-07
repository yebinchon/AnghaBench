; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_get_kcqes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_get_kcqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { %struct.kcqe** }
%struct.kcqe = type { i32 }
%struct.kcq_info = type { i32, i32*, i32 (i32)*, i32 (i32)*, %struct.kcqe** }

@MAX_KCQ_IDX = common dso_local global i32 0, align 4
@MAX_COMPLETED_KCQE = common dso_local global i32 0, align 4
@KCQE_FLAGS_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.kcq_info*)* @cnic_get_kcqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_get_kcqes(%struct.cnic_dev* %0, %struct.kcq_info* %1) #0 {
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.kcq_info*, align 8
  %5 = alloca %struct.cnic_local*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kcqe*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  store %struct.kcq_info* %1, %struct.kcq_info** %4, align 8
  %13 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %14 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %13, i32 0, i32 0
  %15 = load %struct.cnic_local*, %struct.cnic_local** %14, align 8
  store %struct.cnic_local* %15, %struct.cnic_local** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.kcq_info*, %struct.kcq_info** %4, align 8
  %17 = getelementptr inbounds %struct.kcq_info, %struct.kcq_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  store i32 %18, i32* %7, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @MAX_KCQ_IDX, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load %struct.kcq_info*, %struct.kcq_info** %4, align 8
  %23 = getelementptr inbounds %struct.kcq_info, %struct.kcq_info* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.kcq_info*, %struct.kcq_info** %4, align 8
  %27 = getelementptr inbounds %struct.kcq_info, %struct.kcq_info* %26, i32 0, i32 2
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 %28(i32 %29)
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %81, %2
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @MAX_COMPLETED_KCQE, align 4
  %38 = icmp slt i32 %36, %37
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i1 [ false, %31 ], [ %38, %35 ]
  br i1 %40, label %41, label %82

41:                                               ; preds = %39
  %42 = load %struct.kcq_info*, %struct.kcq_info** %4, align 8
  %43 = getelementptr inbounds %struct.kcq_info, %struct.kcq_info* %42, i32 0, i32 4
  %44 = load %struct.kcqe**, %struct.kcqe*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @KCQ_PG(i32 %45)
  %47 = getelementptr inbounds %struct.kcqe*, %struct.kcqe** %44, i64 %46
  %48 = load %struct.kcqe*, %struct.kcqe** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @KCQ_IDX(i32 %49)
  %51 = getelementptr inbounds %struct.kcqe, %struct.kcqe* %48, i64 %50
  store %struct.kcqe* %51, %struct.kcqe** %10, align 8
  %52 = load %struct.kcqe*, %struct.kcqe** %10, align 8
  %53 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %54 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %53, i32 0, i32 0
  %55 = load %struct.kcqe**, %struct.kcqe*** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds %struct.kcqe*, %struct.kcqe** %55, i64 %58
  store %struct.kcqe* %52, %struct.kcqe** %59, align 8
  %60 = load %struct.kcq_info*, %struct.kcq_info** %4, align 8
  %61 = getelementptr inbounds %struct.kcq_info, %struct.kcq_info* %60, i32 0, i32 3
  %62 = load i32 (i32)*, i32 (i32)** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 %62(i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @MAX_KCQ_IDX, align 4
  %67 = and i32 %65, %66
  store i32 %67, i32* %7, align 4
  %68 = load %struct.kcqe*, %struct.kcqe** %10, align 8
  %69 = getelementptr inbounds %struct.kcqe, %struct.kcqe* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @KCQE_FLAGS_NEXT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i64 @likely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %41
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %78, %41
  br label %31

82:                                               ; preds = %39
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.kcq_info*, %struct.kcq_info** %4, align 8
  %85 = getelementptr inbounds %struct.kcq_info, %struct.kcq_info* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %12, align 4
  ret i32 %86
}

declare dso_local i64 @KCQ_PG(i32) #1

declare dso_local i64 @KCQ_IDX(i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
