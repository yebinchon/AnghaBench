; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_validate_hmc_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_validate_hmc_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8 }
%struct.TYPE_4__ = type { i32 }
%struct.crq_server_adapter = type { i32 }
%struct.ibmvmc_crq_msg = type { i8, i32 }

@ibmvmc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 1
@hmcs = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"Drop, bad session: expected 0x%x, recv 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crq_server_adapter*, %struct.ibmvmc_crq_msg*)* @ibmvmc_validate_hmc_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvmc_validate_hmc_session(%struct.crq_server_adapter* %0, %struct.ibmvmc_crq_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crq_server_adapter*, align 8
  %5 = alloca %struct.ibmvmc_crq_msg*, align 8
  %6 = alloca i8, align 1
  store %struct.crq_server_adapter* %0, %struct.crq_server_adapter** %4, align 8
  store %struct.ibmvmc_crq_msg* %1, %struct.ibmvmc_crq_msg** %5, align 8
  %7 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %5, align 8
  %8 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 4
  store i8 %9, i8* %6, align 1
  %10 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %5, align 8
  %11 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

15:                                               ; preds = %2
  %16 = load i8, i8* %6, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ibmvmc, i32 0, i32 0), align 1
  %19 = zext i8 %18 to i32
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %48

22:                                               ; preds = %15
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hmcs, align 8
  %24 = load i8, i8* %6, align 1
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %5, align 8
  %30 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %22
  %34 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %35 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hmcs, align 8
  %38 = load i8, i8* %6, align 1
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %5, align 8
  %44 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_warn(i32 %36, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45)
  store i32 -1, i32* %3, align 4
  br label %48

47:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %33, %21, %14
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
