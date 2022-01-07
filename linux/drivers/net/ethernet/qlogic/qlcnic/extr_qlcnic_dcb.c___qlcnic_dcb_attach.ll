; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c___qlcnic_dcb_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c___qlcnic_dcb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_dcb = type { i32*, i32*, i8*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@qlcnic_dcb_aen_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"qlcnic-dcb\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"DCB workqueue allocation failed. DCB will be disabled\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_dcb*)* @__qlcnic_dcb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qlcnic_dcb_attach(%struct.qlcnic_dcb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_dcb*, align 8
  %4 = alloca i32, align 4
  store %struct.qlcnic_dcb* %0, %struct.qlcnic_dcb** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %6 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %5, i32 0, i32 4
  %7 = load i32, i32* @qlcnic_dcb_aen_work, align 4
  %8 = call i32 @INIT_DELAYED_WORK(i32* %6, i32 %7)
  %9 = call i32* @create_singlethread_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %11 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %10, i32 0, i32 0
  store i32* %9, i32** %11, align 8
  %12 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %13 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %18 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %65

24:                                               ; preds = %1
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call i8* @kzalloc(i32 4, i32 %25)
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %29 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %31 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %57

37:                                               ; preds = %24
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call i8* @kzalloc(i32 4, i32 %38)
  %40 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %41 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %43 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %50

49:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %65

50:                                               ; preds = %46
  %51 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %52 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @kfree(i32* %53)
  %55 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %56 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %50, %34
  %58 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %59 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @destroy_workqueue(i32* %60)
  %62 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %63 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %57, %49, %16
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32* @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
