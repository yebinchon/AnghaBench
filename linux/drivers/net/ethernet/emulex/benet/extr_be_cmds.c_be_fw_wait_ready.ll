; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_fw_wait_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_fw_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@POST_STAGE_ARMFW_RDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Waiting for POST, %ds elapsed\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Waiting for POST aborted\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"POST timeout; stage=%#x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_fw_wait_ready(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %13 = call i64 @lancer_chip(%struct.be_adapter* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %17 = call i32 @lancer_wait_ready(%struct.be_adapter* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %4, align 4
  br label %58

22:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %64

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %54, %23
  %25 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %26 = call i64 @BEx_chip(%struct.be_adapter* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %30 = call i64 @be_virtfn(%struct.be_adapter* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %64

33:                                               ; preds = %28, %24
  %34 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %35 = call i32 @be_POST_stage_get(%struct.be_adapter* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @POST_STAGE_ARMFW_RDY, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %64

40:                                               ; preds = %33
  %41 = load %struct.device*, %struct.device** %7, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @dev_info(%struct.device* %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = call i64 @msleep_interruptible(i32 2000)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINTR, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %64

51:                                               ; preds = %40
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 2
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 60
  br i1 %56, label %24, label %57

57:                                               ; preds = %54
  br label %58

58:                                               ; preds = %57, %20
  %59 = load %struct.device*, %struct.device** %7, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @ETIMEDOUT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %58, %46, %39, %32, %22
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i32 @lancer_wait_ready(%struct.be_adapter*) #1

declare dso_local i64 @BEx_chip(%struct.be_adapter*) #1

declare dso_local i64 @be_virtfn(%struct.be_adapter*) #1

declare dso_local i32 @be_POST_stage_get(%struct.be_adapter*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i64 @msleep_interruptible(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
