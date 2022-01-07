; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_get_wait_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_get_wait_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cosa_data = type { i32 }

@SR_RX_RDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"timeout in get_wait_data (status 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cosa_data*)* @get_wait_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_wait_data(%struct.cosa_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cosa_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  store %struct.cosa_data* %0, %struct.cosa_data** %3, align 8
  store i32 1000, i32* %4, align 4
  br label %6

6:                                                ; preds = %21, %1
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %12 = call i32 @cosa_getstatus(%struct.cosa_data* %11)
  %13 = load i32, i32* @SR_RX_RDY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %18 = call signext i16 @cosa_getdata8(%struct.cosa_data* %17)
  store i16 %18, i16* %5, align 2
  %19 = load i16, i16* %5, align 2
  %20 = sext i16 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %27

21:                                               ; preds = %10
  %22 = call i32 @schedule_timeout_interruptible(i32 1)
  br label %6

23:                                               ; preds = %6
  %24 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %25 = call i32 @cosa_getstatus(%struct.cosa_data* %24)
  %26 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 -1, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %16
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @cosa_getstatus(%struct.cosa_data*) #1

declare dso_local signext i16 @cosa_getdata8(%struct.cosa_data*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
