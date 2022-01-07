; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_assign_wq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_assign_wq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa_fq = type { i32, i32, i32 }

@DPAA_TC_TXQ_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Too many TX FQs: more than %d!\0A\00", align 1
@DPAA_ETH_TXQ_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Invalid FQ type %d for FQID %d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpaa_fq*, i32)* @dpaa_assign_wq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpaa_assign_wq(%struct.dpaa_fq* %0, i32 %1) #0 {
  %3 = alloca %struct.dpaa_fq*, align 8
  %4 = alloca i32, align 4
  store %struct.dpaa_fq* %0, %struct.dpaa_fq** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.dpaa_fq*, %struct.dpaa_fq** %3, align 8
  %6 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %37 [
    i32 130, label %8
    i32 129, label %8
    i32 133, label %11
    i32 128, label %11
    i32 134, label %14
    i32 132, label %14
    i32 131, label %17
  ]

8:                                                ; preds = %2, %2
  %9 = load %struct.dpaa_fq*, %struct.dpaa_fq** %3, align 8
  %10 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %9, i32 0, i32 1
  store i32 1, i32* %10, align 4
  br label %45

11:                                               ; preds = %2, %2
  %12 = load %struct.dpaa_fq*, %struct.dpaa_fq** %3, align 8
  %13 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %12, i32 0, i32 1
  store i32 5, i32* %13, align 4
  br label %45

14:                                               ; preds = %2, %2
  %15 = load %struct.dpaa_fq*, %struct.dpaa_fq** %3, align 8
  %16 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %15, i32 0, i32 1
  store i32 6, i32* %16, align 4
  br label %45

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @DPAA_TC_TXQ_NUM, align 4
  %20 = sdiv i32 %18, %19
  switch i32 %20, label %33 [
    i32 0, label %21
    i32 1, label %24
    i32 2, label %27
    i32 3, label %30
  ]

21:                                               ; preds = %17
  %22 = load %struct.dpaa_fq*, %struct.dpaa_fq** %3, align 8
  %23 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %22, i32 0, i32 1
  store i32 6, i32* %23, align 4
  br label %36

24:                                               ; preds = %17
  %25 = load %struct.dpaa_fq*, %struct.dpaa_fq** %3, align 8
  %26 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %25, i32 0, i32 1
  store i32 2, i32* %26, align 4
  br label %36

27:                                               ; preds = %17
  %28 = load %struct.dpaa_fq*, %struct.dpaa_fq** %3, align 8
  %29 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  br label %36

30:                                               ; preds = %17
  %31 = load %struct.dpaa_fq*, %struct.dpaa_fq** %3, align 8
  %32 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  br label %36

33:                                               ; preds = %17
  %34 = load i32, i32* @DPAA_ETH_TXQ_NUM, align 4
  %35 = call i32 (i32, i8*, i32, ...) @WARN(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %30, %27, %24, %21
  br label %45

37:                                               ; preds = %2
  %38 = load %struct.dpaa_fq*, %struct.dpaa_fq** %3, align 8
  %39 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dpaa_fq*, %struct.dpaa_fq** %3, align 8
  %42 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, i32, ...) @WARN(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %37, %36, %14, %11, %8
  ret void
}

declare dso_local i32 @WARN(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
