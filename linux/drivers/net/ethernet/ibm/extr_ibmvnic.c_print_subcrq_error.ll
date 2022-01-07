; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_print_subcrq_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_print_subcrq_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@.str = private unnamed_addr constant [75 x i8] c"%s failed: Send request is malformed or adapter failover pending. (rc=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"%s failed: Backing queue closed. Adapter is down or failover pending. (rc=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%s failed: (rc=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32, i8*)* @print_subcrq_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_subcrq_error(%struct.device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %18 [
    i32 128, label %8
    i32 129, label %13
  ]

8:                                                ; preds = %3
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @dev_warn_ratelimited(%struct.device* %9, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i8* %10, i32 %11)
  br label %23

13:                                               ; preds = %3
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dev_warn_ratelimited(%struct.device* %14, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i8* %15, i32 %16)
  br label %23

18:                                               ; preds = %3
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dev_err_ratelimited(%struct.device* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %20, i32 %21)
  br label %23

23:                                               ; preds = %18, %13, %8
  ret void
}

declare dso_local i32 @dev_warn_ratelimited(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @dev_err_ratelimited(%struct.device*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
