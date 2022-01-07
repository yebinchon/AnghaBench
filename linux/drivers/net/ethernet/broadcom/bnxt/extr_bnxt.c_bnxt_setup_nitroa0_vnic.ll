; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_setup_nitroa0_vnic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_setup_nitroa0_vnic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i64 }

@.str = private unnamed_addr constant [45 x i8] c"Cannot allocate special vnic for NS2 A0: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_setup_nitroa0_vnic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_setup_nitroa0_vnic(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %6 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %7 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = sub nsw i64 %8, 1
  %10 = call i32 @bnxt_hwrm_vnic_alloc(%struct.bnxt* %5, i32 1, i64 %9, i32 1)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %15 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @netdev_err(i32 %16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %34

20:                                               ; preds = %1
  %21 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %22 = call i32 @bnxt_hwrm_vnic_cfg(%struct.bnxt* %21, i32 1)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %27 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @netdev_err(i32 %28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %25, %13
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @bnxt_hwrm_vnic_alloc(%struct.bnxt*, i32, i64, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @bnxt_hwrm_vnic_cfg(%struct.bnxt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
