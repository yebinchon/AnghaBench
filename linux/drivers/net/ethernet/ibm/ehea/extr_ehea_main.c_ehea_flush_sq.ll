; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_flush_sq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_flush_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_port = type { i32, i32, %struct.ehea_port_res* }
%struct.ehea_port_res = type { i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"WARNING: sq not flushed completely\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehea_port*)* @ehea_flush_sq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_flush_sq(%struct.ehea_port* %0) #0 {
  %2 = alloca %struct.ehea_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ehea_port_res*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ehea_port* %0, %struct.ehea_port** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %44, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %10 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %7
  %14 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %15 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %14, i32 0, i32 2
  %16 = load %struct.ehea_port_res*, %struct.ehea_port_res** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %16, i64 %18
  store %struct.ehea_port_res* %19, %struct.ehea_port_res** %4, align 8
  %20 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %21 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 2
  %24 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %25 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  store i32 %27, i32* %5, align 4
  %28 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %29 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %32 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %31, i32 0, i32 2
  %33 = call i32 @atomic_read(i32* %32)
  %34 = load i32, i32* %5, align 4
  %35 = icmp sge i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @msecs_to_jiffies(i32 100)
  %38 = call i32 @wait_event_timeout(i32 %30, i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %13
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %47

43:                                               ; preds = %13
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %7

47:                                               ; preds = %41, %7
  ret void
}

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
