; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_submit_bnx2x_kwqes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_submit_bnx2x_kwqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32 }
%struct.kwqe = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CNIC_F_CNIC_UP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@KWQE_LAYER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.kwqe**, i32)* @cnic_submit_bnx2x_kwqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_submit_bnx2x_kwqes(%struct.cnic_dev* %0, %struct.kwqe** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cnic_dev*, align 8
  %6 = alloca %struct.kwqe**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %5, align 8
  store %struct.kwqe** %1, %struct.kwqe*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @CNIC_F_CNIC_UP, align 4
  %13 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %14 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %13, i32 0, i32 0
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EAGAIN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %45

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %45

24:                                               ; preds = %20
  %25 = load %struct.kwqe**, %struct.kwqe*** %6, align 8
  %26 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %25, i64 0
  %27 = load %struct.kwqe*, %struct.kwqe** %26, align 8
  %28 = getelementptr inbounds %struct.kwqe, %struct.kwqe* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @KWQE_LAYER_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  switch i32 %32, label %43 [
    i32 128, label %33
    i32 130, label %33
    i32 131, label %33
    i32 129, label %38
  ]

33:                                               ; preds = %24, %24, %24
  %34 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %35 = load %struct.kwqe**, %struct.kwqe*** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @cnic_submit_bnx2x_iscsi_kwqes(%struct.cnic_dev* %34, %struct.kwqe** %35, i32 %36)
  store i32 %37, i32* %8, align 4
  br label %43

38:                                               ; preds = %24
  %39 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %40 = load %struct.kwqe**, %struct.kwqe*** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @cnic_submit_bnx2x_fcoe_kwqes(%struct.cnic_dev* %39, %struct.kwqe** %40, i32 %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %24, %38, %33
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %23, %17
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @cnic_submit_bnx2x_iscsi_kwqes(%struct.cnic_dev*, %struct.kwqe**, i32) #1

declare dso_local i32 @cnic_submit_bnx2x_fcoe_kwqes(%struct.cnic_dev*, %struct.kwqe**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
