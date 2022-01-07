; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.c_scif_setup_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.c_scif_setup_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_dev = type { %struct.scif_qp*, i32 }
%struct.scif_qp = type { i32 }

@SCIF_NODE_QP_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCIFEP_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_setup_qp(%struct.scif_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scif_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.scif_qp*, align 8
  store %struct.scif_dev* %0, %struct.scif_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @SCIF_NODE_QP_SIZE, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.scif_qp* @kzalloc(i32 4, i32 %8)
  store %struct.scif_qp* %9, %struct.scif_qp** %6, align 8
  %10 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %11 = icmp ne %struct.scif_qp* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %42

16:                                               ; preds = %1
  %17 = load i32, i32* @SCIFEP_MAGIC, align 4
  %18 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %19 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %21 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %22 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %21, i32 0, i32 0
  store %struct.scif_qp* %20, %struct.scif_qp** %22, align 8
  %23 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %24 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %25 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %28 = call i32 @scif_setup_qp_connect(%struct.scif_qp* %23, i32* %25, i32 %26, %struct.scif_dev* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %34

32:                                               ; preds = %16
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %42

34:                                               ; preds = %31
  %35 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %36 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %35, i32 0, i32 0
  %37 = load %struct.scif_qp*, %struct.scif_qp** %36, align 8
  %38 = call i32 @kfree(%struct.scif_qp* %37)
  %39 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %40 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %39, i32 0, i32 0
  store %struct.scif_qp* null, %struct.scif_qp** %40, align 8
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %34, %32, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.scif_qp* @kzalloc(i32, i32) #1

declare dso_local i32 @scif_setup_qp_connect(%struct.scif_qp*, i32*, i32, %struct.scif_dev*) #1

declare dso_local i32 @kfree(%struct.scif_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
