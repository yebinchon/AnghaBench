; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_do_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_do_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvm_mmc_host = type { i64, %struct.sg_mapping_iter }
%struct.sg_mapping_iter = type { i64, i64, i64 }
%struct.mmc_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cvm_mmc_host*, %struct.mmc_request*, i32)* @do_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_read(%struct.cvm_mmc_host* %0, %struct.mmc_request* %1, i32 %2) #0 {
  %4 = alloca %struct.cvm_mmc_host*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sg_mapping_iter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cvm_mmc_host* %0, %struct.cvm_mmc_host** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %4, align 8
  %13 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %12, i32 0, i32 1
  store %struct.sg_mapping_iter* %13, %struct.sg_mapping_iter** %7, align 8
  %14 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %15 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %20 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %18, %23
  store i32 %24, i32* %8, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 %25, 6
  %27 = or i32 65536, %26
  %28 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %4, align 8
  %29 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %4, align 8
  %32 = call i64 @MIO_EMM_BUF_IDX(%struct.cvm_mmc_host* %31)
  %33 = add nsw i64 %30, %32
  %34 = call i32 @writeq(i32 %27, i64 %33)
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %101, %3
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %102

39:                                               ; preds = %35
  %40 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %7, align 8
  %41 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %7, align 8
  %44 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp uge i64 %42, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %7, align 8
  %49 = call i32 @sg_miter_next(%struct.sg_mapping_iter* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  br label %102

52:                                               ; preds = %47
  %53 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %7, align 8
  %54 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %52, %39
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %4, align 8
  %60 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %4, align 8
  %63 = call i64 @MIO_EMM_BUF_DAT(%struct.cvm_mmc_host* %62)
  %64 = add nsw i64 %61, %63
  %65 = call i32 @readq(i64 %64)
  store i32 %65, i32* %11, align 4
  store i32 56, i32* %10, align 4
  br label %66

66:                                               ; preds = %58, %55
  br label %67

67:                                               ; preds = %80, %66
  %68 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %7, align 8
  %69 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %7, align 8
  %72 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %70, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* %10, align 4
  %77 = icmp sge i32 %76, 0
  br label %78

78:                                               ; preds = %75, %67
  %79 = phi i1 [ false, %67 ], [ %77, %75 ]
  br i1 %79, label %80, label %101

80:                                               ; preds = %78
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %10, align 4
  %83 = ashr i32 %81, %82
  %84 = and i32 %83, 255
  %85 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %7, align 8
  %86 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i32*
  %89 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %7, align 8
  %90 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32 %84, i32* %92, align 4
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  %95 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %7, align 8
  %96 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %96, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sub nsw i32 %99, 8
  store i32 %100, i32* %10, align 4
  br label %67

101:                                              ; preds = %78
  br label %35

102:                                              ; preds = %51, %35
  %103 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %7, align 8
  %104 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %103)
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %107 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  store i32 %105, i32* %109, align 8
  %110 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %111 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  store i64 0, i64* %113, align 8
  ret void
}

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i64 @MIO_EMM_BUF_IDX(%struct.cvm_mmc_host*) #1

declare dso_local i32 @sg_miter_next(%struct.sg_mapping_iter*) #1

declare dso_local i32 @readq(i64) #1

declare dso_local i64 @MIO_EMM_BUF_DAT(%struct.cvm_mmc_host*) #1

declare dso_local i32 @sg_miter_stop(%struct.sg_mapping_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
