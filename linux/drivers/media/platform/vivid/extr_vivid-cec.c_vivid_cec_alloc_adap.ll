; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-cec.c_vivid_cec_alloc_adap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-cec.c_vivid_cec_alloc_adap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.vivid_dev = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@CEC_CAP_DEFAULTS = common dso_local global i32 0, align 4
@CEC_CAP_MONITOR_ALL = common dso_local global i32 0, align 4
@CEC_CAP_MONITOR_PIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@vivid_cec_adap_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cec_adapter* @vivid_cec_alloc_adap(%struct.vivid_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vivid_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [10 x i8], align 1
  %8 = alloca i32, align 4
  store %struct.vivid_dev* %0, %struct.vivid_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @CEC_CAP_DEFAULTS, align 4
  %10 = load i32, i32* @CEC_CAP_MONITOR_ALL, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @CEC_CAP_MONITOR_PIN, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %19 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  br label %27

22:                                               ; preds = %3
  %23 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %24 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i8* [ %21, %17 ], [ %26, %22 ]
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @snprintf(i8* %14, i32 10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %29)
  %31 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %32 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %33 = load i32, i32* %8, align 4
  %34 = call %struct.cec_adapter* @cec_allocate_adapter(i32* @vivid_cec_adap_ops, %struct.vivid_dev* %31, i8* %32, i32 %33, i32 1)
  ret %struct.cec_adapter* %34
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local %struct.cec_adapter* @cec_allocate_adapter(i32*, %struct.vivid_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
