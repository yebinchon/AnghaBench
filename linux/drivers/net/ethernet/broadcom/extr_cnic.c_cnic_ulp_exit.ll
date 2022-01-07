; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_ulp_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_ulp_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32* }
%struct.cnic_ulp_ops = type { i32 (%struct.cnic_dev.0*)* }
%struct.cnic_dev.0 = type opaque

@MAX_CNIC_ULP_TYPE_EXT = common dso_local global i32 0, align 4
@cnic_lock = common dso_local global i32 0, align 4
@ULP_F_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*)* @cnic_ulp_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_ulp_exit(%struct.cnic_dev* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cnic_local*, align 8
  %5 = alloca %struct.cnic_ulp_ops*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %2, align 8
  %6 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %7 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %6, i32 0, i32 0
  %8 = load %struct.cnic_local*, %struct.cnic_local** %7, align 8
  store %struct.cnic_local* %8, %struct.cnic_local** %4, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %49, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MAX_CNIC_ULP_TYPE_EXT, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %52

13:                                               ; preds = %9
  %14 = call i32 @mutex_lock(i32* @cnic_lock)
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.cnic_ulp_ops* @cnic_ulp_tbl_prot(i32 %15)
  store %struct.cnic_ulp_ops* %16, %struct.cnic_ulp_ops** %5, align 8
  %17 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %5, align 8
  %18 = icmp ne %struct.cnic_ulp_ops* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %5, align 8
  %21 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %20, i32 0, i32 0
  %22 = load i32 (%struct.cnic_dev.0*)*, i32 (%struct.cnic_dev.0*)** %21, align 8
  %23 = icmp ne i32 (%struct.cnic_dev.0*)* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19, %13
  %25 = call i32 @mutex_unlock(i32* @cnic_lock)
  br label %49

26:                                               ; preds = %19
  %27 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %5, align 8
  %28 = call i32 @ulp_get(%struct.cnic_ulp_ops* %27)
  %29 = call i32 @mutex_unlock(i32* @cnic_lock)
  %30 = load i32, i32* @ULP_F_INIT, align 4
  %31 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %32 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i64 @test_and_clear_bit(i32 %30, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %26
  %40 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %5, align 8
  %41 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %40, i32 0, i32 0
  %42 = load i32 (%struct.cnic_dev.0*)*, i32 (%struct.cnic_dev.0*)** %41, align 8
  %43 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %44 = bitcast %struct.cnic_dev* %43 to %struct.cnic_dev.0*
  %45 = call i32 %42(%struct.cnic_dev.0* %44)
  br label %46

46:                                               ; preds = %39, %26
  %47 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %5, align 8
  %48 = call i32 @ulp_put(%struct.cnic_ulp_ops* %47)
  br label %49

49:                                               ; preds = %46, %24
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %9

52:                                               ; preds = %9
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.cnic_ulp_ops* @cnic_ulp_tbl_prot(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ulp_get(%struct.cnic_ulp_ops*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @ulp_put(%struct.cnic_ulp_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
