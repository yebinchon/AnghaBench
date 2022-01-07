; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_dumpcmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_dumpcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_host = type { %struct.mmc_command*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.mmc_command = type { i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [67 x i8] c"%c%s op %d arg 0x%x flags 0x%x - resp %08x %08x %08x %08x, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_host*, %struct.mmc_command*, i8*)* @bcm2835_dumpcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_dumpcmd(%struct.bcm2835_host* %0, %struct.mmc_command* %1, i8* %2) #0 {
  %4 = alloca %struct.bcm2835_host*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.bcm2835_host* %0, %struct.bcm2835_host** %4, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.bcm2835_host*, %struct.bcm2835_host** %4, align 8
  %9 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %13 = icmp ne %struct.mmc_command* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %59

15:                                               ; preds = %3
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %18 = load %struct.bcm2835_host*, %struct.bcm2835_host** %4, align 8
  %19 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %18, i32 0, i32 0
  %20 = load %struct.mmc_command*, %struct.mmc_command** %19, align 8
  %21 = icmp eq %struct.mmc_command* %17, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 62, i32 32
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %27 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %30 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %33 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %36 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %41 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %46 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %51 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %56 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_dbg(%struct.device* %16, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i8 signext %24, i8* %25, i32 %28, i32 %31, i32 %34, i32 %39, i32 %44, i32 %49, i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8 signext, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
