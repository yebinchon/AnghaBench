; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_client.c_iavf_unregister_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_client.c_iavf_unregister_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_client = type { i32 }

@vf_registered_client = common dso_local global %struct.iavf_client* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"iavf: Client %s has not been registered\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"iavf: Unregistered client %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iavf_unregister_client(%struct.iavf_client* %0) #0 {
  %2 = alloca %struct.iavf_client*, align 8
  %3 = alloca i32, align 4
  store %struct.iavf_client* %0, %struct.iavf_client** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.iavf_client*, %struct.iavf_client** %2, align 8
  %5 = call i32 @iavf_client_release(%struct.iavf_client* %4)
  %6 = load %struct.iavf_client*, %struct.iavf_client** @vf_registered_client, align 8
  %7 = load %struct.iavf_client*, %struct.iavf_client** %2, align 8
  %8 = icmp ne %struct.iavf_client* %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.iavf_client*, %struct.iavf_client** %2, align 8
  %11 = getelementptr inbounds %struct.iavf_client, %struct.iavf_client* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %21

16:                                               ; preds = %1
  store %struct.iavf_client* null, %struct.iavf_client** @vf_registered_client, align 8
  %17 = load %struct.iavf_client*, %struct.iavf_client** %2, align 8
  %18 = getelementptr inbounds %struct.iavf_client, %struct.iavf_client* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %16, %9
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @iavf_client_release(%struct.iavf_client*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
