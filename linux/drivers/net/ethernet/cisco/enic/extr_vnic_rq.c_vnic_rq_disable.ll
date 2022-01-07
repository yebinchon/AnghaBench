; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_rq.c_vnic_rq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_rq.c_vnic_rq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_rq = type { i32, %struct.TYPE_2__*, %struct.vnic_dev* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vnic_dev = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Failed to disable RQ[%d]\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnic_rq_disable(%struct.vnic_rq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnic_rq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnic_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.vnic_rq* %0, %struct.vnic_rq** %3, align 8
  %7 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %8 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %7, i32 0, i32 2
  %9 = load %struct.vnic_dev*, %struct.vnic_dev** %8, align 8
  store %struct.vnic_dev* %9, %struct.vnic_dev** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %46, %1
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %49

13:                                               ; preds = %10
  %14 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %15 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = call i32 @iowrite32(i32 0, i32* %17)
  store i32 20000, i32* %4, align 4
  br label %19

19:                                               ; preds = %31, %13
  %20 = load i32, i32* %4, align 4
  %21 = icmp ugt i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %24 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @ioread32(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %34

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, -1
  store i32 %33, i32* %4, align 4
  br label %19

34:                                               ; preds = %29, %19
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  %38 = load %struct.vnic_dev*, %struct.vnic_dev** %5, align 8
  %39 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %40 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @vdev_neterr(%struct.vnic_dev* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %50

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %10

49:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %37
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @vdev_neterr(%struct.vnic_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
