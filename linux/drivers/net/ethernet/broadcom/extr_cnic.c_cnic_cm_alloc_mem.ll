; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_cm_alloc_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_cm_alloc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX_CM_SK_TBL_SZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CNIC_LOCAL_PORT_RANGE = common dso_local global i32 0, align 4
@CNIC_LOCAL_PORT_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*)* @cnic_cm_alloc_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_cm_alloc_mem(%struct.cnic_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.cnic_local*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  %7 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %8 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %7, i32 0, i32 0
  %9 = load %struct.cnic_local*, %struct.cnic_local** %8, align 8
  store %struct.cnic_local* %9, %struct.cnic_local** %4, align 8
  %10 = load i32, i32* @MAX_CM_SK_TBL_SZ, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.TYPE_2__* @kvcalloc(i32 %10, i32 4, i32 %11)
  %13 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %14 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %13, i32 0, i32 1
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %14, align 8
  %15 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %16 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %57

22:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %36, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MAX_CM_SK_TBL_SZ, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %29 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @atomic_set(i32* %34, i32 0)
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %23

39:                                               ; preds = %23
  %40 = call i32 (...) @prandom_u32()
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @CNIC_LOCAL_PORT_RANGE, align 4
  %42 = load i32, i32* %5, align 4
  %43 = srem i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %45 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %44, i32 0, i32 0
  %46 = load i32, i32* @CNIC_LOCAL_PORT_RANGE, align 4
  %47 = load i32, i32* @CNIC_LOCAL_PORT_MIN, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @cnic_init_id_tbl(i32* %45, i32 %46, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %39
  %52 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %53 = call i32 @cnic_cm_free_mem(%struct.cnic_dev* %52)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %57

56:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %51, %19
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_2__* @kvcalloc(i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i64 @cnic_init_id_tbl(i32*, i32, i32, i32) #1

declare dso_local i32 @cnic_cm_free_mem(%struct.cnic_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
