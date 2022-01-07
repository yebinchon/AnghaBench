; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_do_write_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_do_write_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvm_mmc_host = type { i64, %struct.sg_mapping_iter }
%struct.sg_mapping_iter = type { i64, i64, i64 }
%struct.mmc_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@SG_MITER_FROM_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cvm_mmc_host*, %struct.mmc_request*)* @do_write_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_write_request(%struct.cvm_mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.cvm_mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sg_mapping_iter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cvm_mmc_host* %0, %struct.cvm_mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %10 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %16 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul i32 %14, %19
  store i32 %20, i32* %5, align 4
  %21 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %22 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %21, i32 0, i32 1
  store %struct.sg_mapping_iter* %22, %struct.sg_mapping_iter** %6, align 8
  store i32 56, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %23 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %6, align 8
  %24 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %25 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SG_MITER_FROM_SG, align 4
  %35 = call i32 @sg_miter_start(%struct.sg_mapping_iter* %23, i32 %28, i32 %33, i32 %34)
  %36 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %37 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %40 = call i64 @MIO_EMM_BUF_IDX(%struct.cvm_mmc_host* %39)
  %41 = add nsw i64 %38, %40
  %42 = call i32 @writeq(i32 65536, i64 %41)
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %112, %2
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %113

47:                                               ; preds = %43
  %48 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %6, align 8
  %49 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %6, align 8
  %52 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp uge i64 %50, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %6, align 8
  %57 = call i32 @sg_miter_next(%struct.sg_mapping_iter* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  br label %113

60:                                               ; preds = %55
  %61 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %6, align 8
  %62 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %60, %47
  br label %64

64:                                               ; preds = %77, %63
  %65 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %6, align 8
  %66 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %6, align 8
  %69 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %67, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i32, i32* %8, align 4
  %74 = icmp sge i32 %73, 0
  br label %75

75:                                               ; preds = %72, %64
  %76 = phi i1 [ false, %64 ], [ %74, %72 ]
  br i1 %76, label %77, label %100

77:                                               ; preds = %75
  %78 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %6, align 8
  %79 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i64*
  %82 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %6, align 8
  %83 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i64, i64* %81, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i32, i32* %8, align 4
  %89 = shl i32 %87, %88
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %7, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %7, align 4
  %94 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %6, align 8
  %95 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %95, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sub nsw i32 %98, 8
  store i32 %99, i32* %8, align 4
  br label %64

100:                                              ; preds = %75
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %106 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %109 = call i64 @MIO_EMM_BUF_DAT(%struct.cvm_mmc_host* %108)
  %110 = add nsw i64 %107, %109
  %111 = call i32 @writeq(i32 %104, i64 %110)
  store i32 56, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %103, %100
  br label %43

113:                                              ; preds = %59, %43
  %114 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %6, align 8
  %115 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %114)
  ret void
}

declare dso_local i32 @sg_miter_start(%struct.sg_mapping_iter*, i32, i32, i32) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i64 @MIO_EMM_BUF_IDX(%struct.cvm_mmc_host*) #1

declare dso_local i32 @sg_miter_next(%struct.sg_mapping_iter*) #1

declare dso_local i64 @MIO_EMM_BUF_DAT(%struct.cvm_mmc_host*) #1

declare dso_local i32 @sg_miter_stop(%struct.sg_mapping_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
