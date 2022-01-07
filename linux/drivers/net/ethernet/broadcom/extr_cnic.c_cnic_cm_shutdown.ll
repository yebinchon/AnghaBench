; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_cm_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_cm_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { %struct.cnic_sock* }
%struct.cnic_sock = type { i32 }

@MAX_CM_SK_TBL_SZ = common dso_local global i32 0, align 4
@SK_F_INUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*)* @cnic_cm_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_cm_shutdown(%struct.cnic_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.cnic_local*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cnic_sock*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  %7 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %8 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %7, i32 0, i32 0
  %9 = load %struct.cnic_local*, %struct.cnic_local** %8, align 8
  store %struct.cnic_local* %9, %struct.cnic_local** %4, align 8
  %10 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %11 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %10, i32 0, i32 0
  %12 = load %struct.cnic_sock*, %struct.cnic_sock** %11, align 8
  %13 = icmp ne %struct.cnic_sock* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %33, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @MAX_CM_SK_TBL_SZ, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %22 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %21, i32 0, i32 0
  %23 = load %struct.cnic_sock*, %struct.cnic_sock** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %23, i64 %25
  store %struct.cnic_sock* %26, %struct.cnic_sock** %6, align 8
  %27 = load i32, i32* @SK_F_INUSE, align 4
  %28 = load %struct.cnic_sock*, %struct.cnic_sock** %6, align 8
  %29 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %28, i32 0, i32 0
  %30 = call i32 @clear_bit(i32 %27, i32* %29)
  %31 = load %struct.cnic_sock*, %struct.cnic_sock** %6, align 8
  %32 = call i32 @cnic_cm_cleanup(%struct.cnic_sock* %31)
  br label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %16

36:                                               ; preds = %16
  %37 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %38 = call i32 @cnic_cm_free_mem(%struct.cnic_dev* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %14
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cnic_cm_cleanup(%struct.cnic_sock*) #1

declare dso_local i32 @cnic_cm_free_mem(%struct.cnic_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
