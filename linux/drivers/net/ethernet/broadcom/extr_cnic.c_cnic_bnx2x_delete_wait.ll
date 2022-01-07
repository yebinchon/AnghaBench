; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_bnx2x_delete_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_bnx2x_delete_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, %struct.cnic_local* }
%struct.cnic_local = type { i64, %struct.cnic_context* }
%struct.cnic_context = type { i32, i32 }

@CTX_FL_DELETE_WAIT = common dso_local global i32 0, align 4
@CTX_FL_OFFLD_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"CID %x not deleted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*, i64)* @cnic_bnx2x_delete_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_bnx2x_delete_wait(%struct.cnic_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.cnic_local*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cnic_context*, align 8
  %8 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %10 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %9, i32 0, i32 1
  %11 = load %struct.cnic_local*, %struct.cnic_local** %10, align 8
  store %struct.cnic_local* %11, %struct.cnic_local** %5, align 8
  %12 = load i64, i64* %4, align 8
  store i64 %12, i64* %6, align 8
  br label %13

13:                                               ; preds = %64, %2
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %16 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %67

19:                                               ; preds = %13
  %20 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %21 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %20, i32 0, i32 1
  %22 = load %struct.cnic_context*, %struct.cnic_context** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %22, i64 %23
  store %struct.cnic_context* %24, %struct.cnic_context** %7, align 8
  br label %25

25:                                               ; preds = %31, %19
  %26 = load i32, i32* @CTX_FL_DELETE_WAIT, align 4
  %27 = load %struct.cnic_context*, %struct.cnic_context** %7, align 8
  %28 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %27, i32 0, i32 1
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 @msleep(i32 10)
  br label %25

33:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %46, %33
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 5
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load i32, i32* @CTX_FL_OFFLD_START, align 4
  %39 = load %struct.cnic_context*, %struct.cnic_context** %7, align 8
  %40 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %39, i32 0, i32 1
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %49

44:                                               ; preds = %37
  %45 = call i32 @msleep(i32 20)
  br label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %34

49:                                               ; preds = %43, %34
  %50 = load i32, i32* @CTX_FL_OFFLD_START, align 4
  %51 = load %struct.cnic_context*, %struct.cnic_context** %7, align 8
  %52 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %51, i32 0, i32 1
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %57 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.cnic_context*, %struct.cnic_context** %7, align 8
  %60 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @netdev_warn(i32 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %55, %49
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %6, align 8
  br label %13

67:                                               ; preds = %13
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
