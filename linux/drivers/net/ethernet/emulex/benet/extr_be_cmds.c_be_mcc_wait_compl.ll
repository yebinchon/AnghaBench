; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_mcc_wait_compl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_mcc_wait_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_3__*, %struct.be_mcc_obj }
%struct.TYPE_3__ = type { i32 }
%struct.be_mcc_obj = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@BE_ERROR_ANY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"FW not responding\0A\00", align 1
@BE_ERROR_FW = common dso_local global i32 0, align 4
@mcc_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_mcc_wait_compl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_mcc_wait_compl(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_mcc_obj*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %7, i32 0, i32 1
  store %struct.be_mcc_obj* %8, %struct.be_mcc_obj** %6, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %31, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 12000
  br i1 %11, label %12, label %34

12:                                               ; preds = %9
  %13 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %14 = load i32, i32* @BE_ERROR_ANY, align 4
  %15 = call i64 @be_check_error(%struct.be_adapter* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %50

20:                                               ; preds = %12
  %21 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %22 = call i32 @be_process_mcc(%struct.be_adapter* %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.be_mcc_obj*, %struct.be_mcc_obj** %6, align 8
  %24 = getelementptr inbounds %struct.be_mcc_obj, %struct.be_mcc_obj* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i64 @atomic_read(i32* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %34

29:                                               ; preds = %20
  %30 = call i32 @usleep_range(i32 500, i32 1000)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %9

34:                                               ; preds = %28, %9
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 12000
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %44 = load i32, i32* @BE_ERROR_FW, align 4
  %45 = call i32 @be_set_error(%struct.be_adapter* %43, i32 %44)
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %50

48:                                               ; preds = %34
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %37, %17
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @be_check_error(%struct.be_adapter*, i32) #1

declare dso_local i32 @be_process_mcc(%struct.be_adapter*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @be_set_error(%struct.be_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
