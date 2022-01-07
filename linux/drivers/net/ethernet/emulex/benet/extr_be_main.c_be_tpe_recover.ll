; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_tpe_recover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_tpe_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__*, i32, %struct.be_error_recovery }
%struct.TYPE_2__ = type { i32 }
%struct.be_error_recovery = type { i32, i8*, i8*, i8* }

@EAGAIN = common dso_local global i32 0, align 4
@ERR_RECOVERY_UE_DETECT_DURATION = common dso_local global i8* null, align 8
@POST_STAGE_RECOVERABLE_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Unrecoverable HW error detected: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Recoverable HW error detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to meet recovery criteria\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ERR_RECOVERY_ST_REINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_tpe_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_tpe_recover(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  %3 = alloca %struct.be_error_recovery*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %6 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %6, i32 0, i32 2
  store %struct.be_error_recovery* %7, %struct.be_error_recovery** %3, align 8
  %8 = load i32, i32* @EAGAIN, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.be_error_recovery*, %struct.be_error_recovery** %3, align 8
  %11 = getelementptr inbounds %struct.be_error_recovery, %struct.be_error_recovery* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %111 [
    i32 130, label %13
    i32 131, label %19
    i32 128, label %74
    i32 129, label %105
  ]

13:                                               ; preds = %1
  %14 = load %struct.be_error_recovery*, %struct.be_error_recovery** %3, align 8
  %15 = getelementptr inbounds %struct.be_error_recovery, %struct.be_error_recovery* %14, i32 0, i32 0
  store i32 131, i32* %15, align 8
  %16 = load i8*, i8** @ERR_RECOVERY_UE_DETECT_DURATION, align 8
  %17 = load %struct.be_error_recovery*, %struct.be_error_recovery** %3, align 8
  %18 = getelementptr inbounds %struct.be_error_recovery, %struct.be_error_recovery* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  br label %116

19:                                               ; preds = %1
  %20 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %21 = call i32 @be_POST_stage_get(%struct.be_adapter* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @POST_STAGE_RECOVERABLE_ERR, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @POST_STAGE_RECOVERABLE_ERR, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %19
  %28 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i32*, i8*, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  %36 = load %struct.be_error_recovery*, %struct.be_error_recovery** %3, align 8
  %37 = getelementptr inbounds %struct.be_error_recovery, %struct.be_error_recovery* %36, i32 0, i32 1
  store i8* null, i8** %37, align 8
  br label %116

38:                                               ; preds = %19
  %39 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 (i32*, i8*, ...) @dev_err(i32* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %38
  %49 = load %struct.be_error_recovery*, %struct.be_error_recovery** %3, align 8
  %50 = getelementptr inbounds %struct.be_error_recovery, %struct.be_error_recovery* %49, i32 0, i32 0
  store i32 128, i32* %50, align 8
  %51 = load %struct.be_error_recovery*, %struct.be_error_recovery** %3, align 8
  %52 = getelementptr inbounds %struct.be_error_recovery, %struct.be_error_recovery* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** @ERR_RECOVERY_UE_DETECT_DURATION, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.be_error_recovery*, %struct.be_error_recovery** %3, align 8
  %60 = getelementptr inbounds %struct.be_error_recovery, %struct.be_error_recovery* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  br label %116

61:                                               ; preds = %38
  %62 = load %struct.be_error_recovery*, %struct.be_error_recovery** %3, align 8
  %63 = getelementptr inbounds %struct.be_error_recovery, %struct.be_error_recovery* %62, i32 0, i32 0
  store i32 129, i32* %63, align 8
  %64 = load %struct.be_error_recovery*, %struct.be_error_recovery** %3, align 8
  %65 = getelementptr inbounds %struct.be_error_recovery, %struct.be_error_recovery* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** @ERR_RECOVERY_UE_DETECT_DURATION, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.be_error_recovery*, %struct.be_error_recovery** %3, align 8
  %73 = getelementptr inbounds %struct.be_error_recovery, %struct.be_error_recovery* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  br label %116

74:                                               ; preds = %1
  %75 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %76 = call i32 @be_err_is_recoverable(%struct.be_adapter* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %74
  %79 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i32 (i32*, i8*, ...) @dev_err(i32* %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  %86 = load %struct.be_error_recovery*, %struct.be_error_recovery** %3, align 8
  %87 = getelementptr inbounds %struct.be_error_recovery, %struct.be_error_recovery* %86, i32 0, i32 1
  store i8* null, i8** %87, align 8
  br label %116

88:                                               ; preds = %74
  %89 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %90 = call i32 @be_soft_reset(%struct.be_adapter* %89)
  %91 = load %struct.be_error_recovery*, %struct.be_error_recovery** %3, align 8
  %92 = getelementptr inbounds %struct.be_error_recovery, %struct.be_error_recovery* %91, i32 0, i32 0
  store i32 129, i32* %92, align 8
  %93 = load %struct.be_error_recovery*, %struct.be_error_recovery** %3, align 8
  %94 = getelementptr inbounds %struct.be_error_recovery, %struct.be_error_recovery* %93, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.be_error_recovery*, %struct.be_error_recovery** %3, align 8
  %97 = getelementptr inbounds %struct.be_error_recovery, %struct.be_error_recovery* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = ptrtoint i8* %95 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = inttoptr i64 %101 to i8*
  %103 = load %struct.be_error_recovery*, %struct.be_error_recovery** %3, align 8
  %104 = getelementptr inbounds %struct.be_error_recovery, %struct.be_error_recovery* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  br label %116

105:                                              ; preds = %1
  %106 = load i32, i32* @ERR_RECOVERY_ST_REINIT, align 4
  %107 = load %struct.be_error_recovery*, %struct.be_error_recovery** %3, align 8
  %108 = getelementptr inbounds %struct.be_error_recovery, %struct.be_error_recovery* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.be_error_recovery*, %struct.be_error_recovery** %3, align 8
  %110 = getelementptr inbounds %struct.be_error_recovery, %struct.be_error_recovery* %109, i32 0, i32 1
  store i8* null, i8** %110, align 8
  store i32 0, i32* %4, align 4
  br label %116

111:                                              ; preds = %1
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  %114 = load %struct.be_error_recovery*, %struct.be_error_recovery** %3, align 8
  %115 = getelementptr inbounds %struct.be_error_recovery, %struct.be_error_recovery* %114, i32 0, i32 1
  store i8* null, i8** %115, align 8
  br label %116

116:                                              ; preds = %111, %105, %88, %78, %61, %48, %27, %13
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @be_POST_stage_get(%struct.be_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @be_err_is_recoverable(%struct.be_adapter*) #1

declare dso_local i32 @be_soft_reset(%struct.be_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
