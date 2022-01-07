; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_set_cmd_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_set_cmd_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvm_mmc_host = type { i64 }
%struct.mmc_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@MIO_EMM_RSP_STS_RSP_VAL = common dso_local global i32 0, align 4
@MIO_EMM_RSP_STS_RSP_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cvm_mmc_host*, %struct.mmc_request*, i32)* @set_cmd_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cmd_response(%struct.cvm_mmc_host* %0, %struct.mmc_request* %1, i32 %2) #0 {
  %4 = alloca %struct.cvm_mmc_host*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cvm_mmc_host* %0, %struct.cvm_mmc_host** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @MIO_EMM_RSP_STS_RSP_VAL, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %90

14:                                               ; preds = %3
  %15 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %4, align 8
  %16 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %4, align 8
  %19 = call i64 @MIO_EMM_RSP_LO(%struct.cvm_mmc_host* %18)
  %20 = add nsw i64 %17, %19
  %21 = call i32 @readq(i64 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @MIO_EMM_RSP_STS_RSP_TYPE, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @FIELD_GET(i32 %22, i32 %23)
  switch i32 %24, label %90 [
    i32 1, label %25
    i32 3, label %25
    i32 2, label %52
  ]

25:                                               ; preds = %14, %14
  %26 = load i32, i32* %8, align 4
  %27 = ashr i32 %26, 8
  %28 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %29 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %27, i32* %33, align 4
  %34 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %35 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %41 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32 0, i32* %45, align 4
  %46 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %47 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32 0, i32* %51, align 4
  br label %90

52:                                               ; preds = %14
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %55 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  store i32 %53, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = ashr i32 %60, 32
  %62 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %63 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  store i32 %61, i32* %67, align 4
  %68 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %4, align 8
  %69 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %4, align 8
  %72 = call i64 @MIO_EMM_RSP_HI(%struct.cvm_mmc_host* %71)
  %73 = add nsw i64 %70, %72
  %74 = call i32 @readq(i64 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %77 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 %75, i32* %81, align 4
  %82 = load i32, i32* %7, align 4
  %83 = ashr i32 %82, 32
  %84 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %85 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %83, i32* %89, align 4
  br label %90

90:                                               ; preds = %13, %14, %52, %25
  ret void
}

declare dso_local i32 @readq(i64) #1

declare dso_local i64 @MIO_EMM_RSP_LO(%struct.cvm_mmc_host*) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i64 @MIO_EMM_RSP_HI(%struct.cvm_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
