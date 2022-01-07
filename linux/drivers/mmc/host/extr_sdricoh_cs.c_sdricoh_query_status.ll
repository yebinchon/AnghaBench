; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdricoh_cs.c_sdricoh_query_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdricoh_cs.c_sdricoh_query_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdricoh_host = type { %struct.device* }
%struct.device = type { i32 }

@R21C_STATUS = common dso_local global i32 0, align 4
@R2E4_STATUS_RESP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"query_status: timeout waiting for %x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"waiting for status bit %x failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdricoh_host*, i32, i32)* @sdricoh_query_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdricoh_query_status(%struct.sdricoh_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdricoh_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  store %struct.sdricoh_host* %0, %struct.sdricoh_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %12 = getelementptr inbounds %struct.sdricoh_host, %struct.sdricoh_host* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %10, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %32, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %20 = load i32, i32* @R21C_STATUS, align 4
  %21 = call i32 @sdricoh_readl(%struct.sdricoh_host* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %23 = load i32, i32* @R2E4_STATUS_RESP, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @sdricoh_writel(%struct.sdricoh_host* %22, i32 %23, i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %35

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %8, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %14

35:                                               ; preds = %30, %14
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.device*, %struct.device** %10, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %56

45:                                               ; preds = %35
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 8323072
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.device*, %struct.device** %10, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %56

55:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %49, %39
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @sdricoh_readl(%struct.sdricoh_host*, i32) #1

declare dso_local i32 @sdricoh_writel(%struct.sdricoh_host*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
