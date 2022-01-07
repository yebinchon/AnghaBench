; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp.c_nfp_nsp_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp.c_nfp_nsp_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_nsp = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@NFP_NSP_TIMEOUT_BOOT = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Waiting for NSP to respond (%u sec max).\0A\00", align 1
@SPCODE_NOOP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"NSP failed to respond %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_nsp_wait(%struct.nfp_nsp* %0) #0 {
  %2 = alloca %struct.nfp_nsp*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.nfp_nsp* %0, %struct.nfp_nsp** %2, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = load i64, i64* @NFP_NSP_TIMEOUT_BOOT, align 8
  %8 = load i64, i64* @HZ, align 8
  %9 = mul i64 %7, %8
  %10 = add i64 %6, %9
  store i64 %10, i64* %3, align 8
  %11 = load %struct.nfp_nsp*, %struct.nfp_nsp** %2, align 8
  %12 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* @NFP_NSP_TIMEOUT_BOOT, align 8
  %15 = call i32 @nfp_dbg(i32 %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %14)
  br label %16

16:                                               ; preds = %40, %1
  %17 = load i64, i64* @jiffies, align 8
  store i64 %17, i64* %5, align 8
  %18 = load %struct.nfp_nsp*, %struct.nfp_nsp** %2, align 8
  %19 = load i32, i32* @SPCODE_NOOP, align 4
  %20 = call i32 @nfp_nsp_command(%struct.nfp_nsp* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %41

26:                                               ; preds = %16
  %27 = call i64 @msleep_interruptible(i32 25)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @ERESTARTSYS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %41

32:                                               ; preds = %26
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @time_after(i64 %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @ETIMEDOUT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %41

40:                                               ; preds = %32
  br label %16

41:                                               ; preds = %37, %29, %25
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.nfp_nsp*, %struct.nfp_nsp** %2, align 8
  %46 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @nfp_err(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %44, %41
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @nfp_dbg(i32, i8*, i64) #1

declare dso_local i32 @nfp_nsp_command(%struct.nfp_nsp*, i32) #1

declare dso_local i64 @msleep_interruptible(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @nfp_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
