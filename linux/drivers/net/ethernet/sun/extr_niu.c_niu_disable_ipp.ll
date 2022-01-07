; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_disable_ipp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_disable_ipp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@IPP_DFIFO_RD_PTR = common dso_local global i32 0, align 4
@IPP_DFIFO_WR_PTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"IPP would not quiesce, rd_ptr[%llx] wr_ptr[%llx]\0A\00", align 1
@IPP_CFIG = common dso_local global i32 0, align 4
@IPP_CFIG_IPP_ENABLE = common dso_local global i64 0, align 8
@IPP_CFIG_DFIFO_ECC_EN = common dso_local global i64 0, align 8
@IPP_CFIG_DROP_BAD_CRC = common dso_local global i64 0, align 8
@IPP_CFIG_CKSUM_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*)* @niu_disable_ipp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_disable_ipp(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %2, align 8
  %7 = load i32, i32* @IPP_DFIFO_RD_PTR, align 4
  %8 = call i64 @nr64_ipp(i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load i32, i32* @IPP_DFIFO_WR_PTR, align 4
  %10 = call i64 @nr64_ipp(i32 %9)
  store i64 %10, i64* %4, align 8
  store i32 100, i32* %6, align 4
  br label %11

11:                                               ; preds = %21, %1
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %16, %17
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i1 [ false, %11 ], [ %18, %15 ]
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  %22 = load i32, i32* @IPP_DFIFO_RD_PTR, align 4
  %23 = call i64 @nr64_ipp(i32 %22)
  store i64 %23, i64* %3, align 8
  %24 = load i32, i32* @IPP_DFIFO_WR_PTR, align 4
  %25 = call i64 @nr64_ipp(i32 %24)
  store i64 %25, i64* %4, align 8
  br label %11

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load i64, i64* %3, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %33, 1
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.niu*, %struct.niu** %2, align 8
  %37 = getelementptr inbounds %struct.niu, %struct.niu* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IPP_DFIFO_RD_PTR, align 4
  %40 = call i64 @nr64_ipp(i32 %39)
  %41 = load i32, i32* @IPP_DFIFO_WR_PTR, align 4
  %42 = call i64 @nr64_ipp(i32 %41)
  %43 = call i32 @netdev_err(i32 %38, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %40, i64 %42)
  br label %44

44:                                               ; preds = %35, %32, %29, %26
  %45 = load i32, i32* @IPP_CFIG, align 4
  %46 = call i64 @nr64_ipp(i32 %45)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* @IPP_CFIG_IPP_ENABLE, align 8
  %48 = load i64, i64* @IPP_CFIG_DFIFO_ECC_EN, align 8
  %49 = or i64 %47, %48
  %50 = load i64, i64* @IPP_CFIG_DROP_BAD_CRC, align 8
  %51 = or i64 %49, %50
  %52 = load i64, i64* @IPP_CFIG_CKSUM_EN, align 8
  %53 = or i64 %51, %52
  %54 = xor i64 %53, -1
  %55 = load i64, i64* %5, align 8
  %56 = and i64 %55, %54
  store i64 %56, i64* %5, align 8
  %57 = load i32, i32* @IPP_CFIG, align 4
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @nw64_ipp(i32 %57, i64 %58)
  %60 = load %struct.niu*, %struct.niu** %2, align 8
  %61 = call i32 @niu_ipp_reset(%struct.niu* %60)
  ret void
}

declare dso_local i64 @nr64_ipp(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i64, i64) #1

declare dso_local i32 @nw64_ipp(i32, i64) #1

declare dso_local i32 @niu_ipp_reset(%struct.niu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
