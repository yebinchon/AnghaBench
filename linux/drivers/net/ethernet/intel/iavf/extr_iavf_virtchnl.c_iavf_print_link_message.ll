; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_print_link_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_print_link_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"Unknown \00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"NIC Link is Down\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"40 G\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"25 G\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"20 G\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"10 G\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"1000 M\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"100 M\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"NIC Link is Up %sbps Full Duplex\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_adapter*)* @iavf_print_link_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_print_link_message(%struct.iavf_adapter* %0) #0 {
  %2 = alloca %struct.iavf_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %2, align 8
  %5 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %5, i32 0, i32 2
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %8 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %30

15:                                               ; preds = %1
  %16 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %25 [
    i32 128, label %19
    i32 129, label %20
    i32 130, label %21
    i32 132, label %22
    i32 131, label %23
    i32 133, label %24
  ]

19:                                               ; preds = %15
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %26

20:                                               ; preds = %15
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %26

21:                                               ; preds = %15
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %26

22:                                               ; preds = %15
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %26

23:                                               ; preds = %15
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %26

24:                                               ; preds = %15
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  br label %26

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %24, %23, %22, %21, %20, %19
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %26, %12
  ret void
}

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
