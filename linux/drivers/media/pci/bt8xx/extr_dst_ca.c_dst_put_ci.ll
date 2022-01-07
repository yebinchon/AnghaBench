; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst_ca.c_dst_put_ci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst_ca.c_dst_put_ci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32 }

@RETRIES = common dso_local global i64 0, align 8
@verbose = common dso_local global i32 0, align 4
@DST_CA_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c" Put Command\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*, i64*, i32, i64*, i32)* @dst_put_ci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_put_ci(%struct.dst_state* %0, i64* %1, i32 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dst_state*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.dst_state* %0, %struct.dst_state** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %34, %5
  %14 = load i64, i64* %12, align 8
  %15 = load i64, i64* @RETRIES, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load i32, i32* @verbose, align 4
  %19 = load i32, i32* @DST_CA_NOTICE, align 4
  %20 = call i32 @dprintk(i32 %18, i32 %19, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = load i64*, i64** %10, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @dst_ci_command(%struct.dst_state* %21, i64* %22, i64* %23, i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %30 = call i32 @dst_error_recovery(%struct.dst_state* %29)
  %31 = load i64, i64* %12, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %12, align 8
  br label %34

33:                                               ; preds = %17
  br label %35

34:                                               ; preds = %28
  br label %13

35:                                               ; preds = %33, %13
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* @RETRIES, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %43

42:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

declare dso_local i64 @dst_ci_command(%struct.dst_state*, i64*, i64*, i32, i32) #1

declare dso_local i32 @dst_error_recovery(%struct.dst_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
