; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_print_link_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_print_link_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i64, i32, %struct.TYPE_2__*, %struct.e1000_hw }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_hw = type { i32 }

@CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%s NIC Link is Up %d Mbps %s Duplex, Flow Control: %s\0A\00", align 1
@FULL_DUPLEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@E1000_CTRL_TFCE = common dso_local global i32 0, align 4
@E1000_CTRL_RFCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"Rx/Tx\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"Rx\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"Tx\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_print_link_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_print_link_info(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %5 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %5, i32 0, i32 3
  store %struct.e1000_hw* %6, %struct.e1000_hw** %3, align 8
  %7 = load i32, i32* @CTRL, align 4
  %8 = call i32 @er32(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FULL_DUPLEX, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @E1000_CTRL_TFCE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @E1000_CTRL_RFCE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %49

34:                                               ; preds = %28, %1
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @E1000_CTRL_RFCE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %47

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @E1000_CTRL_TFCE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  br label %47

47:                                               ; preds = %40, %39
  %48 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %39 ], [ %46, %40 ]
  br label %49

49:                                               ; preds = %47, %33
  %50 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %33 ], [ %48, %47 ]
  %51 = call i32 @pr_info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i8* %23, i8* %50)
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
