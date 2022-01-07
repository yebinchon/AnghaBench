; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_link_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_link_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"Link is down\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Link is up at %d Mbps, %s duplex\0A\00", align 1
@B44_FLAG_100_BASE_T = common dso_local global i32 0, align 4
@B44_FLAG_FULL_DUPLEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Flow control is %s for TX and %s for RX\0A\00", align 1
@B44_FLAG_TX_PAUSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@B44_FLAG_RX_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b44*)* @b44_link_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_link_report(%struct.b44* %0) #0 {
  %2 = alloca %struct.b44*, align 8
  store %struct.b44* %0, %struct.b44** %2, align 8
  %3 = load %struct.b44*, %struct.b44** %2, align 8
  %4 = getelementptr inbounds %struct.b44, %struct.b44* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @netif_carrier_ok(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.b44*, %struct.b44** %2, align 8
  %10 = getelementptr inbounds %struct.b44, %struct.b44* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (i32, i8*, ...) @netdev_info(i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %54

13:                                               ; preds = %1
  %14 = load %struct.b44*, %struct.b44** %2, align 8
  %15 = getelementptr inbounds %struct.b44, %struct.b44* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.b44*, %struct.b44** %2, align 8
  %18 = getelementptr inbounds %struct.b44, %struct.b44* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @B44_FLAG_100_BASE_T, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 100, i32 10
  %25 = load %struct.b44*, %struct.b44** %2, align 8
  %26 = getelementptr inbounds %struct.b44, %struct.b44* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @B44_FLAG_FULL_DUPLEX, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %33 = call i32 (i32, i8*, ...) @netdev_info(i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %24, i8* %32)
  %34 = load %struct.b44*, %struct.b44** %2, align 8
  %35 = getelementptr inbounds %struct.b44, %struct.b44* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.b44*, %struct.b44** %2, align 8
  %38 = getelementptr inbounds %struct.b44, %struct.b44* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @B44_FLAG_TX_PAUSE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %45 = load %struct.b44*, %struct.b44** %2, align 8
  %46 = getelementptr inbounds %struct.b44, %struct.b44* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @B44_FLAG_RX_PAUSE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %53 = call i32 (i32, i8*, ...) @netdev_info(i32 %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %44, i8* %52)
  br label %54

54:                                               ; preds = %13, %8
  ret void
}

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local i32 @netdev_info(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
