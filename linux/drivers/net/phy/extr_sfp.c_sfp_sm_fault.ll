; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_sm_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_sm_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp = type { i32, i64 }

@.str = private unnamed_addr constant [48 x i8] c"module persistently indicates fault, disabling\0A\00", align 1
@SFP_S_TX_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"module transmit fault indicated\0A\00", align 1
@SFP_S_TX_FAULT = common dso_local global i32 0, align 4
@T_FAULT_RECOVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfp*, i32)* @sfp_sm_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfp_sm_fault(%struct.sfp* %0, i32 %1) #0 {
  %3 = alloca %struct.sfp*, align 8
  %4 = alloca i32, align 4
  store %struct.sfp* %0, %struct.sfp** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sfp*, %struct.sfp** %3, align 8
  %6 = getelementptr inbounds %struct.sfp, %struct.sfp* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load %struct.sfp*, %struct.sfp** %3, align 8
  %11 = getelementptr inbounds %struct.sfp, %struct.sfp* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %9
  %16 = load %struct.sfp*, %struct.sfp** %3, align 8
  %17 = getelementptr inbounds %struct.sfp, %struct.sfp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.sfp*, %struct.sfp** %3, align 8
  %21 = load i32, i32* @SFP_S_TX_DISABLE, align 4
  %22 = call i32 @sfp_sm_next(%struct.sfp* %20, i32 %21, i32 0)
  br label %36

23:                                               ; preds = %9, %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.sfp*, %struct.sfp** %3, align 8
  %28 = getelementptr inbounds %struct.sfp, %struct.sfp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %23
  %32 = load %struct.sfp*, %struct.sfp** %3, align 8
  %33 = load i32, i32* @SFP_S_TX_FAULT, align 4
  %34 = load i32, i32* @T_FAULT_RECOVER, align 4
  %35 = call i32 @sfp_sm_next(%struct.sfp* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %15
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @sfp_sm_next(%struct.sfp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
