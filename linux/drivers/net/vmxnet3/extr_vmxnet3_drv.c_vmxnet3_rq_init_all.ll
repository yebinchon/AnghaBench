; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_rq_init_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_rq_init_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_adapter = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"%s: failed to initialize rx queue%i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmxnet3_adapter*)* @vmxnet3_rq_init_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_rq_init_all(%struct.vmxnet3_adapter* %0) #0 {
  %2 = alloca %struct.vmxnet3_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.vmxnet3_adapter* %0, %struct.vmxnet3_adapter** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %36, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %5
  %12 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %19 = call i32 @vmxnet3_rq_init(i32* %17, %struct.vmxnet3_adapter* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %11
  %24 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  br label %39

35:                                               ; preds = %11
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %5

39:                                               ; preds = %23, %5
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @vmxnet3_rq_init(i32*, %struct.vmxnet3_adapter*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
