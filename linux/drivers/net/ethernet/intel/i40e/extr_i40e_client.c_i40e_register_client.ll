; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_client.c_i40e_register_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_client.c_i40e_register_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_client = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"i40e: Failed to register client with no name\0A\00", align 1
@registered_client = common dso_local global %struct.i40e_client* null, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"i40e: Client %s has already been registered!\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@I40E_CLIENT_VERSION_MAJOR = common dso_local global i64 0, align 8
@I40E_CLIENT_VERSION_MINOR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [79 x i8] c"i40e: Failed to register client %s due to mismatched client interface version\0A\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"Client is using version: %02d.%02d.%02d while LAN driver supports %s\0A\00", align 1
@i40e_client_interface_version_str = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"i40e: Registered client %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_register_client(%struct.i40e_client* %0) #0 {
  %2 = alloca %struct.i40e_client*, align 8
  %3 = alloca i32, align 4
  store %struct.i40e_client* %0, %struct.i40e_client** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.i40e_client*, %struct.i40e_client** %2, align 8
  %5 = icmp ne %struct.i40e_client* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @EIO, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %3, align 4
  br label %72

9:                                                ; preds = %1
  %10 = load %struct.i40e_client*, %struct.i40e_client** %2, align 8
  %11 = getelementptr inbounds %struct.i40e_client, %struct.i40e_client* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @strlen(i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %72

19:                                               ; preds = %9
  %20 = load %struct.i40e_client*, %struct.i40e_client** @registered_client, align 8
  %21 = icmp ne %struct.i40e_client* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.i40e_client*, %struct.i40e_client** %2, align 8
  %24 = getelementptr inbounds %struct.i40e_client, %struct.i40e_client* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EEXIST, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %72

29:                                               ; preds = %19
  %30 = load %struct.i40e_client*, %struct.i40e_client** %2, align 8
  %31 = getelementptr inbounds %struct.i40e_client, %struct.i40e_client* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @I40E_CLIENT_VERSION_MAJOR, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load %struct.i40e_client*, %struct.i40e_client** %2, align 8
  %38 = getelementptr inbounds %struct.i40e_client, %struct.i40e_client* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @I40E_CLIENT_VERSION_MINOR, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %36, %29
  %44 = load %struct.i40e_client*, %struct.i40e_client** %2, align 8
  %45 = getelementptr inbounds %struct.i40e_client, %struct.i40e_client* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.i40e_client*, %struct.i40e_client** %2, align 8
  %49 = getelementptr inbounds %struct.i40e_client, %struct.i40e_client* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.i40e_client*, %struct.i40e_client** %2, align 8
  %53 = getelementptr inbounds %struct.i40e_client, %struct.i40e_client* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.i40e_client*, %struct.i40e_client** %2, align 8
  %57 = getelementptr inbounds %struct.i40e_client, %struct.i40e_client* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @i40e_client_interface_version_str, align 4
  %61 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i64 %51, i64 %55, i32 %59, i32 %60)
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %72

64:                                               ; preds = %36
  %65 = load %struct.i40e_client*, %struct.i40e_client** %2, align 8
  store %struct.i40e_client* %65, %struct.i40e_client** @registered_client, align 8
  %66 = load %struct.i40e_client*, %struct.i40e_client** %2, align 8
  %67 = call i32 @i40e_client_prepare(%struct.i40e_client* %66)
  %68 = load %struct.i40e_client*, %struct.i40e_client** %2, align 8
  %69 = getelementptr inbounds %struct.i40e_client, %struct.i40e_client* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %64, %43, %22, %15, %6
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @i40e_client_prepare(%struct.i40e_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
