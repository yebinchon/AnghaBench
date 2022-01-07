; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_free_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_free_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Failed waiting for ref count to go to zero\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Removed CNIC device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*)* @cnic_free_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_free_dev(%struct.cnic_dev* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %14, %1
  %5 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %6 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %5, i32 0, i32 1
  %7 = call i64 @atomic_read(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 10
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi i1 [ false, %4 ], [ %11, %9 ]
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = call i32 @msleep(i32 100)
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %4

18:                                               ; preds = %12
  %19 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %20 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %19, i32 0, i32 1
  %21 = call i64 @atomic_read(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %25 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @netdev_err(i32 %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %30 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @netdev_info(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %34 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_put(i32 %35)
  %37 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %38 = call i32 @kfree(%struct.cnic_dev* %37)
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @dev_put(i32) #1

declare dso_local i32 @kfree(%struct.cnic_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
