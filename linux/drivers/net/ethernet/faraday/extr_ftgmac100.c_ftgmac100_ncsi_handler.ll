; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_ncsi_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_ncsi_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_dev = type { i64, i64, i32 }

@ncsi_dev_state_functional = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"NCSI interface %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ncsi_dev*)* @ftgmac100_ncsi_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftgmac100_ncsi_handler(%struct.ncsi_dev* %0) #0 {
  %2 = alloca %struct.ncsi_dev*, align 8
  store %struct.ncsi_dev* %0, %struct.ncsi_dev** %2, align 8
  %3 = load %struct.ncsi_dev*, %struct.ncsi_dev** %2, align 8
  %4 = getelementptr inbounds %struct.ncsi_dev, %struct.ncsi_dev* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @ncsi_dev_state_functional, align 8
  %7 = icmp ne i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.ncsi_dev*, %struct.ncsi_dev** %2, align 8
  %14 = getelementptr inbounds %struct.ncsi_dev, %struct.ncsi_dev* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ncsi_dev*, %struct.ncsi_dev** %2, align 8
  %17 = getelementptr inbounds %struct.ncsi_dev, %struct.ncsi_dev* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %22 = call i32 @netdev_dbg(i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
