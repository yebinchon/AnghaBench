; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ipaq-micro.c_ipaq_micro_get_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ipaq-micro.c_ipaq_micro_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipaq_micro = type { i8*, i32 }
%struct.ipaq_micro_msg = type { i32, i32, i32 }

@MSG_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"illegal version message %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipaq_micro*)* @ipaq_micro_get_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipaq_micro_get_version(%struct.ipaq_micro* %0) #0 {
  %2 = alloca %struct.ipaq_micro*, align 8
  %3 = alloca %struct.ipaq_micro_msg, align 4
  store %struct.ipaq_micro* %0, %struct.ipaq_micro** %2, align 8
  %4 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %3, i32 0, i32 0
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %3, i32 0, i32 1
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %3, i32 0, i32 2
  %7 = load i32, i32* @MSG_VERSION, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.ipaq_micro*, %struct.ipaq_micro** %2, align 8
  %9 = call i32 @ipaq_micro_tx_msg_sync(%struct.ipaq_micro* %8, %struct.ipaq_micro_msg* %3)
  %10 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.ipaq_micro*, %struct.ipaq_micro** %2, align 8
  %15 = getelementptr inbounds %struct.ipaq_micro, %struct.ipaq_micro* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %3, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @memcpy(i8* %16, i32 %18, i32 4)
  %20 = load %struct.ipaq_micro*, %struct.ipaq_micro** %2, align 8
  %21 = getelementptr inbounds %struct.ipaq_micro, %struct.ipaq_micro* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 4
  store i8 0, i8* %23, align 1
  br label %47

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 9
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load %struct.ipaq_micro*, %struct.ipaq_micro** %2, align 8
  %30 = getelementptr inbounds %struct.ipaq_micro, %struct.ipaq_micro* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %3, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i8* %31, i32 %33, i32 4)
  %35 = load %struct.ipaq_micro*, %struct.ipaq_micro** %2, align 8
  %36 = getelementptr inbounds %struct.ipaq_micro, %struct.ipaq_micro* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 4
  store i8 0, i8* %38, align 1
  br label %46

39:                                               ; preds = %24
  %40 = load %struct.ipaq_micro*, %struct.ipaq_micro** %2, align 8
  %41 = getelementptr inbounds %struct.ipaq_micro, %struct.ipaq_micro* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %3, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %39, %28
  br label %47

47:                                               ; preds = %46, %13
  ret void
}

declare dso_local i32 @ipaq_micro_tx_msg_sync(%struct.ipaq_micro*, %struct.ipaq_micro_msg*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
